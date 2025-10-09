-- special procedure to update stock price to 100 times its original price, in order to 'Fijo' promotions to apply without issues
-- Procedimiento para actualizar masivamente los precios de los productos
CREATE OR REPLACE PROCEDURE actualizar_precios_productos(multiplicador DECIMAL)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Producto
    SET precioPor = precioPor * multiplicador;
END;
$$;
CALL actualizar_precios_productos(100.0);

-- A. Simulate a whole online purchase of what's in a kart given a customer.
CREATE OR REPLACE PROCEDURE simular_compra_online(
    p_cliente_id INTEGER ,
    p_tipo_envio_id INTEGER ,
    metodo_pago_id INTEGER
)
LANGUAGE plpgsql
AS $$
    DECLARE
        v_nueva_factura_id INTEGER ;
        v_nueva_orden_id INTEGER ;
        registro_carrito RECORD ;

    BEGIN 
    -- creating invoice to obtain v_nueva_factura_id needed for OrdenOnline
        INSERT INTO Factura(fechaEmision, clienteId, subTotal, montoDescuentoTotal, porcentajeIVA, montoIVA, montoTotal)
        VALUES (
            NOW(),
            p_cliente_id,
            0,
            0,
            0.16,
            0,
            0
        )
        RETURNING id INTO v_nueva_factura_id ;

    -- creating online order of purchase "empty"
        INSERT INTO OrdenOnline(clienteId, nroOrden, fechaCreacion, tipoEnvioId, facturaId)
        VALUES (
            p_cliente_id,
            'ORD-' || v_nueva_factura_id || '-' || TO_CHAR(NOW(), 'YYYYMMDDHH24MISS'), -- generating an unique order identifier
            NOW(),
            p_tipo_envio_id,
            v_nueva_factura_id
        )
        RETURNING id INTO v_nueva_orden_id ;

    -- looping through each product in kart to insert into OrdenDetalle and FacturaDetalle
    FOR registro_carrito 
    IN 
        SELECT 
            productoId ,
            fechaAgregado ,
            cantidad ,
            precioPor
        FROM
            Carrito
        WHERE  
            clienteId = p_cliente_id        
    LOOP

        INSERT INTO OrdenDetalle(ordenId, productoId, cantidad, precioPor)
        VALUES (
            v_nueva_orden_id ,
            registro_carrito.productoId ,
            registro_carrito.cantidad ,
            registro_carrito.precioPor
        ) ;

        INSERT INTO FacturaDetalle(facturaId, productoId, cantidad, precioPor)
        VALUES (
            v_nueva_factura_id, 
            registro_carrito.productoId ,
            registro_carrito.cantidad ,
            registro_carrito.precioPor
        ) ;
    END LOOP ; 

    -- updating values of invoice
    UPDATE 
        Factura
    SET 
        subTotal = calculo_subtotal_factura(v_nueva_factura_id) ,    
        montoDescuentoTotal = calculo_descuento_total(v_nueva_factura_id, FALSE)  , 
        montoIVA = calculo_montoIVA(v_nueva_factura_id) ,
        montoTotal = montoTotal(v_nueva_factura_id)
    WHERE 
        id = v_nueva_factura_id ;

    -- concluding transaction
    -- Pago(facturaId, nroTransaccion, metodoPagoId)
    INSERT INTO Pago(facturaId, nroTransaccion, metodoPagoId)
    VALUES (
        v_nueva_factura_id ,
        (RANDOM() * 1000000000)::INTEGER, -- generating a random big number for transaction number
        metodo_pago_id
    ) ;

    -- deleting kart of customer
    DELETE FROM Carrito
    WHERE clienteId = p_cliente_id ;

    END ;

$$ ;

-- B. Simulate purchase from supplier given a supplier, product, price, and quantity.
CREATE OR REPLACE PROCEDURE simular_compra_proveedor(
    proveedor_id INTEGER ,
    producto_id INTEGER ,
    precio DECIMAL , 
    cantidad INTEGER
)
LANGUAGE plpgsql
AS $$
    BEGIN
        INSERT INTO ProveedorProducto (proveedorId, productoId, fechaCompra, precioPor, cantidad)
        VALUES (proveedor_id ,
                producto_id ,
                CURRENT_TIMESTAMP ,
                precio,
                cantidad) ;
    END ;
