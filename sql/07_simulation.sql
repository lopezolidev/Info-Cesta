-- #####################################################################################################################################
-- ## FASE DE SIMULACIÓN: EJECUCIÓN DE PROCEDIMIENTOS ##
-- #####################################################################################################################################
-- Paso 1: Abastecer el inventario simulando compras a proveedores.
-- Se realizan 50 llamadas al procedimiento para cumplir con los requisitos del proyecto.

CALL simular_compra_proveedor(1, 1, 0.80, 200);   -- Distribuidora Black Star vende Coca-Cola
CALL simular_compra_proveedor(1, 7, 1.20, 150);   -- Distribuidora Black Star vende Papas Fritas Lays
CALL simular_compra_proveedor(2, 4, 1.10, 100);   -- Alimentos del Norte vende Yogur Danone
CALL simular_compra_proveedor(2, 8, 0.70, 300);   -- Alimentos del Norte vende Pan Bimbo
CALL simular_compra_proveedor(3, 21, 1.50, 80);   -- DryOut SA vende Te Arizona
CALL simular_compra_proveedor(4, 43, 4.50, 50);   -- Soplandous Bistec vende Pechuga de Pollo
CALL simular_compra_proveedor(5, 36, 0.80, 250);  -- Lacteos El Andino vende Leche Entera La Serenisima
CALL simular_compra_proveedor(5, 39, 1.50, 120);  -- Lacteos El Andino vende Manteca La Serenisima
CALL simular_compra_proveedor(6, 127, 2.00, 100); -- Los Panes del Portu vende Pan Integral Multicereal
CALL simular_compra_proveedor(7, 212, 1.50, 180); -- Importadora Los Valles vende Salsa Barbacoa
CALL simular_compra_proveedor(8, 17, 1.00, 200);  -- Willy Wonka C.A vende Chocolate Hershey’s
CALL simular_compra_proveedor(8, 168, 2.00, 100); -- Willy Wonka C.A vende Chocolate Blanco Hershey
CALL simular_compra_proveedor(9, 210, 2.50, 100); -- Paramo Cafe vende Cafe Nescafe
CALL simular_compra_proveedor(10, 201, 2.00, 70); -- 記憶 Salud vende Jabon Liquido Dove
CALL simular_compra_proveedor(11, 16, 0.80, 300); -- All Stars Distribuidores vende Gatorade
CALL simular_compra_proveedor(12, 27, 2.00, 90);  -- Tuty Fruty de Oriente vende Fruta Fresca
CALL simular_compra_proveedor(13, 18, 1.40, 120); -- Los Llanos del Norte vende Arroz Molinos
CALL simular_compra_proveedor(14, 42, 5.00, 40);  -- Fabulous Steak vende Carne Molida de Res
CALL simular_compra_proveedor(15, 3, 1.60, 100);  -- Lacteos Von-Tinson C.A vende Leche Condensada
CALL simular_compra_proveedor(16, 88, 0.90, 200); -- Panaderia Arsenal vende Galletas Oreo Waffer
CALL simular_compra_proveedor(17, 107, 1.10, 150);-- Verduras vs Zombies vende Papas Fritas Lays Clasicas
CALL simular_compra_proveedor(18, 44, 4.80, 60);  -- Carne ZZZ C.A vende Chuletas de Cerdo
CALL simular_compra_proveedor(19, 32, 1.30, 180); -- Shadow Energy vende Monster Energy
CALL simular_compra_proveedor(20, 162, 1.40, 80); -- Gomitas ReZero vende Mermelada de Dulce de Leche
CALL simular_compra_proveedor(21, 45, 3.00, 50);  -- Carnes El Rey de España vende Salchichas Viena Arcor
CALL simular_compra_proveedor(22, 26, 5.50, 30);  -- Pescados y Mariscos El Escoces vende Pescado Fresco
CALL simular_compra_proveedor(23, 215, 4.00, 70); -- Distribuidora Yuki vende Takoyakis
CALL simular_compra_proveedor(24, 138, 2.20, 120);-- Monster Distribution vende Energizante Monster
CALL simular_compra_proveedor(25, 4, 1.20, 100);  -- Verduras del Sur vende Yogur Danone
CALL simular_compra_proveedor(1, 2, 0.75, 200);   -- Distribuidora Black Star vende Pepsi
CALL simular_compra_proveedor(3, 31, 4.00, 50);   -- DryOut SA vende Refresco Sprite (1L)
CALL simular_compra_proveedor(5, 53, 2.00, 100);  -- Lacteos El Andino vende Queso Crema Philadelphia
CALL simular_compra_proveedor(8, 182, 0.80, 250); -- Willy Wonka C.A vende Galletas Chocotorta
CALL simular_compra_proveedor(26, 112, 2.10, 150); -- Panaderia La Traicion vende Pan Integral Multicereal
CALL simular_compra_proveedor(11, 57, 1.30, 150); -- All Stars Distribuidores vende Bebida Isotonica Gatorade
CALL simular_compra_proveedor(15, 105, 1.80, 80); -- Lacteos Von-Tinson C.A vende Leche UHT La Serenisima
CALL simular_compra_proveedor(19, 46, 2.50, 90);  -- Shadow Energy vende Bebida Energetica Red Bull
CALL simular_compra_proveedor(22, 143, 4.50, 35); -- Pescados y Mariscos El Escoces vende Filete de Merluza
CALL simular_compra_proveedor(2, 5, 0.65, 400);   -- Alimentos del Norte vende Harina Molinos
CALL simular_compra_proveedor(4, 129, 9.00, 20);  -- Soplandous Bistec vende Pollo Entero Fresco
CALL simular_compra_proveedor(6, 120, 2.20, 100); -- Los Panes del Portu vende Pan Integral Multicereal
CALL simular_compra_proveedor(10, 204, 1.30, 150);-- 記憶 Salud vende Huevo Fresco
CALL simular_compra_proveedor(14, 133, 7.00, 25); -- Fabulous Steak vende Filete de Merluza Congelado
CALL simular_compra_proveedor(18, 198, 5.00, 50); -- Carne ZZZ C.A vende Alitas de Pollo Congeladas
CALL simular_compra_proveedor(27, 163, 0.90, 300); -- Galletas Del Alba vende Chocolinas
CALL simular_compra_proveedor(23, 211, 1.30, 100);-- Distribuidora Yuki vende Tortillas de Maiz
CALL simular_compra_proveedor(25, 84, 6.00, 30);  -- Verduras del Sur vende Vino Tinto Malbec (750ml)
CALL simular_compra_proveedor(1, 45, 1.20, 200);  -- Distribuidora Black Star vende Refresco Fanta
CALL simular_compra_proveedor(5, 187, 3.00, 70);  -- Lacteos El Andino vende Queso Parmesano
CALL simular_compra_proveedor(29, 201, 2.10, 100); -- MedicKuroi vende Jabon Liquido Dove
CALL simular_compra_proveedor(12, 102, 2.20, 80); -- Tuty Fruty de Oriente vende Agua Mineral Evian
CALL simular_compra_proveedor(30, 188, 2.80, 200); -- Dental Healthy vende Papel Higienico Scott
CALL simular_compra_proveedor(16, 12, 0.70, 500); -- Panaderia Arsenal vende 500 unidades de Galletas Oreo

