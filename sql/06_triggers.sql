-- TRIGGER A : inventory population

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

-- TRIGGER B : product price increment 30%

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