$$  ;

-- C. Create physical invoice given a customer and an employee (this will also create the relationship
-- VentaFisica)
CREATE OR REPLACE PROCEDURE crear_factura_fisica(
    cliente_id INTEGER ,
    empleado_id INTEGER ,
    INOUT p_nueva_factura_id INTEGER DEFAULT NULL 
)
LANGUAGE plpgsql
AS $$
    DECLARE 
        v_sucursal_id INTEGER ;
    BEGIN
        SELECT sucursalId
        INTO v_sucursal_id 
        FROM Empleado
        WHERE id = empleado_id ;

        INSERT INTO Factura (fechaEmision, clienteId, subTotal, montoDescuentoTotal, porcentajeIVA, montoIVA, montoTotal)
        VALUES (NOW(), cliente_id, 0, 0, 0, 0, 0)
        RETURNING id INTO p_nueva_factura_id;

        INSERT INTO VentaFisica (facturaId, sucursalId, empleadoId)
        VALUES (p_nueva_factura_id, v_sucursal_id, empleado_id) ;
    END ;
$$ ;

-- D. Add product to a physical invoice given an invoice, product, quantity, and price.
CREATE OR REPLACE PROCEDURE producto_a_factura_fisica (
    factura_id INTEGER ,
    producto_id INTEGER ,
    cantidad_producto INTEGER ,
    precioPor_producto DECIMAL(8, 2)
)
LANGUAGE plpgsql
AS $$
    DECLARE 
        subTotalFactura DECIMAL(8, 2) ;
        descuentoTotal DECIMAL(8, 2) ;
        porcentajeIVA DECIMAL(8, 2) := 0.16 ;
        montoIVAProducto DECIMAL(8, 2) ;
        montoTotalProducto DECIMAL(8, 2) ;

    BEGIN
    -- inserting first into FacturaDetalle given the "open" invoice (making the analogy of a cashier)
        INSERT INTO FacturaDetalle(facturaId, productoId, cantidad, precioPor)
        VALUES (factura_id, producto_id, cantidad_producto, precioPor_producto) ;

    -- executing functions to obtain values for the invoice
        SELECT calculo_subtotal_factura(factura_id)
        INTO subTotalFactura ;

        SELECT calculo_descuento_total(factura_id, FALSE) 
        INTO descuentoTotal ;

        SELECT calculo_montoIVA(factura_id)
        INTO montoIVAProducto ;

        SELECT montoTotal(factura_id)
        INTO montoTotalProducto ;

    -- updating the "open" invoice every time the cashier lasers a product, recalculating the price of such producto to add to the invoice
        UPDATE 
            Factura
        SET 
            subTotal = subTotalFactura ,    
            montoDescuentoTotal =  descuentoTotal , 
            montoIVA = montoIVAProducto ,
            montoTotal = montoTotalProducto 
        WHERE 
            id = factura_id ;

    END ;
$$ ;

-- E. Promotion effectiveness report: given a promotion, print the average quantity of sales and amount of income from 3 months before the start of the promotion and also print the same data during the period of duration of the promotion, along with the percentage increase or decrease when comparing them.