CALL simular_compra_proveedor(13, 19, 0.90, 300);  -- Pasta La Moderna (Este resuelve tu error actual)
CALL simular_compra_proveedor(8, 163, 0.80, 400);   -- Chocolinas
CALL simular_compra_proveedor(2, 9, 1.20, 200);     -- Cerveza Quilmes
CALL simular_compra_proveedor(13, 203, 1.90, 120);  -- Salsa de Soja Kikkoman
CALL simular_compra_proveedor(3, 10, 0.50, 500);    -- Te Lipton en Bolsa
CALL simular_compra_proveedor(18, 11, 2.50, 100);   -- Aceite Natura
CALL simular_compra_proveedor(7, 13, 1.00, 200);    -- Mayonesa tomatox
CALL simular_compra_proveedor(25, 14, 1.10, 250);   -- Cerveza Polar
CALL simular_compra_proveedor(35, 23, 2.00, 150);   -- Cereal Quaker
CALL simular_compra_proveedor(3, 24, 3.00, 100);    -- Leche en Polvo Nido
CALL simular_compra_proveedor(31, 29, 4.00, 80);    -- Aceite de Oliva (nombre antiguo)
CALL simular_compra_proveedor(14, 48, 2.00, 120);   -- Salchichas Viena Arcor
CALL simular_compra_proveedor(16, 214, 1.00, 300);  -- Galletas Oreo Waffer (nombre antiguo)
CALL simular_compra_proveedor(16, 199, 0.90, 250);  -- Galletas Digestive
CALL simular_compra_proveedor(16, 209, 0.80, 300);  -- Galletas de Vainilla
CALL simular_compra_proveedor(2, 159, 1.30, 150);   -- Pan Integral Bimbo
CALL simular_compra_proveedor(20, 109, 2.50, 100);  -- Manteca de Mani Skippy
CALL simular_compra_proveedor(20, 184, 5.00, 60);   -- Miel Pura de Abeja
CALL simular_compra_proveedor(25, 217, 2.00, 200);  -- Cerveza Polarcita
CALL simular_compra_proveedor(1, 200, 1.80, 180);   -- Cerveza Corona
CALL simular_compra_proveedor(18, 158, 2.00, 100);  -- Aceite de Girasol
CALL simular_compra_proveedor(4, 193, 3.50, 70);    -- Aceite de Coco
CALL simular_compra_proveedor(10, 154, 1.60, 200);  -- Papas Fritas Pringles
CALL simular_compra_proveedor(17, 6, 2.50, 100);     -- Sopa Knorr
CALL simular_compra_proveedor(17, 160, 0.40, 500);  -- Sopa Maruchan
CALL simular_compra_proveedor(1, 171, 1.50, 150);   -- Agua saborizada a Naranja
CALL simular_compra_proveedor(1, 185, 2.00, 120);   -- Agua Mineral Evian
CALL simular_compra_proveedor(13, 181, 0.70, 400);  -- Pasta Matarazzo
CALL simular_compra_proveedor(13, 248, 1.30, 200);  -- Fideos Spaghetti
CALL simular_compra_proveedor(2, 155, 1.80, 100);   -- Yogur Activia
CALL simular_compra_proveedor(12, 218, 2.80, 80);   -- Queso Gouda en Lonchas
CALL simular_compra_proveedor(8, 197, 1.50, 250);   -- Chocolate en barra Nestle
CALL simular_compra_proveedor(31, 216, 12.00, 30);  -- Escoba
CALL simular_compra_proveedor(35, 208, 1.00, 200);  -- Barras de Cereal Quaker
CALL simular_compra_proveedor(13, 195, 0.80, 300);  -- Arroz Gallo
CALL simular_compra_proveedor(5, 157, 0.90, 250);   -- Leche UHT La Serenisima

