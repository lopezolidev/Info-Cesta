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