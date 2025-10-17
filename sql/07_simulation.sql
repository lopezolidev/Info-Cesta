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