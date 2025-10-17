-- A : Inventario population

CREATE OR REPLACE FUNCTION actualizar_inventario_trigger_func()
RETURNS TRIGGER
AS $$
    DECLARE
        producto_en_inventario_id INTEGER ;

    BEGIN
        SELECT id INTO producto_en_inventario_id
        FROM Inventario
        WHERE productoId = NEW.productoId ;

        IF producto_en_inventario_id IS NULL THEN 
            INSERT INTO Inventario (productoId, cantidad)
            VALUES (NEW.productoId, NEW.cantidad) ;
        -- the use of IF - ELSE corresponds when different actons must be performed conditionally (INSERT vs UPDATE)
        ELSE
            UPDATE Inventario
            SET cantidad = cantidad + NEW.cantidad
            WHERE productoId = NEW.productoId ;
        END IF ;

        RETURN NEW ;
    END ;

$$ LANGUAGE plpgsql ;

CREATE TRIGGER inventory_fill_trigger
AFTER INSERT
ON ProveedorProducto
FOR EACH ROW
EXECUTE FUNCTION actualizar_inventario_trigger_func() ;

-- A : HistorialClienteProducto - Agregar
CREATE OR REPLACE FUNCTION agregar_producto_carrito_trigger_func()
RETURNS TRIGGER
AS $$
    BEGIN
        INSERT INTO HistorialClienteProducto
        (clienteId, productoId, fecha, tipoAccion)
        VALUES
        (NEW.clienteId, NEW.productoId, NOW(), 'Carrito') ;

        RETURN NEW ;
    END ;
$$ LANGUAGE plpgsql;

CREATE TRIGGER HistorialClienteProducto_fill_trigger
AFTER INSERT
ON Carrito
FOR EACH ROW
EXECUTE FUNCTION agregar_producto_carrito_trigger_func() ;

-- A : HistorialClienteProducto - Comprar
CREATE OR REPLACE FUNCTION comprar_producto_trigger_func()
RETURNS TRIGGER
AS $$
    DECLARE
    cliente_id_comprador INT ;

    BEGIN
        SELECT clienteId
        INTO cliente_id_comprador
        FROM Factura
        WHERE id = NEW.facturaId ;

        INSERT INTO HistorialClienteProducto
        (clienteId, productoId, fecha, tipoAccion)
        VALUES
        (cliente_id_comprador, NEW.productoId, NOW(), 'Compra') ;

        RETURN NEW ;
    END ;
$$ LANGUAGE plpgsql;

CREATE TRIGGER HistorialClienteProducto_compra_fill_trigger
AFTER INSERT
ON FacturaDetalle
FOR EACH ROW
EXECUTE FUNCTION comprar_producto_trigger_func() ;

-- A : ProductoRecomendadoParaCliente filling
CREATE OR REPLACE FUNCTION recomendar_producto_trigger_func()
RETURNS TRIGGER
AS $$
    DECLARE
        conteo_acciones INT ;
        registro_recomendacion RECORD ;
    
    BEGIN
        SELECT 
            COUNT(*)
        INTO
            conteo_acciones
        FROM
            HistorialClienteProducto
        WHERE
            clienteId = NEW.clienteId AND productoId = NEW.productoId ;

        IF conteo_acciones > 3 THEN
            FOR registro_recomendacion IN
                SELECT
                    productoRecomendadoId
                FROM 
                    ProductoRecomendadoParaProducto
                WHERE
                    productoId = NEW.productoId
            LOOP
                IF NOT EXISTS (
                    SELECT
                        1
                    FROM 
                        ProductoRecomendadoParaCliente
                    WHERE 
                        clienteId = NEW.clienteId AND productoId = registro_recomendacion.productoRecomendadoId 
                ) THEN

                    INSERT INTO ProductoRecomendadoParaCliente
                    (clienteId , productoRecomendadoId , fechaRecomendacion , mensaje)
                    VALUES
                    (NEW.clienteId, registro_recomendacion.productoRecomendadoId, NOW(), 'Basado en tus interacciones frecuentes...') ;

                END IF ;
            END LOOP ;
        END IF ;

        RETURN NEW ;
    END ;
