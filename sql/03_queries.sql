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