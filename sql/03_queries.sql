/*
    Queries solved in order of difficulty
*/
-- Query J: Candy Budget. Tables used: Producto, Categoria, Inventario.
SELECT 
    p.nombre ,
    p.precioPor AS "Precio_Actual" ,
    (p.precioPor * 0.9) AS "Precio_con_Descuento_del_10" ,
    CASE 
        WHEN i.cantidad < 10 THEN 'Últimos Disponibles'
        WHEN i.cantidad < 20 THEN 'Pocos Disponibles'  
        ELSE 'Disponible'
    END AS stock
FROM 
    Producto AS p
JOIN
    Categoria AS c ON p.categoriaId = c.id
JOIN
    Inventario AS i ON p.id = i.productoId
WHERE 
    c.nombre = 'Snacks' ;

-- Query A: Delivery types report and analytics. Tables used: OrdenOnline, TipoEnvio.
SELECT
    te.nombreEnvio AS Nombre_Envio ,
    COUNT(*) AS cantidad_veces_usado , 
    ROUND((COUNT(*) * 100.0) / SUM(COUNT(*)) OVER(), 2)  AS Proporcion_respecto_total ,
    SUM(te.costoEnvio) AS Ingresos_totales_tipo_envio ,
    ROUND(SUM(te.costoEnvio) * 100.0 / SUM(SUM(te.costoEnvio)) OVER(), 2) AS Proporcion_ingreso_respecto_total
FROM 
    OrdenOnline AS oo
    JOIN TipoEnvio AS te ON te.id = oo.tipoEnvioId
GROUP BY
    te.nombreEnvio ;

-- Query I: Top 10 sold products
SELECT
    p.nombre ,
    ROUND(SUM(fd.cantidad * fd.precioPor) * 100.0 / SUM(SUM(fd.cantidad * fd.precioPor)) OVER(), 2) 
        AS Contribucion_precio_%
FROM 
    FacturaDetalle AS fd
    JOIN Producto AS p ON p.id = fd.productoId
GROUP BY
    fd.productoId, p.nombre
ORDER BY
    Contribucion_precio DESC
LIMIT
    10 ;

-- Query B: 