CREATE OR REPLACE PROCEDURE reporte_efectividad_promos(
    promo_id INTEGER
)
LANGUAGE plpgsql
AS $$
    DECLARE
        -- promo dates and duration
        v_fecha_inicio_promo DATE ;
        v_fecha_fin_promo DATE ;
        v_duracion_promo INTEGER ;
        
        -- average sales and amount before promo
        v_montoTotal_antes DECIMAL ;
        v_ventasTotales_antes INTEGER ;
        v_montoTotalPromedio_antes DECIMAL(8, 2) ;
        v_ventasPromedio_antes DECIMAL(8, 2) ;
        
        -- average sales and amount during promo
        v_montoTotal_durante DECIMAL ;
        v_ventasTotales_durante INTEGER ;
        v_montoTotalPromedio_durante DECIMAL(8, 2) ;
        v_ventasPromedio_durante DECIMAL(8, 2) ;

        
        -- increment / decrement percentages 
        v_porc_inc_dec_monto DECIMAL(8, 2) ;
        v_porc_inc_dec_ventas DECIMAL(8, 2) ;
        
    BEGIN
        -- get promotion start, end dates and duration
        SELECT 
            fechaInicio ,
            fechaFin ,   
            (fechaFin - fechaInicio + 1)    
        INTO 
            v_fecha_inicio_promo ,
            v_fecha_fin_promo ,
            v_duracion_promo
        FROM 
            Promo
        WHERE
            id = promo_id ;


        -- get metrics 3 months prior promo
        SELECT 
            COALESCE(SUM(montoTotal), 0.00) ,
            COALESCE(COUNT(*), 0)
        INTO
            v_montoTotal_antes ,
            v_ventasTotales_antes
        FROM 
            Factura
        WHERE 
            fechaEmision 
                BETWEEN 
                    v_fecha_inicio_promo - INTERVAL '3 months' 
                    AND
                    v_fecha_inicio_promo - INTERVAL '1 day';

        -- calculate the median amount of income and sales per day
        IF v_ventasTotales_antes > 0 THEN
            v_montoTotalPromedio_antes := v_montoTotal_antes / 90.0;
            v_ventasPromedio_antes := v_ventasTotales_antes / 90.0;
        ELSE
            v_montoTotalPromedio_antes := 0;
            v_ventasPromedio_antes := 0;
        END IF;

        -- get metrics during promo
        SELECT 
            COALESCE(SUM(montoTotal), 0.00) ,
            COALESCE(COUNT(*), 0) 
        INTO 
            v_montoTotal_durante ,
            v_ventasTotales_durante
        FROM 
            Factura
        WHERE 
            fechaEmision 
                BETWEEN
                    v_fecha_inicio_promo 
                    AND
                    v_fecha_fin_promo ;

        -- calculate median income during promotion
        IF v_duracion_promo > 0 THEN
            v_montoTotalPromedio_durante := v_montoTotal_durante / v_duracion_promo;
            v_ventasPromedio_durante := v_ventasTotales_durante / v_duracion_promo;
        ELSE
            v_montoTotalPromedio_durante := 0;
            v_ventasPromedio_durante := 0;
        END IF;


        -- calculate increment or decrement percentages
        IF v_montoTotalPromedio_antes > 0 THEN
            v_porc_inc_dec_monto := (( v_montoTotalPromedio_durante -  v_montoTotalPromedio_antes ) / v_montoTotalPromedio_antes) * 100 ;
        ELSE
            v_porc_inc_dec_monto := 0 ;
        END IF ;

        IF v_ventasPromedio_antes > 0 THEN
            v_porc_inc_dec_ventas := (( v_ventasPromedio_durante - v_ventasPromedio_antes) / v_ventasPromedio_antes ) * 100;
        ELSE 
            v_porc_inc_dec_ventas := 0 ;
        END IF ;

         -- printing result
        RAISE NOTICE '--- Reporte de Efectividad de la Promoción ID: % ---', p_promo_id;
        RAISE NOTICE ' ';
        RAISE NOTICE '--- Período ANTES ---';
        RAISE NOTICE 'Promedio de ventas por día: %', ROUND(v_ventasPromedio_antes, 2);
        RAISE NOTICE 'Promedio de ingreso por día: %', ROUND(v_montoTotalPromedio_antes, 2);
        RAISE NOTICE ' ';
        RAISE NOTICE '--- Período DURANTE ---';
        RAISE NOTICE 'Promedio de ventas por día: %', ROUND(v_ventasPromedio_durante, 2);
        RAISE NOTICE 'Promedio de ingreso por día: %', ROUND(v_montoTotalPromedio_durante, 2);
        RAISE NOTICE ' ';
        RAISE NOTICE '--- Comparativa ---';
        RAISE NOTICE 'Incremento/Decremento en Ventas Diarias: % %%', ROUND(v_porc_inc_dec_ventas, 2);
        RAISE NOTICE 'Incremento/Decremento en Ingresos Diarios: % %%', ROUND(v_porc_inc_dec_monto, 2);
        RAISE NOTICE '-------------------------------------------------';
        
    END ;
$$ ;