CALL simular_compra_proveedor(7, 13, 1.00, 200);   -- Importadora Los Valles vende Mayonesa tomatox
CALL simular_compra_proveedor(25, 14, 1.10, 300);  -- Verduras del Sur vende Cerveza Polar
CALL simular_compra_proveedor(3, 15, 1.80, 150);   -- DryOut SA vende Jugo Natural Del Valle
CALL simular_compra_proveedor(20, 20, 1.90, 100);  -- Gomitas ReZero vende Gelatina Royal
CALL simular_compra_proveedor(16, 25, 0.70, 400);  -- Panaderia Arsenal vende Galletas Tuc
CALL simular_compra_proveedor(31, 28, 4.50, 80);   -- Marineria de Zaun vende Aceite de Oliva (nombre antiguo)
CALL simular_compra_proveedor(20, 30, 2.50, 120);  -- Gomitas ReZero vende Helado Mantecol
CALL simular_compra_proveedor(5, 35, 2.00, 100);   -- Lacteos El Andino vende Bebida de Soja Silk

CALL simular_compra_proveedor(25, 22, 3.50, 60); -- Verduras del Sur sells 60 units of Vino Tinto Malbec
CALL simular_compra_proveedor(8, 40, 3.50, 80); -- Willy Wonka C.A sells 80 units of Helado de Chocolate Cheescake Factory
CALL simular_compra_proveedor(8, 189, 4.00, 100); -- Willy Wonka C.A sells 100 units of Helado de Chocolate
CALL simular_compra_proveedor(16, 183, 1.00, 200); -- Panaderia Arsenal vende 200 unidades de Galletas Oreo Waffer
CALL simular_compra_proveedor(39, 219, 3.00, 50); -- SAO Express vende 50 unidades de Cable USB
CALL simular_compra_proveedor(5, 38, 1.90, 100); -- Lacteos El Andino vende 100 unidades de Queso Crema Nestle
CALL simular_compra_proveedor(5, 50, 2.00, 100); -- Lacteos El Andino sells 100 units of Queso Crema Philadelphia
CALL simular_compra_proveedor(8, 60, 0.90, 200); -- Willy Wonka C.A vende 200 unidades de Galletas Chocotorta
CALL simular_compra_proveedor(8, 60, 0.90, 200); -- Willy Wonka C.A sells 200 units of Galletas Chocotorta
CALL simular_compra_proveedor(10, 88, 2.00, 150); -- 記憶 Salud vende 150 unidades de Jabon Liquido Dove
CALL simular_compra_proveedor(23, 145, 3.20, 100); -- Distribuidora Yuki vende 100 unidades de Salsa de Soja Kikkoman
CALL simular_compra_proveedor(18, 66, 2.20, 150); -- Carne ZZZ C.A vende 150 unidades de Aceite de Girasol
CALL simular_compra_proveedor(7, 99, 1.80, 200);  -- Importadora Los Valles vende 200 unidades de Salsa Barbacoa tomatox
CALL simular_compra_proveedor(18, 41, 4.80, 70);   -- Carne ZZZ C.A vende 70 unidades de Chuletas de Cerdo
CALL simular_compra_proveedor(27, 71, 0.80, 300);  -- Galletas Del Alba vende 300 unidades de Chocolinas
CALL simular_compra_proveedor(25, 101, 6.00, 50);  -- Verduras del Sur vende 50 unidades de Vino Tinto Malbec
CALL simular_compra_proveedor(15, 131, 1.20, 200); -- Lacteos Von-Tinson C.A vende 200 unidades de Azucar Blanca
CALL simular_compra_proveedor(30, 49, 1.20, 150);  -- Dental Healthy vende 150 unidades de Manteca de Cerdo (Proveedor genérico)
CALL simular_compra_proveedor(13, 79, 1.10, 200);  -- Los Llanos del Norte vende 200 unidades de Pasta Penne Rigate
CALL simular_compra_proveedor(2, 119, 1.40, 180);  -- Alimentos del Norte vende 180 unidades de Cereal de Avena Quaker
CALL simular_compra_proveedor(40, 150, 1.25, 200) ;
CALL simular_compra_proveedor(11, 180, 0.78, 190) ;
CALL simular_compra_proveedor(19, 202, 1.30, 220) ;
 
