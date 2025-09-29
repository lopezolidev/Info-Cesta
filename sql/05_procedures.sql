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

-- to do: procedure C - Create physical invoice given a customer and an employee (this will also create the relationship
-- VentaFisica)