$$ LANGUAGE plpgsql;

CREATE TRIGGER producto_recomendado_fill_trigger
AFTER INSERT
ON HistorialClienteProducto
FOR EACH ROW
EXECUTE FUNCTION recomendar_producto_trigger_func() ;



-- B : product price increment 30%

CREATE OR REPLACE FUNCTION incremento_30_producto_trigger_func()
RETURNS TRIGGER
AS $$
    BEGIN
        UPDATE Producto
        SET precioPor = NEW.precioPor * 1.3
        WHERE id = NEW.productoId ;

        RETURN NEW ;
    END ;
$$ LANGUAGE plpgsql ;

CREATE TRIGGER increment_30_product_trigger
AFTER INSERT
ON ProveedorProducto

FOR EACH ROW
EXECUTE FUNCTION incremento_30_producto_trigger_func() ;

-- C : Verify valid promo
CREATE OR REPLACE FUNCTION verificar_promo_valida_trigger_func()
RETURNS TRIGGER
AS $$
    DECLARE
        es_promo_valida BOOLEAN ;

    BEGIN
        SELECT 
            verifica_promo_valida(NEW.promo_id, NEW.factura_id)
        INTO
            es_promo_valida ;

        IF es_promo_valida IS FALSE THEN
            RAISE EXCEPTION 'La promoción % no es válida para la factura %', NEW.promoId, NEW.facturaId ; 
        ELSE
            RETURN NEW ;
        END IF ;

    END ;

$$ LANGUAGE plpgsql;

CREATE TRIGGER valid_promo_verifier
BEFORE INSERT
ON FacturaPromo
FOR EACH ROW 
EXECUTE FUNCTION verificar_promo_valida_trigger_func() ;
 

-- TO DO: 
/*
e.​ Trigger de registro automático de devoluciones y ajuste de stock
*/

-- D : Trigger to avoid online and physical purchases for out of stock products
CREATE OR REPLACE FUNCTION online_physical_out_of_stock_trigger_func()
RETURNS TRIGGER
AS $$
    DECLARE
        cant_producto INT := 0 ;
    BEGIN
-- finding out stock of the product
        SELECT
            cantidad
        INTO
            cant_producto
        FROM 
            Inventario
        WHERE
            productoId = NEW.productoId ;

-- if the product doesn't exist, the query will return NULL, we coalesce that result 
        cant_producto := COALESCE(cant_producto, 0) ;

-- if it passess all the conditions then we can insert the product
        IF cant_producto = 0 THEN
            RAISE EXCEPTION 'El producto no está disponible por los momentos' ;
        ELSIF cant_producto < NEW.cantidad THEN
            RAISE EXCEPTION 'No hay unidades suficientes del producto para esta compra' ;
        ELSE
            RETURN NEW ;
        END IF ;

    END;
$$ LANGUAGE plpgsql ;

CREATE TRIGGER valid_stock_online_purchase
BEFORE INSERT
ON OrdenDetalle
FOR EACH ROW 
EXECUTE FUNCTION online_physical_out_of_stock_trigger_func() ;

CREATE TRIGGER valid_stock_physical_purchase
BEFORE INSERT
ON FacturaDetalle
FOR EACH ROW 
EXECUTE FUNCTION online_physical_out_of_stock_trigger_func() ;

-- E : Trigger for automatic returns registration and stock adjustment
CREATE OR REPLACE FUNCTION automatic_stock_return_trigger_func()
RETURNS TRIGGER
AS $$
    BEGIN
        UPDATE 
            Inventario
        SET 
            cantidad = cantidad + OLD.cantidad
        WHERE 
            productoId = OLD.productoId ;

        RETURN OLD ;
    END ;
$$ LANGUAGE plpgsql ;

CREATE TRIGGER automatic_stock_return
AFTER DELETE
ON FacturaDetalle
FOR EACH ROW
EXECUTE FUNCTION automatic_stock_return_trigger_func() ;