CALL simular_compra_proveedor(21, 12, 0.40, 300) ;
CALL simular_compra_proveedor(12, 42, 0.98, 170) ;
CALL simular_compra_proveedor(34, 72, 0.87, 150) ;
CALL simular_compra_proveedor(28, 102, 0.21, 180) ;

/*

SELECT *
FROM Inventario
WHERE productoId = 150 OR productoId = 180 OR productoId = 202 ;

*/
-- Paso 2 : Simular compras físicas poblando Factura, FacturaDetalle, VentaFisica e HistorialClienteProducto
-- Populating VentaFisica relation, Factura and FacturaDetalle with realistic invoices, using an independent module of plpgsql with DO $$ ... $$ clause
DO $$
DECLARE
    v_factura_id INTEGER;
BEGIN
    -- --- Venta Física 1 ---
    -- Cliente: 1, Empleado: 2 (Cajero)
    CALL crear_factura_fisica(1, 2, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 1, 2, 1.50);   -- Coca-Cola
    CALL producto_a_factura_fisica(v_factura_id, 7, 1, 2.00);   -- Papas Fritas Lays
    CALL producto_a_factura_fisica(v_factura_id, 12, 3, 1.00);  -- Galletas Oreo

    -- --- Venta Física 2 ---
    -- Cliente: 8, Empleado: 3 (Cajero)
    CALL crear_factura_fisica(8, 3, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 36, 2, 1.20);  -- Leche Entera La Serenisima
    CALL producto_a_factura_fisica(v_factura_id, 8, 1, 1.20);   -- Pan Bimbo
    CALL producto_a_factura_fisica(v_factura_id, 5, 1, 0.95);   -- Harina Molinos
    CALL producto_a_factura_fisica(v_factura_id, 204, 1, 2.00); -- Huevo Fresco

    -- --- Venta Física 3 ---
    -- Cliente: 15, Empleado: 4 (Cajero)
    CALL crear_factura_fisica(15, 4, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 42, 1, 7.50);  -- Carne Molida de Res (PorPesoKg)
    CALL producto_a_factura_fisica(v_factura_id, 19, 1, 1.50);  -- Pasta La Moderna
    CALL producto_a_factura_fisica(v_factura_id, 212, 1, 2.10); -- CORREGIDO: ID 230 no existe, se usa 212 (Salsa Barbacoa)

    -- --- Venta Física 4 ---
    -- Cliente: 22, Empleado: 2 (Cajero)
    CALL crear_factura_fisica(22, 2, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 17, 2, 1.80);  -- Chocolate Hershey’s
    CALL producto_a_factura_fisica(v_factura_id, 182, 3, 1.30); -- Galletas Chocotorta
    CALL producto_a_factura_fisica(v_factura_id, 163, 1, 1.20); -- Chocolinas

    -- --- Venta Física 5 ---
    -- Cliente: 31, Empleado: 3 (Cajero)
    CALL crear_factura_fisica(31, 3, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 201, 1, 3.00); -- Jabon Liquido Dove
    CALL producto_a_factura_fisica(v_factura_id, 188, 1, 3.80); -- Papel Higienico Scott
    CALL producto_a_factura_fisica(v_factura_id, 216, 1, 5.00); -- CORREGIDO: ID 234 no existe, se usa 216 (Escoba)

    -- --- Venta Física 6 ---
    -- Cliente: 40, Empleado: 4 (Cajero)
    CALL crear_factura_fisica(40, 4, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 9, 6, 1.80);   -- Cerveza Quilmes
    CALL producto_a_factura_fisica(v_factura_id, 107, 2, 1.70); -- Papas Fritas Lays Clasicas

    -- --- Venta Física 7 ---
    -- Cliente: 55, Empleado: 2
    CALL crear_factura_fisica(55, 2, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 27, 2, 3.00);  -- Fruta Fresca (PorPesoKg)
    CALL producto_a_factura_fisica(v_factura_id, 4, 3, 1.80);   -- Yogur Danone
    CALL producto_a_factura_fisica(v_factura_id, 208, 1, 2.00); -- CORREGIDO: ID 232 no existe, se usa 208 (Barras de Cereal Quaker)

    -- --- Venta Física 8 ---
    -- Cliente: 63, Empleado: 3
    CALL crear_factura_fisica(63, 3, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 43, 1, 6.80);  -- Pechuga de Pollo (PorPesoKg)
    CALL producto_a_factura_fisica(v_factura_id, 18, 1, 2.10);  -- Arroz Molinos
    CALL producto_a_factura_fisica(v_factura_id, 211, 1, 2.40); -- CORREGIDO: ID 246 no existe, se usa 211 (Tortillas de Maiz)

    -- --- Venta Física 9 ---
    -- Cliente: 71, Empleado: 4
    CALL crear_factura_fisica(71, 4, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 215, 2, 6.00); -- Takoyakis
    CALL producto_a_factura_fisica(v_factura_id, 210, 3, 3.50); -- Cafe Nescafe
    CALL producto_a_factura_fisica(v_factura_id, 203, 1, 2.60); -- Salsa de Soja Kikkoman

    -- --- Venta Física 10 ---
    -- Cliente: 82, Empleado: 2
    CALL crear_factura_fisica(82, 2, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 21, 2, 2.00);  -- Te Arizona
    CALL producto_a_factura_fisica(v_factura_id, 32, 4, 2.00);  -- Monster Energy
    CALL producto_a_factura_fisica(v_factura_id, 16, 2, 1.25);  -- Gatorade

    -- --- Venta 11 ---
    CALL crear_factura_fisica(91, 5, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 10, 2, 0.75); -- Te Lipton en Bolsa
    CALL producto_a_factura_fisica(v_factura_id, 11, 1, 4.00); -- Aceite Natura
    CALL producto_a_factura_fisica(v_factura_id, 13, 2, 1.60); -- Mayonesa tomatox

    -- --- Venta 12 ---
    CALL crear_factura_fisica(99, 6, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 14, 4, 1.70); -- Cerveza Polar
    CALL producto_a_factura_fisica(v_factura_id, 22, 2, 5.00); -- Vino Tinto Malbec (nombre antiguo, ahora es ID 84)

    -- --- Venta 13 ---
    CALL crear_factura_fisica(7, 7, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 23, 1, 3.20); -- Cereal Quaker
    CALL producto_a_factura_fisica(v_factura_id, 24, 1, 4.50); -- Leche en Polvo Nido
    CALL producto_a_factura_fisica(v_factura_id, 36, 3, 1.20); -- Leche Entera La Serenisima

    -- --- Venta 14 ---
    CALL crear_factura_fisica(18, 8, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 26, 1, 7.00); -- Pescado Fresco (PorPesoKg)
    CALL producto_a_factura_fisica(v_factura_id, 28, 1, 6.50); -- CORREGIDO: ID 29 (Aceite Oliva) renombrado a 28 en inserts

    -- --- Venta 15 ---
    CALL crear_factura_fisica(29, 9, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 31, 2, 5.90); -- Refresco Sprite (1L)
    CALL producto_a_factura_fisica(v_factura_id, 45, 3, 1.80); -- Refresco Fanta
    CALL producto_a_factura_fisica(v_factura_id, 2, 3, 1.45);  -- Pepsi

    -- --- Venta 36 ---
    CALL crear_factura_fisica(13, 1, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 40, 1, 5.00); -- Helado de Chocolate Cheescake Factory
    CALL producto_a_factura_fisica(v_factura_id, 189, 1, 5.90);-- Helado de Chocolate
    CALL producto_a_factura_fisica(v_factura_id, 183, 1, 5.50);-- CORREGIDO: ID 242 no existe, se usa 213 (Galletas Oreo Waffer)

    -- --- Venta 37 ---
    CALL crear_factura_fisica(23, 2, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 143, 1, 9.60); -- Filete de Merluza
    CALL producto_a_factura_fisica(v_factura_id, 133, 1, 6.50); -- CORREGIDO: ID 237 no existe, se usa 133 (Filete Merluza Congelado)

    -- --- Venta 38 ---
    CALL crear_factura_fisica(33, 3, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 84, 1, 8.50); -- Vino Tinto Malbec
    CALL producto_a_factura_fisica(v_factura_id, 22, 1, 9.50);-- CORREGIDO: ID 233 no existe, se usa 22 (Vino Tinto Malbec)

    -- --- Venta 39 ---
    CALL crear_factura_fisica(43, 4, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 219, 2, 5.00); -- Cable USB
    CALL producto_a_factura_fisica(v_factura_id, 218, 1, 50.00);-- Queso Gouda en Lonchas

    -- --- Venta 40 ---
    CALL crear_factura_fisica(53, 5, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 216, 1, 20.00);-- Escoba
    CALL producto_a_factura_fisica(v_factura_id, 188, 1, 10.00);-- CORREGIDO: ID 217 no existe, se usa 188 (Papel Higiénico)

    -- --- Venta 41 ---
    CALL crear_factura_fisica(62, 6, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 208, 1, 1.50);-- Barras de Cereal Quaker
    CALL producto_a_factura_fisica(v_factura_id, 23, 2, 2.00);-- CORREGIDO: ID 232 no existe, se usa 23 (Cereal Quaker)

    -- --- Venta 42 ---
    CALL crear_factura_fisica(72, 7, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 1, 1, 1.50);
    CALL producto_a_factura_fisica(v_factura_id, 2, 1, 1.45);
    CALL producto_a_factura_fisica(v_factura_id, 45, 1, 1.80);

    -- --- Venta 43 ---
    CALL crear_factura_fisica(81, 8, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 7, 3, 2.00);
    CALL producto_a_factura_fisica(v_factura_id, 154, 1, 2.30);

    -- --- Venta 44 ---
    CALL crear_factura_fisica(90, 9, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 12, 5, 1.00);
    CALL producto_a_factura_fisica(v_factura_id, 182, 2, 1.30);
    CALL producto_a_factura_fisica(v_factura_id, 163, 3, 1.20);

    -- --- Venta 45 ---
    CALL crear_factura_fisica(9, 10, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 8, 2, 1.20);
    CALL producto_a_factura_fisica(v_factura_id, 159, 1, 1.90);

    -- --- Venta 46 ---
    CALL crear_factura_fisica(19, 11, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 18, 2, 2.10); -- Arroz
    CALL producto_a_factura_fisica(v_factura_id, 195, 3, 1.10); -- Arroz
    CALL producto_a_factura_fisica(v_factura_id, 181, 1, 2.40); -- CORREGIDO: ID 252 no existe, se usa 181 (Pasta Matarazzo)

    -- --- Venta 47 ---
    CALL crear_factura_fisica(28, 12, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 203, 1, 2.60); -- Salsa de Soja
    CALL producto_a_factura_fisica(v_factura_id, 212, 1, 2.20); -- Salsa Barbacoa

    -- --- Venta 48 ---
    CALL crear_factura_fisica(37, 13, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 36, 6, 1.20); -- Leche
    CALL producto_a_factura_fisica(v_factura_id, 157, 4, 1.40); -- Leche

    -- --- Venta 49 ---
    CALL crear_factura_fisica(46, 14, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 3, 2, 2.20);  -- Leche Condensada
    CALL producto_a_factura_fisica(v_factura_id, 38, 1, 2.70); -- CORREGIDO: ID 238 no existe, se usa 38 (Queso Crema Nestle)

    -- --- Venta 50 ---
    CALL crear_factura_fisica(52, 15, v_factura_id);
    CALL producto_a_factura_fisica(v_factura_id, 16, 2, 1.25); -- Gatorade
    CALL producto_a_factura_fisica(v_factura_id, 32, 1, 2.00); -- Monster Energy
    CALL producto_a_factura_fisica(v_factura_id, 46, 1, 2.50); -- Red Bull
    CALL producto_a_factura_fisica(v_factura_id, 138, 3, 3.20);-- CORREGIDO: ID 251 no existe, se usa 138 (Energizante Monster)

