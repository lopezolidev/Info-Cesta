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

-- procedure C - Create physical invoice given a customer and an employee (this will also create the relationship
-- VentaFisica)
CREATE OR REPLACE PROCEDURE crear_facutura_fisica(
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

-- Procedure E - promotion effectiveness report: given a promotion, print the average quantity of sales and amount of income from 3 months before the start of the promotion and also print the same data during the period of duration of the promotion, along with the percentage increase or decrease when comparing them.

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