END $$;

-- #####################################################################################################################################
-- ## PASO 3: SIMULACIÓN DE VENTAS ONLINE ##
-- #####################################################################################################################################
-- Se procesa el carrito de cada uno de los 25 clientes que tienen productos.

CALL simular_compra_online(1, 2, 1);   -- Cliente 1, Envío "Mismo día", Pago con "Tarjeta de crédito"
CALL simular_compra_online(5, 3, 3);   -- Cliente 5, Envío "Al día siguiente", Pago con "PayPal"
CALL simular_compra_online(10, 5, 8);  -- Cliente 10, Envío "Estandar", Pago con "Pago movil"
CALL simular_compra_online(15, 4, 10); -- Cliente 15, Envío "Semana siguiente", Pago con "Zelle"
CALL simular_compra_online(20, 1, 1);   -- Cliente 20, Envío "Inmediato", Pago con "Tarjeta de crédito"
CALL simular_compra_online(25, 2, 2);   -- Cliente 25, Envío "Mismo día", Pago con "Tarjeta de débito"
CALL simular_compra_online(30, 3, 3);   -- Cliente 30, Envío "Al día siguiente", Pago con "PayPal"
CALL simular_compra_online(35, 5, 4);   -- Cliente 35, Envío "Estandar", Pago con "Transferencia bancaria"
CALL simular_compra_online(40, 2, 9);   -- Cliente 40, Envío "Mismo día", Pago con "Cashea"
CALL simular_compra_online(45, 1, 1);   -- Cliente 45, Envío "Inmediato", Pago con "Tarjeta de crédito"
CALL simular_compra_online(50, 3, 10);  -- Cliente 50, Envío "Al día siguiente", Pago con "Zelle"
CALL simular_compra_online(55, 5, 8);   -- Cliente 55, Envío "Estandar", Pago con "Pago movil"

-- to-do: this point forward
CALL simular_compra_online(60, 2, 1);   -- Cliente 60, Envío "Mismo día", Pago con "Tarjeta de crédito"

CALL simular_compra_online(62, 4, 3);   -- Cliente 62, Envío "Semana siguiente", Pago con "PayPal"
CALL simular_compra_online(65, 3, 2);   -- Cliente 65, Envío "Al día siguiente", Pago con "Tarjeta de débito"
CALL simular_compra_online(70, 1, 1);   -- Cliente 70, Envío "Inmediato", Pago con "Tarjeta de crédito"
CALL simular_compra_online(73, 5, 8);   -- Cliente 73, Envío "Estandar", Pago con "Pago movil"
CALL simular_compra_online(75, 2, 9);   -- Cliente 75, Envío "Mismo día", Pago con "Cashea"
CALL simular_compra_online(80, 3, 10);  -- Cliente 80, Envío "Al día siguiente", Pago con "Zelle"
CALL simular_compra_online(83, 1, 4);   -- Cliente 83, Envío "Inmediato", Pago con "Transferencia bancaria"
CALL simular_compra_online(85, 5, 1);   -- Cliente 85, Envío "Estandar", Pago con "Tarjeta de crédito"
CALL simular_compra_online(90, 2, 3);   -- Cliente 90, Envío "Mismo día", Pago con "PayPal"
CALL simular_compra_online(95, 3, 1);   -- Cliente 95, Envío "Al día siguiente", Pago con "Tarjeta de crédito"
CALL simular_compra_online(100, 1, 10); -- Cliente 100, Envío "Inmediato", Pago con "Zelle"
CALL simular_compra_online(48, 5, 2);   -- Cliente 48, Envío "Estandar", Pago con "Tarjeta de débito"