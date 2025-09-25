/*
    Independent tables - Group 1
    These are the most independent tables
    Don't depend of any other, therefore these tables must be creted first. 
    Inside this group order doesn't matter.   
*/
INSERT INTO Pais (nombre) VALUES
('Mexico'),
('Estados Unidos'),
('Colombia'),
('Argentina'),
('Espana'),
('Brasil'),
('Chile'),
('Peru'),
('Francia'),
('Venezuela');

INSERT INTO FormaPago (nombre, descripcion) VALUES
('Tarjeta de credito', 'Pago con tarjeta de credito Visa, Mastercard o Amex'),
('Tarjeta de debito', 'Pago con tarjeta de debito vinculada a una cuenta bancaria'),
('PayPal', 'Pago a traves de la plataforma PayPal'),
('Transferencia bancaria', 'Pago mediante transferencia electronica'),
('Efectivo', 'Pago en efectivo al momento de la entrega'),
('Cheque', 'Pago mediante cheque bancario'),
('Criptomonedas', 'Pago con Bitcoin, Ethereum u otras criptomonedas'),
('Pago movil', 'Pago a traves de aplicaciones moviles de cada banco'),
('Cashea', 'Pago fraccionado en varias cuotas mensuales'),
('Zelle', 'Pago a traves de aplicaciones moviles de bancos americanos');


INSERT INTO TipoEnvio (nombreEnvio, tiempoEstimadoEntrega, costoEnvio) VALUES
('Envio inmediato', 1, 50.00),
('Mismo dia', 4, 30.00),
('Al dia siguiente', 23, 20.00),
('Semana siguiente', 168, 6.00),
('Envio estandar', 72, 15.00);

INSERT INTO Marca (nombre, descripcion) VALUES
('Coca-Cola', 'Bebidas gaseosas y refrescos'),
('Pepsi', 'Bebidas y snacks'),
('Nestle', 'Productos alimenticios y bebidas'),
('Unilever', 'Productos de cuidado personal y alimentos'),
('Kelloggs', 'Cereales y snacks'),
('Danone', 'Productos lacteos y yogures'),
('tomatox', 'Salsas y conservas'),
('Colgate', 'Productos de higiene bucal'),
('P&G', 'Productos de limpieza y cuidado personal'),
('Lays', 'Snacks y papas fritas'),
('Bimbo', 'Pan y productos de panaderia'),
('La Serenisima', 'Productos lacteos y derivados'),
('Quilmes', 'Bebidas alcoholicas y cervezas'),
('Arcor', 'Golosinas y productos alimenticios'),
('Molinos', 'Harinas y productos alimenticios'),
('Mondelez', 'Galletas y snacks'),
('Knorr', 'Sopas y condimentos'),
('Natura', 'Productos de belleza y cuidado personal'),
('Fanta', 'Bebidas gaseosas'),
('Sprite', 'Bebidas gaseosas'),
('Monster', 'Bebidas energeticas'),
('Arizona', 'Te helados'),
('Pocky', 'Palitos de Chocolate'),
('Flips', 'Cereales'),
('Polar', 'Alimentos y bebidas'),
('Cheescake Factory', 'Tortas heladas'),
('Puig', 'Galletas'),
('Gatorade', 'Bebidas energeticas'),
('Ace', 'Productos de limpieza'),
('Oral B', 'Productos de higiene bucal'),
('InfoCesta', 'Productos alimenticios y de cuidado del hogar'),
('Hershey', 'Chocolates y golosinas'),
('Sneakers', 'Chocolates y golosinas'),
('La Pastoreña', 'Productos lacteos'),
('Quaker', 'Galletas y postres'),
('Nestle', 'Lacteos y chocolates'),
('Nescafe', 'Productos de Cafe'),
('Lipton', 'Te frios'),
('Font Vella', 'Agua potable'),
('Nivea', 'Productos de cuidado para la piel');

INSERT INTO Categoria (nombre, descripcion) VALUES
('Bebidas', 'Refrescos, aguas, jugos y bebidas alcoholicas'),
('Lacteos', 'Leche, yogures, quesos y derivados'),
('Carnes', 'Carnes frescas y procesadas'),
('Frutas y Verduras', 'Productos frescos de frutas y verduras'),
('Panaderia', 'Pan, bollos y productos de reposteria'),
('Snacks', 'Papas fritas, frutos secos y golosinas'),
('Congelados', 'Alimentos congelados y listos para cocinar'),
('Limpieza', 'Productos de limpieza para el hogar'),
('Cuidado Personal', 'Jabones, champus y productos de higiene'),
('Despensa', 'Arroz, pasta, legumbres y conservas'),
('Bebidas Alcoholicas', 'Cervezas, vinos y licores'),
('Mascotas', 'Alimentos y accesorios para mascotas'),
('Farmacia', 'Medicamentos y productos de salud'),
('Hogar', 'Utensilios y articulos para el hogar'),
('Electrodomesticos', 'Pequenos electrodomesticos'),
('Bebes', 'Panales, leches y productos para bebes'),
('Helados', 'Helados y postres congelados'),
('Cafe e Infusiones', 'Cafe, te y bebidas calientes'),
('Aceites y Vinagres', 'Aceites, vinagres y aderezos'),
('Especias y Condimentos', 'Especias, sal y condimentos'),
('Dulces y Chocolates', 'Chocolates, caramelos y dulces'),
('Conservas', 'Conservas de pescado, carne y vegetales'),
('Pastas Frescas', 'Pastas frescas y listas para cocinar'),
('Salsas y Aderezos', 'Salsas, mayonesas y ketchup'),
('Cereales', 'Cereales para el desayuno'),
('Galletas', 'Galletas dulces y saladas'),
('Enlatados', 'Productos enlatados y conservados'),
('Huevos', 'Huevos frescos y derivados'),
('Pescados y Mariscos', 'Pescados y mariscos frescos'),
('Comida Preparada', 'Platos preparados y listos para consumir'),
('Electronica', 'Productos electronicos que te facilitan la vida');

INSERT INTO Cargo (nombre, descripcion, salarioBasePorHora) VALUES
('Cajero', 'Atencion al cliente en caja y cobro de productos', 12.00),
('Reponedor', 'Encargado de reponer productos en estanterias', 10.00),
('Gerente de Tienda', 'Responsable de la gestion general del supermercado', 25.00),
('Auxiliar de Limpieza', 'Mantenimiento y limpieza de las instalaciones', 9.00),
('Encargado de Almacen', 'Gestiona el inventario y almacen de productos', 15.00),
('Carnicero', 'Preparacion y venta de productos carnicos', 14.00),
('Panadero', 'Elaboracion y venta de productos de panaderia', 13.00),
('Fruteria', 'Encargado de la seccion de frutas y verduras', 12.00),
('Seguridad', 'Vigilancia y control de acceso en el supermercado', 11.00),
('Atencion al Cliente', 'Resuelve dudas y quejas de los clientes', 12.00),
('Promotor', 'Encargado de promociones y degustaciones', 10.00),
('Operario de Montacargas', 'Maneja montacargas para mover mercancia', 13.00),
('Tecnico de Refrigeracion', 'Mantenimiento de equipos de refrigeracion', 16.00),
('Dependiente de Farmacia', 'Atencion en la seccion de farmacia', 14.00),
('Analista de Inventarios', 'Control y gestion de inventarios', 18.00);


-- #####################################################################################################################################

/*
    Main entities - Group 2
    These tables depend on the catalog tables from first group. 
    These are the pillars of our database
*/

INSERT INTO Estado (nombre, paisId) VALUES 
-- Mexico (id=1)
('Ciudad de Mexico', 1),
('Jalisco', 1),
('Nuevo Leon', 1),
('Puebla', 1),
('Veracruz', 1),

-- Estados Unidos (id=2)
('California', 2),
('Texas', 2),
('Nueva York', 2),
('Florida', 2),
('Illinois', 2),

-- Colombia (id=3)
('Bogota D.C.', 3),
('Antioquia', 3),
('Valle del Cauca', 3),
('Santander', 3),
('Cundinamarca', 3),

-- Argentina (id=4)
('Buenos Aires', 4),
('Cordoba', 4),
('Santa Fe', 4),
('Mendoza', 4),
('Tucuman', 4),

-- Venezuela (id=10)
('Distrito Capital', 10),
('Miranda', 10),
('Zulia', 10),
('Carabobo', 10),
('Lara', 10);

INSERT INTO Ciudad (nombre, estadoId) VALUES
-- Ciudad de Mexico (id=1)
('Ciudad de Mexico', 1),
('Iztapalapa', 1),
('Gustavo A. Madero', 1),

-- Jalisco (id=2)
('Guadalajara', 2),
('Zapopan', 2),
('Tlaquepaque', 2),

-- Nuevo Leon (id=3)
('Monterrey', 3),
('San Pedro Garza Garcia', 3),
('Guadalupe', 3),

-- Puebla (id=4)
('Puebla', 4),
('Tehuacan', 4),
('Cholula', 4),

-- Veracruz (id=5)
('Veracruz', 5),
('Xalapa', 5),
('Cordoba', 5),

-- California (id=6)
('Los Angeles', 6),
('San Francisco', 6),
('San Diego', 6),

-- Texas (id=7)
('Houston', 7),
('Dallas', 7),
('Austin', 7),

-- Nueva York (id=8)
('Nueva York', 8),
('Buffalo', 8),
('Rochester', 8),

-- Florida (id=9)
('Miami', 9),
('Orlando', 9),
('Tampa', 9),

-- Illinois (id=10)
('Chicago', 10),
('Springfield', 10),
('Peoria', 10),

-- Bogota D.C. (id=11)
('Bogota', 11),

-- Antioquia (id=12)
('Medellin', 12),
('Envigado', 12),
('Bello', 12),

-- Valle del Cauca (id=13)
('Cali', 13),
('Palmira', 13),
('Buenaventura', 13),

-- Santander (id=14)
('Bucaramanga', 14),
('Floridablanca', 14),
('Barrancabermeja', 14),

-- Cundinamarca (id=15)
('Soacha', 15),
('Girardot', 15),
('Facatativa', 15),

-- Buenos Aires (id=16)
('Buenos Aires', 16),
('La Plata', 16),
('Mar del Plata', 16),

-- Venezuela: Distrito Capital (id=21)
('Caracas', 21),

-- Venezuela: Miranda (id=22)
('Los Teques', 22),
('Petare', 22),

-- Venezuela: Zulia (id=23)
('Maracaibo', 23),

-- Venezuela: Distrito Capital (id=21)
('El Junquito', 21),

-- Venezuela: Miranda (id=22)
('Charallave', 22),
('Cua', 22),
('Guarenas', 22),

-- Venezuela: Zulia (id=23)
('Cabimas', 23),
('Santa Barbara del Zulia', 23),
('Ciudad Ojeda', 23),

-- Venezuela: Carabobo (id=24)
('San Joaquin', 24),
('Bejuma', 24),
('Tocuyito', 24),

-- Venezuela: Lara (id=25)
('Quibor', 25),
('El Tocuyo', 25),
('Carora', 25),
('Sanare', 25),
('Cubiro', 25);

INSERT INTO Sucursal (nombre, direccion, telefono, horaAbrir, horaCerrar, ciudadId) VALUES 
('Sucursal Ciudad de Mexico', 'Av. Reforma 100, Ciudad de Mexico', '+52-55-1234-0301', 7, 18, 1),
('Sucursal Iztapalapa', 'Calle Central 200, Iztapalapa', '+52-55-1204-2602', 8, 18, 2),
('Sucursal Gustavo A. Madero', 'Boulevard Norte 300, Gustavo A. Madero', '+52-55-1254-0573', 8, 18, 3),
('Sucursal Guadalajara', 'Av. Vallarta 400, Guadalajara', '+52-33-1214-2054', 9, 19, 4),
('Sucursal Zapopan', 'Calle Morelos 500, Zapopan', '+52-33-1474-6905', 8, 20, 5),
('Sucursal Tlaquepaque', 'Av. Juarez 600, Tlaquepaque', '+52-33-1434-0466', 8, 21, 6),
('Sucursal Monterrey', 'Av. Universidad 700, Monterrey', '+52-81-0007-0007', 7, 21, 7),
('Sucursal San Pedro Garza Garcia', 'Calle Loma Alta 800, San Pedro Garza Garcia', '+52-81-1212-4708', 8, 18, 8),
('Sucursal Guadalupe', 'Av. Benito Juarez 900, Guadalupe', '+52-81-1298-9009', 8, 18, 9),
('Sucursal Puebla', 'Calle Reforma 1000, Puebla', '+52-222-1221-0110', 8, 18, 10),
('Sucursal Tehuacan', 'Calle Hidalgo 1100, Tehuacan', '+52-222-4334-0011', 7, 20, 11),
('Sucursal Cholula', 'Av. Insurgentes 1200, Cholula', '+52-222-1287-8750', 7, 19, 12),
('Sucursal Veracruz', 'Calle Malecon 1300, Veracruz', '+52-229-3467-7013', 8, 19, 13),
('Sucursal Xalapa', 'Av. Independencia 1400, Xalapa', '+52-228-7091-1400', 8, 23, 14),
('Sucursal Cordoba', 'Calle 5 de Mayo 1500, Cordoba', '+52-271-1253-1570', 6, 18, 15),
('Sucursal Los Angeles', 'Sunset Blvd 1600, Los Angeles', '+1-213-3214-1616', 8, 18, 16),
('Sucursal San Francisco', 'Market St 1700, San Francisco', '+1-415-4861-0807', 8, 18, 17),
('Sucursal San Diego', 'Broadway 1800, San Diego', '+1-619-0759-1818', 7, 21, 18),
('Sucursal Houston', 'Main St 1900, Houston', '+1-713-4923-0010', 8, 18, 19),
('Sucursal Dallas', 'Elm St 2000, Dallas', '+1-214-9785-2025', 8, 19, 20),
('Sucursal Austin', 'Congress Ave 2100, Austin', '+1-512-1273-0945', 10, 23, 21),
('Sucursal Nueva York', '5th Ave 2200, Nueva York', '+1-212-5308-0022', 7, 22, 22),
('Sucursal Buffalo', 'Main St 2300, Buffalo', '+1-716-6109-7429', 8, 18, 23),
('Sucursal Rochester', 'State St 2400, Rochester', '+1-585-4454-2424', 8, 18, 24),
('Sucursal Miami', 'Ocean Dr 2500, Miami', '+1-305-3064-0205', 7, 20, 25),
('Sucursal Orlando', 'International Dr 2600, Orlando', '+1-407-3734-2426', 8, 19, 26),
('Sucursal Tampa', 'Bayshore Blvd 2700, Tampa', '+1-813-0528-2893', 8, 20, 27),
('Sucursal Chicago', 'Michigan Ave 2800, Chicago', '+1-312-4792-2428', 9, 18, 28),
('Sucursal Springfield', 'Capitol Ave 2900, Springfield', '+1-217-8403-0742', 7, 17, 29),
('Sucursal Peoria', 'Main St 3000, Peoria', '+1-309-2054-1001', 8, 18, 30),
('Sucursal Bogota', 'Cra 7 #16-00, Bogota', '+57-1-0281-1322', 9, 19, 31),
('Sucursal Medellin', 'Av. Poblado 1700, Medellin', '+57-4-2324-1473', 7, 17, 32),
('Sucursal Envigado', 'Calle 37 Sur #30-55, Envigado', '+57-4-3396-1035', 8, 18, 33),
('Sucursal Bello', 'Av. Bolivar 3400, Bello', '+57-4-0728-1503', 9, 19, 34),
('Sucursal Cali', 'Calle 5 #10-25, Cali', '+57-2-0435-1010', 7, 17, 35),
('Sucursal Palmira', 'Av. 19 #30-40, Palmira', '+57-2-5736-1537', 8, 18, 36),
('Sucursal Buenaventura', 'Calle 7 #2-15, Buenaventura', '+57-2-7337-1818', 9, 19, 37),
('Sucursal Bucaramanga', 'Av. Quebrada Seca 3800, Bucaramanga', '+57-7-0038-1079', 8, 18, 38),
('Sucursal Floridablanca', 'Calle 200 #35-90, Floridablanca', '+57-7-2739-1010', 7, 17, 39),
('Sucursal Barrancabermeja', 'Carrera 24 #51-17, Barrancabermeja', '+57-7-5740-1821', 9, 19, 40),
('Sucursal Soacha', 'Carrera 7 #20-30, Soacha', '+57-1-7841-1272', 8, 18, 41),
('Sucursal Girardot', 'Calle 15 #8-50, Girardot', '+57-1-8542-6313', 7, 17, 42),
('Sucursal Facatativa', 'Av. Principal #12-40, Facatativa', '+57-1-1843-1014', 9, 19, 43),
('Sucursal Buenos Aires', 'Av. 9 de Julio 1000, Buenos Aires', '+54-11-7344-0255', 8, 18, 44),
('Sucursal La Plata', 'Calle 13 #50-20, La Plata', '+54-221-0045-8316', 7, 17, 45),
('Sucursal Mar del Plata', 'Av. Independencia 1200, Mar del Plata', '+54-223-9246-3617', 9, 19, 46),
('Sucursal Caracas', 'Av. Urdaneta 500, Caracas', '+58-212-0347-8918', 8, 18, 47),
('Sucursal Los Teques', 'Calle Miranda 600, Los Teques', '+58-212-0048-1019', 7, 17, 48),
('Sucursal Petare', 'Av. Principal 700, Petare', '+58-212-2549-1720', 9, 19, 49),
('Sucursal Maracaibo', 'Av. 5 de Julio 800, Maracaibo', '+58-261-6750-2861', 8, 18, 50),
('Sucursal El Junquito', 'Av. Principal 100, El Junquito', '+58-212-9451-1022', 7, 17, 51),
('Sucursal Charallave', 'Calle Bolivar 200, Charallave', '+58-212-0519-2463', 9, 19, 52),
('Sucursal Cua', 'Av. Miranda 300, Cua', '+58-212-9453-0725', 8, 18, 53),
('Sucursal Guarenas', 'Calle Sucre 400, Guarenas', '+58-212-0946-0652', 7, 17, 54),
('Sucursal Cabimas', 'Av. 32 500, Cabimas', '+58-261-2655-1326', 9, 19, 55),
('Sucursal Santa Barbara del Zulia', 'Calle Urdaneta 600, Santa Barbara del Zulia', '+58-261-0686-1023', 8, 18, 56),
('Sucursal Ciudad Ojeda', 'Av. 41 700, Ciudad Ojeda', '+58-261-1957-8228', 7, 17, 57),
('Sucursal San Joaquin', 'Calle Libertador 800, San Joaquin', '+58-241-7358-2629', 9, 19, 58),
('Sucursal Bejuma', 'Av. Venezuela 900, Bejuma', '+58-241-9559-1235', 8, 18, 59),
('Sucursal Tocuyito', 'Calle Sucre 1000, Tocuyito', '+58-241-8560-2074', 7, 17, 60),
('Sucursal Quibor', 'Av. Lara 1100, Quibor', '+58-253-2761-6744', 9, 19, 61),
('Sucursal El Tocuyo', 'Calle Bolivar 1200, El Tocuyo', '+58-253-7862-1363', 8, 18, 62),
('Sucursal Carora', 'Av. Miranda 1300, Carora', '+58-253-9763-6434', 7, 17, 63),
('Sucursal Sanare', 'Calle 23 1400, Sanare', '+58-253-9606-1620', 9, 19, 64),
('Sucursal Cubiro', 'Av. Urdaneta 1500, Cubiro', '+58-253-0065-1036', 8, 18, 65);

INSERT INTO Empleado (CI, nombre, apellido, sexo, direccionCorta, cargoId, empleadoSupervisorId, sucursalId, fechaContrato, bonoFijoMensual, horaInicio, horaFin, cantidadDiasTrabajoPorSemana) VALUES
-- Gerente de Tienda
(6012345, 'Carlos', 'Perez', 'M', 'Av. Urdaneta', 3, NULL, 47, '2015-06-01', 500.00, 9, 17, 6),

-- Cajero
(7123456, 'Ana', 'Gomez', 'F', 'Av. Libertador', 1, 1, 1, '2018-04-10', 120.00, 9, 18, 5),
(28356789, 'Hugo', 'Rios', 'M', 'Av. Boyaca', 1, 2, 2, '2019-07-15', 115.00, 10, 19, 5),
(34912345, 'Rodrigo', 'Cruz', 'M', 'Av. Los Proceres', 1, 2, 3, '2020-09-23', 110.00, 8, 17, 5),

-- Atencion al Cliente
(8345678, 'Luis', 'Rodriguez', 'M', 'Av. Sucre', 10, 1, 1, '2017-03-05', 140.00, 10, 19, 6),
(6739745, 'Rosa', 'Melano', 'F', 'Av. Chacao', 10, 1, 2, '2018-11-20', 135.00, 9, 18, 5),

-- Encargado de Almacen
(9456789, 'Maria', 'Lopez', 'F', 'Av. Bolivar', 5, 1, 1, '2016-01-10', 200.00, 7, 16, 6),
(21689012, 'David', 'Guzman', 'M', 'Av. Romulo Gallegos', 5, 3, 2, '2019-08-01', 195.00, 8, 17, 6),

-- Auxiliar de Limpieza
(10567890, 'Jose', 'Fernandez', 'M', 'Av. Andres Bello', 4, 1, 1, '2021-05-12', 100.00, 8, 16, 5),
(15123456, 'Rosa', 'Castro', 'F', 'Av. Victoria', 4, 1, 2, '2022-02-17', 98.00, 9, 17, 5),
(23801234, 'Oscar', 'Navarro', 'M', 'Av. San Martin', 4, 4, 3, '2020-10-30', 95.00, 7, 15, 5),

-- Reponedor
(11678901, 'Carmen', 'Diaz', 'F', 'Av. Lecuna', 2, 1, 1, '2019-06-15', 130.00, 8, 16, 5),
(22790123, 'Sofia', 'Vega', 'F', 'Av. La Paz', 2, 5, 2, '2020-01-29', 125.00, 9, 17, 5),
(35123456, 'Silvia', 'Perdomo', 'F', 'Av. Los Ruices', 2, 17, 3, '2018-12-11', 120.00, 9, 17, 5),

-- Carnicero
(12789012, 'Miguel', 'Torres', 'M', 'Av. Fuerzas Armadas', 6, 1, 1, '2017-05-06', 180.00, 7, 15, 6),
(24912345, 'Daniel', 'Ortega', 'M', 'Av. Solano', 6, 6, 6, '2019-03-10', 175.00, 7, 15, 6),
(36134567, 'Javier', 'Bermudez', 'M', 'Av. Andres Mata', 6, 19, 6, '2021-06-22', 170.00, 6, 14, 6),

-- Panadero
(13890123, 'Sandra', 'Ramirez', 'F', 'Av. Casanova', 7, 1, 1, '2018-09-22', 170.00, 6, 14, 6),
(25123456, 'Elena', 'Cortez', 'F', 'Av. Nueva Granada', 7, 7, 7, '2020-08-15', 165.00, 7, 15, 6),
(37245678, 'Gabriela', 'Espinoza', 'F', 'Av. El Rosal', 7, 20, 7, '2022-02-01', 160.00, 7, 15, 6),

-- Fruteria
(14901234, 'Pedro', 'Jimenez', 'M', 'Av. Baralt', 8, 1, 4, '2019-05-10', 140.00, 8, 16, 5),
(26134567, 'Roberto', 'Blanco', 'M', 'Av. Humboldt', 8, 8, 5, '2020-07-15', 135.00, 9, 17, 5),
(38356789, 'Inosuke', 'Hashibira', 'M', 'Av. San Bernardino', 8, 21, 6, '2021-09-20', 130.00, 8, 16, 5),

-- Seguridad
(16134567, 'Andres', 'Mendoza', 'M', 'Av. La Salle', 9, 1, 7, '2016-07-15', 200.00, 14, 22, 5),
(27245678, 'Laura', 'Salazar', 'F', 'Av. Caracas', 9, 9, 8, '2019-05-01', 195.00, 15, 23, 5),
(39467890, 'Teresa', 'Velasquez', 'F', 'Av. La Florida', 9, 22, 9, '2021-09-12', 190.00, 14, 22, 5),

-- Promotor
(17245678, 'Julian', 'Vargas', 'M', 'Av. Universidad', 11, 1, 10, '2021-03-10', 125.00, 9, 17, 5),
(29467890, 'Fernanda', 'Leon', 'F', 'Av. Rio de Janeiro', 11, 14, 11, '2022-06-05', 120.00, 9, 17, 5),

-- Operario de Montacargas
(18356789, 'Paola', 'Paredes', 'F', 'Av. Cedeño', 12, 1, 12, '2022-06-22', 160.00, 8, 16, 5),
(30578901, 'Gustavo', 'Delgado', 'M', 'Av. La Estancia', 12, 11, 13, '2018-03-19', 155.00, 8, 16, 5),
(41689012, 'Valeria', 'Rosales', 'F', 'Av. Los Chaguaramos', 12, 24, 14, '2019-11-12', 150.00, 9, 17, 5),

-- Tecnico de Refrigeracion
(19467890, 'Victor', 'Serrano', 'M', 'Av. Francisco de Miranda', 13, 1, 15, '2015-04-18', 250.00, 8, 16, 5),
(31689012, 'Patricia', 'Mora', 'F', 'Av. Intercomunal', 13, 12, 16, '2021-02-14', 240.00, 9, 17, 5),
(42790123, 'Tanjiro', 'Kamado', 'M', 'Av. La Castellana', 13, 25, 17, '2023-01-10', 230.00, 9, 17, 5),

-- Dependiente de Farmacia
(20578901, 'Natalia', 'Moreno', 'F', 'Av. Los Ilustres', 14, 1, 18, '2019-08-14', 145.00, 8, 16, 5),
(32790123, 'Felipe', 'Meza', 'M', 'Av. Principal de Las Mercedes', 14, 13, 19, '2020-06-30', 140.00, 9, 17, 5),
(43801234, 'Raquel', 'Montilla', 'F', 'Av. Altamira', 14, 26, 20, '2022-05-01', 135.00, 8, 16, 5),

-- Analista de Inventarios
(33801234, 'Lucia', 'Campos', 'F', 'Av. Romulo Betancourt', 15, 15, 21, '2018-02-05', 190.00, 9, 17, 5),
(44912345, 'Alejandro', 'Suarez', 'M', 'Av. Santa Eduvigis', 15, 27, 22, '2017-09-10', 185.00, 9, 17, 5),
(45123456, 'Mariana', 'Gimenez', 'F', 'Av. La California', 15, 28, 23, '2019-12-05', 180.00, 8, 16, 5);

INSERT INTO Proveedor (RIF, nombre, contacto, telefono, correo, ciudadId) VALUES 
('J-13480375-9', 'Distribuidora Black Star', 'Carlos Perez', '+58-212-555-3684', 'OficialBlack@Star.com', 47),
('J-89627311-0', 'Alimentos del Norte', 'Maria Gonzalez', '+57-4-678-7294', 'ventas@alimentosDelNort.com', 32),
('J-73296424-5', 'DryOut SA', 'Nezuko Kamado', '+52-55-3344-5566', 'info@DryOut.com', 1),
('J-39657923-4', 'Soplandous Bistec', 'Koccho Shinobu', '+54-11-4465-6284', 'Bistec@Soplandous.com', 44),
('J-64288343-6', 'Lacteos El Andino', 'Samuel Sanchez', '+58-261-535-0276', 'ventas@ElAndinoLacteos.com', 50),
('J-49207025-9', 'Los Panes del  Portu', 'Christian Rolando', '+57-1-789-4561', 'contactoPanes@ElPortu.com', 31),
('J-92648325-7', 'Importadora Los Valles', 'Miguel Herrera', '+58-212-303-1022', 'ventas@importlosValles.com', 48),
('J-66823646-1', 'Willy Wonka C.A', 'Umpa Lumpa', '+1-713-987-6246', 'info@WonkaLumpa.com', 19),
('J-87329423-2', 'Paramo Cafe', 'Diego Rios', '+57-7-301-9974', 'ventasCafe@Paramo.com', 38),
('J-77867600-3', '記憶 Salud', 'Son-Jinwuu', '+1-305-123-0268', 'infoSalud@記憶.com', 25),
('J-82379435-0', 'All Stars Distribuidores', 'James Rodrigues', '+52-33-4936-7788', 'ventas@AllStars.com', 4),
('J-56803653-2', 'Tuty Fruty de Oriente', 'Ana Beltran', '+57-2-624-7790', 'FrutasInfo@TutyFruty.com', 35),
('J-91803522-5', 'Los Llanos del Norte', 'Pedro Suarez', '+58-212-765-6391', 'ventas@Nortllanos.com', 49),
('J-74883160-7', 'Fabulous Steak', 'Ascencio Rodriguez', '+54-221-987-6183', 'contacto@FabulousSteak.com', 45),
('J-37464229-3', 'Lacteos Von-Tinson C.A', 'Oliver Ramus', '+57-7-432-8233', 'info@Von-Tinson.com', 40),
('J-68470911-6', 'Panaderia Arsenal', 'Claudia Rivera', '+1-415-321-0326', 'ventas@PanArsenal.com', 17),
('J-45559698-8', 'Verduras vs Zombies', 'Dave Plantinus', '+57-1-890-8266', 'VvsZ@VerdurasZ.com', 42),
('J-77867231-9', 'Carne ZZZ C.A', 'Daniela Ponce', '+1-407-567-8901', 'info@ZZZCarnes.com', 26),
('J-10627584-4', 'Shadow Energy', 'Scarlet Igrit', '+57-4-234-9026', 'ventas@ShadowEnergy.com', 33),
('J-98912367-0', 'Gomitas ReZero', 'Emilia Snow', '+1-212-789-8245', 'infoGomy@ReZero.com', 22),
('J-29684655-1', 'Carnes El Rey de España', 'Sergio Lopez', '+58-261-987-6129', 'infoCarnes@ElRey.com', 50),
('J-59258674-3', 'Pescados y Mariscos El Escoces', 'Vladimir Villanueva', '+57-2-678-6334', 'Mariscos@ElEscoces.com', 37),
('J-76239043-6', 'Distribuidora Yuki', 'Yuuki Velasquez', '+54-11-890-5660', 'Distribuidora@Yuki.com', 44),
('J-38725943-2', 'Monster Distribution', 'Vi Ramirez', '+1-713-567-8173', 'Distribution@Monster.com', 19),
('J-60792325-5', 'Verduras del Sur', 'Gabriela Torres', '+57-7-543-8235', 'ventas@verdurassur.com', 38),
('J-42547009-7', 'Panaderia La Traicion', 'Nathalia Gomez', '+1-619-678-5810', 'contacto@panestraicion.com', 18),
('J-75469024-8', 'Galletas Del Alba', 'Sebastian Stacchioti', '+1-312-406-8890', 'galletasinfo@ElAlba.com', 28),
('J-10816477-9', 'Osaka Cafe ', 'Tomioka Giyu', '+57-4-345-6304', 'ventas@OsakaCafe.com', 32),
('J-96258912-0', 'MedicKuroi', 'Valeria Suarez', '+1-305-709-8230', 'info@medicKuroi.com', 25),
('J-96289345-1', 'Dental Healthy', 'Arthur Maguaier', '+1-214-234-9172', 'dental@healthy.com', 20),
('J-33427805-2', 'Marineria de Zaun', 'Silco Mendoza', '+58-212-543-9384', 'info@MarZaun.com', 48),
('J-97182344-4', 'Distribuidora Reach', 'Jhonson Ramirez', '+57-1-432-7239', 'contacto@distReach.com', 41),
('J-28954988-5', 'Almacenes Mayoristas Doofenshmirtz', 'Heinz Doofenshmirtz', '+54-11-353-7890', 'almacentral@Doofenshmirtz.com', 45),
('J-61928232-7', 'Verduras de la Evolucion', 'Viktor Piltover', '+1-713-345-6789', 'verduras@LaEvolucion.com', 19),
('J-47289443-9', 'Importaciones Hermanos Samurai', 'Daniela Lopez', '+57-2-577-4901', 'importaciones@samuraisbros.com', 35),
('J-18728234-0', 'Golocinas Midori and Momoi', 'Midori Ichikawa', '+1-619-846-8723', 'golocinas@midoriandmomoi.com', 18),
('J-57833923-1', 'Productos de Belleza Demacia', 'Lux Paredes', '+1-312-224-5528', 'info@bellezaDemacia.com', 28),
('J-78943922-3', 'Hokkaido Te', 'Kaminari Nagumo', '+57-4-690-2035', 'ventas@HokkaidoTe.com', 33),
('J-63937234-4', 'SAO Express', 'Kirigaya Nazuto ', '+1-305-719-9471', 'info@SAOexpress.com', 25),
('J-68289847-6', 'Distribuidora Eigthy-Six', 'Shuga Raiden', '+1-214-436-0974', 'ventas@dist86.com', 20);

INSERT INTO Producto (nombre, codigoBarra, descripcion, tipoPrecio, precioPor, esExentoIVA, categoriaId, marcaId) VALUES
('Coca-Cola', '1234567890123', 'Refresco carbonatado sabor cola', 'PorUnidad', 1.50000, FALSE, 1, 1),
('Pepsi', '1234567890124', 'Refresco sabor cola', 'PorUnidad', 1.450000, FALSE, 1, 2),
('Leche Condensada La Serenisima', '1234567890125', 'Leche condensada ideal para postres', 'PorUnidad', 2.20000, TRUE, 2, 12),
('Yogur Danone', '1234567890126', 'Yogur natural con sabor a frutas 150g', 'PorUnidad', 1.800000, FALSE, 2, 6),
('Harina Molinos', '1234567890127', 'Harina de trigo para reposteriia', 'PorUnidad', 0.950000, FALSE, 3, 15),
('Sopa Knorr', '1234567890128', 'Sopa en sobre sabor pollo', 'PorPesoKg', 3.500000, FALSE, 10, 17),
('Papas Fritas Lays', '1234567890129', 'Papas fritas en bolsa de 150g', 'PorUnidad', 2.000000, FALSE, 6, 10),
('Pan Bimbo', '1234567890130', 'Pan de molde de 400g', 'PorUnidad', 1.200000, FALSE, 5, 11),
('Cerveza Quilmes', '1234567890131', 'Cerveza lager de 330ml', 'PorUnidad', 1.800000, TRUE, 11, 13),
('Te Lipton en Bolsa', '1234567890132', 'Te en bolsa sabor limon', 'PorUnidad', 0.750000, TRUE, 18, 38),
('Aceite Natura', '1234567890133', 'Aceite vegetal para cocina', 'PorUnidad', 4.000000, TRUE, 19, 18),
('Galletas Oreo', '1234567890134', 'Galletas de chocolate rellenas de crema', 'PorUnidad', 1.000000, FALSE, 26, 32),
('Mayonesa tomatox', '1234567890135', 'Mayonesa cremosita para sandwiches 300g', 'PorUnidad', 1.600000, FALSE, 4, 7),
('Cerveza Polar', '1234567890136', 'Cerveza tipo lager', 'PorUnidad', 1.700000, TRUE, 11, 25),
('Jugo Natural Del Valle', '1234567890137', 'Jugo 100% natural de naranja', 'PorUnidad', 2.500000, FALSE, 1, 3),
('Gatorade', '1234567890138', 'Bebida isotoonica sabor limon', 'PorUnidad', 1.250000, TRUE, 6, 28),
('Chocolate Hershey’s', '1234567890139', 'Barra de chocolate con leche', 'PorUnidad', 1.800000, FALSE, 21, 32),
('Arroz Molinos', '1234567890140', 'Arroz de grano largo', 'PorUnidad', 2.100000, FALSE, 10, 15),
('Pasta La Moderna', '1234567890141', 'Pasta de trigo 100% natural', 'PorUnidad', 1.500000, FALSE, 23, 35),
('Gelatina Royal', '1234567890142', 'Gelatina en polvo sabor frutilla', 'PorUnidad', 2.700000, FALSE, 10, 14),
('Te Arizona', '1234567890143', 'Te helado sabor durazno', 'PorUnidad', 2.000000, TRUE, 18, 22),
('Vino Tinto Malbec', '1234567890144', 'Vino argentino tipo Malbec, 500ml', 'PorUnidad', 5.000000, TRUE, 11, 24),
('Cereal Quaker', '1234567890145', 'Cereal de avena para el desayuno', 'PorUnidad', 3.200000, FALSE, 25, 35),
('Leche en Polvo Nido', '1234567890146', 'Leche en polvo ideal para bebees', 'PorUnidad', 4.500000, FALSE, 16, 3),
('Galletas Tuc', '1234567890147', 'Galletas saladas para acompañar', 'PorUnidad', 1.000000, FALSE, 26, 27),
('Pescado Fresco', '1234567890148', 'Filetes de pescado fresco', 'PorPesoKg', 7.000000, TRUE, 29, 30),
('Fruta Fresca', '1234567890149', 'Manzanas y naranjas frescas', 'PorPesoKg', 3.000000, FALSE, 4, 30),
('Aceite de Oliva', '1234567890150', 'Aceite de oliva extra virgen', 'PorUnidad', 6.50000, TRUE, 19, 25),
('Refresco Sprite', '1234567890151', 'Refresco sabor limon 500ml', 'PorUnidad', 1.600000, FALSE, 1, 20),
('Helado Mantecol', '1234567890152', 'Helado de dulce de leche', 'PorUnidad', 3.500000, FALSE, 17, 26),
('Refresco Sprite', '7894900010039', 'Bebida gaseosa Sprite de 1 L', 'PorUnidad', 5.900, FALSE, 1, 20),
('Monster Energy', '7894900010046', 'Bebida energetica Monster de 350 ml', 'PorUnidad', 2.000, TRUE, 1, 21),
('Gatorade Naranja', '7894900010053', 'Bebida hidratante Gatorade sabor naranja', 'PorUnidad', 1.800, FALSE, 1, 28),
('Leche Entera La Serenisima', '7894900010060', 'Leche entera en envase de 1 litro', 'PorUnidad', 1.200, FALSE, 2, 12),
('Yogur Natural Danone', '7894900010077', 'Yogur natural sin azucar en pote de 250g', 'PorUnidad', 1.000, FALSE, 2, 6),
('Queso Crema Nestle', '7894900010084', 'Queso crema untable Nestle', 'PorUnidad', 3.500, FALSE, 2, 36),
('Manteca La Serenisima', '7894900010091', 'Manteca tradicional en barra de 200g', 'PorUnidad', 2.100, FALSE, 2, 12),
('Helado de Chocolate Cheescake Factory', '7894900010107', 'Helado premium sabor chocolate', 'PorUnidad', 5.000, FALSE, 17, 26),
('Carne Molida de Res', '7894900010114', 'Carne molida de res fresca', 'PorPesoKg', 7.500, TRUE, 3, 25),
('Pechuga de Pollo', '7894900010121', 'Pechuga de pollo fresca sin piel', 'PorPesoKg', 6.800, TRUE, 3, 25),
('Chuletas de Cerdo', '7894900010138', 'Chuletas de cerdo con hueso', 'PorPesoKg', 6.500, TRUE, 3, 25),
('Salchichas Viena Arcor', '7894900010145', 'Salchichas tipo Viena en empaque de 500g', 'PorUnidad', 3.200, TRUE, 3, 14),
('Hamburguesas de Res Molinos', '7894900010152', 'Empaque de 4 hamburguesas de res', 'PorUnidad', 4.000, TRUE, 3, 15),
('Bebida Energetica Red Bull', '1234567890166', 'Bebida energetica en lata', 'PorUnidad', 2.500000, TRUE, 6, 21),
('Refresco Fanta', '1234567890167', 'Refresco sabor naranja', 'PorUnidad', 1.800000, FALSE, 1, 19),
('Aceite de Oliva Borges', '1234567890168', 'Aceite de oliva extra virgen', 'PorUnidad', 7.00000, TRUE, 19, 25),
('Mantequilla La Serenisima', '1234567890169', 'Mantequilla 250g', 'PorUnidad', 2.100000, FALSE, 2, 12),
('Jugo Naranja Del Valle', '1234567890170', 'Jugo natural de naranja 1L', 'PorUnidad', 3.500000, FALSE, 1, 3),
('Manteca de Cerdo', '1234567890171', 'Manteca de cerdo 500g', 'PorUnidad', 1.800000, FALSE, 5, 30),
('Queso Crema Philadelphia', '1234567890172', 'Queso crema 200g', 'PorUnidad', 3.000000, FALSE, 2, 12),
('Bebida de Soja Silk', '1234567890173', 'Bebida de soja 1L', 'PorUnidad', 2.800000, FALSE, 2, 18),
('Salsas de Tomate tomatox', '1234567890174', 'Salsa ketchup 300g', 'PorUnidad', 1.300000, FALSE, 7, 7),
('Cereal Kellogg’s Corn Flakes', '1234567890175', 'Cereal de maiz 500g', 'PorUnidad', 2.700000, FALSE, 25, 5),
('Papas Fritas Lays', '1234567890176', 'Papas fritas de 200g', 'PorUnidad', 2.40000, FALSE, 6, 10),
('Sopa Knorr picante', '1234567890177', 'Sopa instantanea sabor crema de pollo picante', 'PorUnidad', 4.900000, FALSE, 10, 17),
('Te Helado de Durazno Lipton', '1234567890178', 'Te helado sabor durazno 500ml', 'PorUnidad', 2.200000, FALSE, 18, 38),
('Bebida Isotonica Gatorade', '1234567890179', 'Bebida isotonica sabor manzana', 'PorUnidad', 2.000000, TRUE, 6, 28),
('Refresco Sprite', '1234567890180', 'Refresco sabor limon 500ml', 'PorUnidad', 1.400000, FALSE, 1, 20),
('Pasta Matarazzo', '1234567890181', 'Pasta de spaghetti 500g', 'PorUnidad', 1.00000, FALSE, 23, 3),
('Galletas Chocotorta', '1234567890182', 'Galletas de chocolate para postres', 'PorUnidad', 1.30000, FALSE, 26, 32),
('Cerveza Heineken', '1234567890153', 'Cerveza premium de 330ml', 'PorUnidad', 2.20000, TRUE, 11, 13),
('Papas Fritas Pringles', '1234567890154', 'Papas fritas en tubo de 150g', 'PorUnidad', 2.30000, FALSE, 6, 10),
('Yogur Activia', '1234567890155', 'Yogur probiotico sabor natural', 'PorUnidad', 2.500000, FALSE, 2, 6),
('Manteca Clarasol', '1234567890156', 'Manteca para reposteria 500g', 'PorUnidad', 1.800000, FALSE, 5, 30),
('Leche UHT La Serenisima', '1234567890157', 'Leche UHT entera en caja', 'PorUnidad', 1.400000, TRUE, 2, 12),
('Aceite de Girasol', '1234567890158', 'Aceite de girasol 1L', 'PorUnidad', 3.100000, TRUE, 19, 18),
('Pan Integral Bimbo', '1234567890159', 'Pan integral para sandwich', 'PorUnidad', 1.900000, TRUE, 5, 11),
('Sopa Maruchan', '1234567890160', 'Sopa instantanea sabor pollo', 'PorUnidad', 0.700000, FALSE, 10, 17),
('Cereal Special K', '1234567890161', 'Cereal integral con frutas', 'PorUnidad', 3.500000, FALSE, 25, 35),
('Mermelada Dulce de Leche', '1234567890162', 'Mermelada dulce de leche 500g', 'PorUnidad', 2.000000, FALSE, 5, 15),
('Chocolinas', '1234567890163', 'Galletas de chocolate', 'PorUnidad', 1.200000, FALSE, 26, 32),
('Mayonesa Hellmann’s Light', '1234567890164', 'Mayonesa cremosita para sandwiches ligera', 'PorUnidad', 2.500000, FALSE, 4, 7),
('Cerveza Budweiser', '1234567890165', 'Cerveza lager de 330ml', 'PorUnidad', 2.200000, FALSE, 11, 13),
('Queso Parmesano', '1234567890187', 'Queso parmesano rallado 200g', 'PorUnidad', 4.500000, FALSE, 2, 12),
('Papel Higienico Scott', '1234567890188', 'Papel higienico de 12 rollos', 'PorUnidad', 3.800000, FALSE, 8, 9),
('Mayonesa Kraft', '1234567890189', 'Mayonesa cremosita de 500g', 'PorUnidad', 2.200000, FALSE, 4, 7),
('Pizza Frozen Sbarro', '1234567890190', 'Pizza congelada de pepperoni', 'PorUnidad', 5.800000, FALSE, 7, 15),
('Cereal Chocapic', '1234567890191', 'Cereal de chocolate para desayuno', 'PorUnidad', 2.500000, FALSE, 25, 5),
('Pasta Penne Rigate', '1234567890192', 'Pasta de forma tubular, 500g', 'PorUnidad', 1.600000, TRUE, 23, 3),
('Aceite de Coco', '1234567890193', 'Aceite de coco virgen extra 500ml', 'PorUnidad', 5.000001, TRUE, 19, 25),
('Te Verde Lipton', '1234567890194', 'Te verde en bolsas 20 unidades', 'PorUnidad', 2.300000, FALSE, 18, 38),
('Arroz Gallo', '1234567890195', 'Arroz largo fino, 1kg', 'PorUnidad', 1.100000, TRUE, 10, 35),
('Mermelada de Durazno', '1234567890196', 'Mermelada de durazno 350g', 'PorUnidad', 1.800000, FALSE, 5, 31),
('Chocolate en barra Nestle', '1234567890197', 'Chocolate con leche, barra 150g', 'PorUnidad', 2.200000, FALSE, 21, 3),
('Alitas de Pollo Congeladas', '1234567890198', 'Alitas de pollo congeladas 1kg', 'PorPesoKg', 7.500000, TRUE, 3, 30),
('Galletas Digestive', '1234567890199', 'Galletas integrales de avena', 'PorUnidad', 1.400000, FALSE, 26, 32),
('Cerveza Corona', '1234567890200', 'Cerveza Corona de 330ml', 'PorUnidad', 2.700000, FALSE, 11, 13),
('Jabon Liquido Dove', '1234567890201', 'Jabon liquido para el cuerpo', 'PorUnidad', 3.000000, FALSE, 9, 18),
('Conservas de Atun', '1234567890202', 'Atun en conserva, 200g', 'PorUnidad', 2.200000, TRUE, 22, 7),
('Salsa de Soja Kikkoman', '1234567890203', 'Salsa de soja japonesa, 250ml', 'PorUnidad', 2.600000, FALSE, 10, 7),
('Huevo Fresco', '1234567890204', 'Huevo fresco, docena', 'PorUnidad', 2.000000, TRUE, 28, 12),
('Aceite de Canola', '1234567890205', 'Aceite de canola 1L', 'PorUnidad', 4.000000, TRUE, 19, 18),
('Fideos Instantaneos Nissin', '1234567890206', 'Fideos instantaneos 85g', 'PorUnidad', 4.800000, FALSE, 10, 17),
('Yogur Natural Yoka', '1234567890207', 'Yogur natural sin azucar', 'PorUnidad', 1.800000, FALSE, 2, 25),
('Barras de Cereal Quaker', '1234567890208', 'Barras de cereal de avena', 'PorUnidad', 1.500000, FALSE, 25, 35),
('Galletas de Vainilla', '1234567890209', 'Galletas rellenas de crema vainilla', 'PorUnidad', 1.200000, FALSE, 26, 32),
('Cafe Nescafe', '1234567890210', 'Cafe instantaneo en polvo 100g', 'PorUnidad', 3.500000, FALSE, 18, 36),
('Tortillas de Maiz', '1234567890211', 'Tortillas de maiz 1kg', 'PorUnidad', 2.000000, TRUE, 23, 3),
('Salsa Barbacoa tomatox', '1234567890212', 'Salsa barbacoa para carnes 500g', 'PorUnidad', 2.200000, FALSE, 7, 7),
('Galletas Oreo Waffer', '1234567890183', 'Galletas rellenas de crema sabor vainilla', 'PorUnidad', 1.500000, FALSE, 26, 32),
('Vino Tinto Malbec', '1234567890184', 'Vino tinto argentino, 750ml', 'PorUnidad', 8.500001, FALSE, 11, 13),
('Agua Mineral Evian', '1234567890185', 'Agua mineral natural 1.5L', 'PorUnidad', 3.200001, TRUE, 1, 39),
('Jugo de Manzana Minute Maid', '1234567890186', 'Jugo 100% natural de manzana', 'PorUnidad', 2.000000, TRUE, 1, 3),
('Cerveza Polarcita', '1234567890217', 'Cerveza lager 330ml', 'PorUnidad', 2.900000, FALSE, 11, 25),
('Queso Gouda en Lonchas', '1234567890218', 'Queso gouda en lonchas 200g', 'PorUnidad', 4.000000, FALSE, 2, 12),
('Harina de Trigo Blancaflor', '1234567890219', 'Harina de trigo para reposteria 1kg', 'PorUnidad', 1.900000, TRUE, 10, 15),
('Papas Fritas Lays Clasicas', '1234567890220', 'Papas fritas sabor original 100g', 'PorUnidad', 1.700000, FALSE, 6, 10),
('Sopa Instantanea Knorr Maiz', '1234567890221', 'Sopa de maiz deshidratada', 'PorUnidad', 1.200000, FALSE, 24, 17),
('Manteca de Mani Skippy', '1234567890222', 'Crema de mani 450g', 'PorUnidad', 3.500000, FALSE, 21, 15),
('Galletas Chips Ahoy', '1234567890223', 'Galletas con chispas de chocolate', 'PorUnidad', 2.000000, FALSE, 26, 16),
('Atun en Aceite Gomes Da Costa', '1234567890224', 'Atun enlatado en aceite 170g', 'PorUnidad', 2.500000, TRUE, 22, 7),
('Miel Organica', '1234567890225', 'Miel pura 500g', 'PorUnidad', 5.200000, TRUE, 10, 3),
('Te Chai Masala', '1234567890226', 'Infusion de especias y te negro', 'PorUnidad', 3.000000, FALSE, 18, 38),
('Pan de Molde Bimbo', '1234567890227', 'Pan de molde blanco', 'PorUnidad', 2.800000, TRUE, 5, 11),
('Cafe en Granos Starbucks', '1234567890228', 'Cafe en granos 250g', 'PorUnidad', 7.500000, FALSE, 18, 37),
('Pechuga de Pollo Fresca', '1234567890229', 'Pechuga de pollo sin piel 1kg', 'PorPesoKg', 5.900000, TRUE, 3, 30),
('Salsa de Tomate tomatox', '1234567890230', 'Salsa de tomate tradicional 500g', 'PorUnidad', 2.100000, FALSE, 24, 7),
('Lentejas Secas', '1234567890231', 'Lentejas secas en bolsa 500g', 'PorUnidad', 1.400000, TRUE, 10, 15),
('Cereal de Avena Quaker', '1234567890232', 'Cereal de avena tradicional', 'PorUnidad', 2.000000, TRUE, 25, 35),
('Vino Blanco Chardonnay', '1234567890233', 'Vino blanco seco 750ml', 'PorUnidad', 9.500001, FALSE, 11, 13),
('Detergente Liquido Ariel', '1234567890234', 'Detergente liquido para ropa 1L', 'PorUnidad', 5.000000, FALSE, 8, 9),
('Chocolate Hershey’s Almendras', '1234567890235', 'Chocolate con leche y almendras', 'PorUnidad', 2.800000, FALSE, 21, 32),
('Galletas Maria Puig', '1234567890236', 'Galletas dulces clasicas', 'PorUnidad', 1.300000, FALSE, 26, 27),
('Pescado Congelado Merluza', '1234567890237', 'Filete de merluza 1kg', 'PorPesoKg', 6.500000, TRUE, 29, 30),
('Crema de Leche Nestle', '1234567890238', 'Crema de leche para cocinar', 'PorUnidad', 2.700000, FALSE, 2, 3),
('Mayonesa Hellmann’s', '1234567890239', 'Mayonesa clasica 500g', 'PorUnidad', 2.300000, FALSE, 24, 4),
('Gaseosa Sprite', '1234567890240', 'Bebida gaseosa de lata lima-limon 350ml', 'PorUnidad', 1.500000, FALSE, 1, 20),
('Shampoo Pantene', '1234567890241', 'Shampoo hidratante para cabello', 'PorUnidad', 4.500000, FALSE, 9, 9),
('Helado de Vainilla', '1234567890242', 'Helado de vainilla tradicional 500ml', 'PorUnidad', 5.500000, FALSE, 17, 26),
('Tostadas Integrales', '1234567890243', 'Tostadas de pan integral', 'PorUnidad', 2.000000, TRUE, 5, 11),
('Azucar Blanca', '1234567890244', 'Azucar refinada 1kg', 'PorUnidad', 1.800000, TRUE, 10, 15),
('Mermelada de Frutilla', '1234567890245', 'Mermelada natural de frutilla 350g', 'PorUnidad', 2.100000, FALSE, 5, 14),
('Sal Marina', '1234567890246', 'Sal marina sin refinar 1kg', 'PorUnidad', 2.400000, TRUE, 20, 15),
('Galletas de Chocolate y Coco', '1234567890247', 'Galletas dulces de chocolate y coco', 'PorUnidad', 1.700000, FALSE, 26, 16),
('Fideos Spaghetti', '1234567890248', 'Fideos largos de trigo 500g', 'PorUnidad', 1.900000, TRUE, 23, 3),
('Yogur Griego Natural', '1234567890249', 'Yogur sin azucar 120g', 'PorUnidad', 1.80000, TRUE, 2, 6),
('Jabon en Barra Dove', '1234567890250', 'Jabon hidratante para la piel', 'PorUnidad', 2.50000, FALSE, 9, 18),
('Energizante Monster', '1234567890251', 'Bebida energetica 500ml', 'PorUnidad', 3.20000, FALSE, 1, 21),
('Arroz Integral', '1234567890252', 'Arroz integral 1kg', 'PorUnidad', 2.40000, TRUE, 10, 15),
('Mantequilla Sin Sal', '1234567890253', 'Mantequilla tradicional 250g', 'PorUnidad', 2.20000, FALSE, 2, 31),
('Cerveza Budweiser', '1234567890254', 'Cerveza rubia 500ml', 'PorUnidad', 3.10000, FALSE, 11, 13),
('Salsa Pesto', '1234567890255', 'Salsa pesto con albahaca 250g', 'PorUnidad', 3.80000, FALSE, 24, 15),
('Galletas de Avena', '1234567890256', 'Galletas saludables de avena', 'PorUnidad', 1.90000, FALSE, 26, 35),
('Galletas de Avena y Pasas', '1234567890310', 'Galletas integrales con avena y pasas 200g', 'PorUnidad', 2.50000, FALSE, 26, 35),
('Salsa de Soja Kikkoman', '1234567890311', 'Salsa de soja japonesa 500ml', 'PorUnidad', 4.20000, FALSE, 24, 17),
('Pechuga de Pollo Congelada', '1234567890312', 'Pechuga de pollo sin hueso congelada 1kg', 'PorPesoKg', 6.80000, TRUE, 3, 30),
('Aceite de Oliva Extra Virgen', '1234567890313', 'Aceite de oliva 100% extra virgen 500ml', 'PorUnidad', 7.50000, TRUE, 19, 15),
('Cerveza Artesanal IPA', '1234567890314', 'Cerveza artesanal estilo IPA 500ml', 'PorUnidad', 4.80000, FALSE, 11, 25),
('Te Verde Lipton', '1234567890315', 'Te verde en sobres 25 unidades', 'PorUnidad', 3.10000, TRUE, 18, 38),
('Atun en Agua', '1234567890316', 'Lata de atun en agua 180g', 'PorUnidad', 2.90000, TRUE, 22, 7),
('Helado de Frutilla', '1234567890317', 'Helado artesanal sabor frutilla 500ml', 'PorUnidad', 5.70000, FALSE, 17, 26),
('Almendras Tostadas', '1234567890318', 'Almendras tostadas sin sal 250g', 'PorUnidad', 6.40000, TRUE, 6, 14),
('Queso Brie', '1234567890319', 'Queso brie importado 200g', 'PorUnidad', 8.30000, FALSE, 2, 12),
('Mermelada de Frambuesa', '1234567890320', 'Mermelada artesanal de frambuesa 350g', 'PorUnidad', 3.40000, FALSE, 5, 14),
('Pan Integral Multicereal', '1234567890321', 'Pan integral con semillas 500g', 'PorUnidad', 2.80000, TRUE, 5, 11),
('Cacao en Polvo Nesquik', '1234567890322', 'Cacao en polvo instantaneo 400g', 'PorUnidad', 4.20000, FALSE, 21, 36),
('Papas Fritas Lays', '1234567890323', 'Papas fritas sabor original 300g', 'PorUnidad', 2.50000, FALSE, 6, 10),
('Mayonesa tomatox', '1234567890324', 'Mayonesa clasica 500g', 'PorUnidad', 3.10000, FALSE, 24, 4),
('Filete de Merluza', '1234567890325', 'Filete de merluza congelado 500g', 'PorPesoKg', 9.60000, TRUE, 29, 30),
('Cafe Molido Illy', '1234567890326', 'Cafe molido premium 250g', 'PorUnidad', 8.90000, FALSE, 18, 37),
('Mantequilla de Mani', '1234567890327', 'Crema de mani natural 400g', 'PorUnidad', 5.50000, FALSE, 21, 32),
('Galletas de Jengibre', '1234567890328', 'Galletas crujientes sabor jengibre 250g', 'PorUnidad', 3.20000, FALSE, 26, 16),
('Harina Integral', '1234567890329', 'Harina de trigo integral 1kg', 'PorUnidad', 2.40000, TRUE, 10, 15),
('Salsa Pesto', '1234567890330', 'Salsa pesto con albahaca 500g', 'PorUnidad', 4.80000, FALSE, 24, 7),
('Agua Mineral con Gas', '1234567890331', 'Agua mineral con gas 1.5L', 'PorUnidad', 2.00000, TRUE, 1, 39),
('Tortillas de Maiz', '1234567890332', 'Paquete de tortillas de maiz 500g', 'PorUnidad', 3.10000, TRUE, 10, 15),
('Yogur Griego Natural', '1234567890333', 'Yogur griego sin azucar 450g', 'PorUnidad', 3.60000, TRUE, 2, 6),
('Chocolate Blanco Hershey', '1234567890334', 'Tableta de chocolate blanco 100g', 'PorUnidad', 2.90000, FALSE, 21, 32),
('Te Chai Masala', '1234567890335', 'Infusion de te negro con especias 20 bolsas', 'PorUnidad', 4.00000, TRUE, 18, 38),
('Pollo Entero Fresco', '1234567890336', 'Pollo entero sin visceras 2kg', 'PorPesoKg', 12.00000, TRUE, 3, 30),
('Galletas de Mantequilla', '1234567890337', 'Galletas de mantequilla crujientes 200g', 'PorUnidad', 3.20000, FALSE, 26, 16),
('Leche de Almendras', '1234567890338', 'Bebida vegetal a base de almendras 1L', 'PorUnidad', 4.50000, TRUE, 2, 12),
('Cerveza Negra Stout', '1234567890339', 'Cerveza negra estilo stout 500ml', 'PorUnidad', 5.20000, FALSE, 11, 25),
('Queso Parmesano Rallado', '1234567890340', 'Queso parmesano rallado 150g', 'PorUnidad', 6.80000, FALSE, 2, 6),
('Sopa Instantanea de Pollo', '1234567890341', 'Sopa instantanea con fideos y pollo', 'PorUnidad', 1.90000, FALSE, 10, 17),
('Galletas de Coco', '1234567890342', 'Galletas dulces con coco rallado 180g', 'PorUnidad', 3.10000, FALSE, 26, 31),
('Cafe Espresso Molido', '1234567890343', 'Cafe espresso tostado y molido 250g', 'PorUnidad', 7.50000, FALSE, 18, 37),
('Cereal de Avena y Miel', '1234567890344', 'Cereal crocante con avena y miel 300g', 'PorUnidad', 4.80000, FALSE, 25, 5),
('Yogur Natural Endulzado', '1234567890345', 'Yogur natural con azucar 500g', 'PorUnidad', 3.50000, TRUE, 2, 6),
('Jabon Liquido para Manos', '1234567890346', 'Jabon liquido antibacterial con aloe vera 500ml', 'PorUnidad', 4.00000, FALSE, 9, 18),
('Cacao en Polvo Organico', '1234567890347', 'Cacao puro en polvo sin azucar 250g', 'PorUnidad', 5.80000, FALSE, 21, 36),
('Pasta Fusilli', '1234567890348', 'Pasta de trigo duro tipo fusilli 500g', 'PorUnidad', 2.50000, FALSE, 23, 15),
('Refresco de Uva', '1234567890349', 'Bebida gaseosa sabor uva 1.5L', 'PorUnidad', 2.40000, FALSE, 1, 2),
('Miel Pura de Abeja', '1234567890350', 'Miel 100% pura de abeja 500g', 'PorUnidad', 7.20000, TRUE, 21, 14),
('Galletas de Arroz', '1234567890351', 'Galletas de arroz sin gluten 150g', 'PorUnidad', 3.60000, TRUE, 26, 35),
('Papas Fritas con Sabor BBQ', '1234567890352', 'Papas fritas crujientes con sabor a BBQ 150g', 'PorUnidad', 2.80000, FALSE, 6, 10),
('Queso Mozzarella', '1234567890353', 'Queso mozzarella fresco 250g', 'PorUnidad', 4.90000, FALSE, 2, 34),
('Salsa de Tomate Tradicional', '1234567890354', 'Salsa de tomate para pastas 400g', 'PorUnidad', 3.00000, FALSE, 24, 7),
('Helado de Chocolate', '1234567890355', 'Helado cremoso de chocolate 500ml', 'PorUnidad', 5.90000, FALSE, 17, 26),
('Detergente Liquido para Ropa', '1234567890356', 'Detergente liquido para ropa de color 2L', 'PorUnidad', 8.50000, FALSE, 8, 29),
('Pasta Lasaña', '1234567890357', 'Laminas de pasta para lasaña 500g', 'PorUnidad', 3.50000, FALSE, 23, 15),
('Pan de Centeno', '1234567890358', 'Pan de centeno integral 400g', 'PorUnidad', 3.20000, TRUE, 5, 11),
('Cereal de Chocolate', '1234567890359', 'Cereal crujiente sabor chocolate 300g', 'PorUnidad', 4.10000, FALSE, 25, 31),
('Refresco de Limon', '1234567890360', 'Bebida gaseosa sabor limon 1.5L', 'PorUnidad', 2.30000, FALSE, 1, 20),
('Galletas de Avena con Chocolate', '1234567890361', 'Galletas de avena con chips de chocolate 200g', 'PorUnidad', 3.70000, FALSE, 26, 35),
('Queso Gouda en Lonchas', '1234567890362', 'Queso gouda en lonchas 500g', 'PorUnidad', 5.60000, FALSE, 2, 6),
('Salsa Picante de Chile', '1234567890363', 'Salsa de chile picante 200ml', 'PorUnidad', 3.90000, FALSE, 24, 7),
('Te de Manzanilla', '1234567890364', 'Te de manzanilla en sobres 20 unidades', 'PorUnidad', 2.50000, TRUE, 18, 31),
('Chocolate Amargo 70%', '1234567890365', 'Tableta de chocolate amargo 100g', 'PorUnidad', 3.90000, FALSE, 21, 32),
('Agua Mineral Sin Gas', '1234567890366', 'Agua mineral sin gas 1.5L', 'PorUnidad', 1.80000, TRUE, 1, 31),
('Enjuague bucal', '1234567890367', 'Enjuague bucal InfoCesta sin alcohol', 'PorUnidad', 2.00000, TRUE, 9, 31),
('Toallitas humedas', '1234567890368', 'Toallitas humedas marca InfoCesta', 'PorUnidad', 1.50000, TRUE, 9, 31),
('Agua saborizada a Fresa', '1234567890369', 'Agua sabor a fresa 1.5L', 'PorUnidad', 2.20000, TRUE, 1, 31),
('Agua saborizada a Limon', '1234567890370', 'Agua sabor a limon 1.5L', 'PorUnidad', 2.20000, TRUE, 1, 31),
('Agua saborizada a Naranja', '1234567890371', 'Agua sabor a Naranja 1.5L', 'PorUnidad', 2.20000, TRUE, 1, 31),
('Protector Solar', '1234567890372', 'protector solar marca InfoCesta', 'PorUnidad', 3.50000, TRUE, 9, 31),
('Jabon para la cara', '1234567890373', 'Jabon para lavarse la cara antes de dormir', 'PorUnidad', 4.00000, TRUE, 9, 31),
('Gel antibacterial', '1234567890374', 'Gel desinfectante para las manos', 'PorUnidad', 3.00000, TRUE, 9, 31),
('Tapabocas', '1234567890375', 'Tapabocas desechables', 'PorUnidad', 0.50000, TRUE, 9, 31),
('Ramen Instantaneo', '1234567890376', 'Pote de Ramen instantaneo, solo necesita agua caliente', 'PorUnidad', 2.50000, TRUE, 30, 31),
('Galletas con crema de Fresa', '1234567890377', 'Galletas de Avena con crema de Fresa', 'PorUnidad', 3.80000, TRUE, 5, 31),
('Marquesa de Chocolate', '1234567890378', 'Marquesa de chocolate con arequipe', 'PorUnidad', 4.80000, TRUE, 5, 31),
('Helado de Torta Suiza', '1234567890379', 'Helado Sabor a Torta Suiza', 'PorUnidad', 2.50000, TRUE, 17, 31),
('Nuggets Congelados', '1234567890380', 'Nuggets congelados listos para cocinar', 'PorUnidad', 2.50000, TRUE, 7, 31),
('Takoyakis', '1234567890381', 'Takoyakis recien preparados listos para disfrutar', 'PorUnidad', 6.00000, TRUE, 30, 31),
('Escoba', '1234567890382', 'Escoba de madera con cerdas firmes', 'PorUnidad', 20.00000, TRUE, 14, 29),
('Guantes Plasticos de Limpieza', '1234567890383', 'Guantes plastiscos resistentes para limpiar', 'PorUnidad', 10.00000, TRUE, 31, 29),
('Teclado Mecanico', '1234567890384', 'Teclado mecanico retroiluminado', 'PorUnidad', 50.00000, TRUE, 31, 21),
('Cable USB', '1234567890385', 'Cable USB tipo C 1.5m', 'PorUnidad', 5.00000, TRUE, 31, 21);

INSERT INTO Promo (nombre, slogan, codigo, tipoDescuento, valorDescuento, fechaInicio, fechaFin, tipoPromocion) VALUES
('Descuento para Novatos', '¡Tu primera compra con 25% de descuento!', 'NEWBE1', 'Porcentaje', 20, '2025-03-01', '2025-06-30', 'Online'),
('Especial San Valentin', 'Compra para ti y llevale tambien a tu enamorado', 'VALENT1N14', 'Porcentaje', 50, '2025-02-07', '2025-02-14', 'Ambos'),
('Verano EN InfoCesta', 'Disfruta un 15% menos en toda la tienda', 'SUMMERT1M3', 'Porcentaje', 15, '2025-03-01', '2025-08-20', 'Ambos'),
('CyberWeek', 'Aprovecha los mejores descuentos en compras online', 'CYBERSHOPPING', 'Porcentaje', 30, '2025-04-01', '2025-04-07', 'Online'),
('Descuentos Tienda Física', 'Obten $50 de descuento en compras de prodcutos marca InfoCesta', 'PHYSIC50', 'Fijo', 50, '2025-03-20', '2025-06-20', 'Física'),
('Promo Aniversario', 'Celebra con nosotros y disfruta de un 25% de descuento', 'ANNIV25', 'Porcentaje', 25, '2025-05-01', '2025-05-31', 'Ambos'),
('Black Friday', '¡Ofertas con mejores preciosde los 365 dias!', 'NFRIDAY', 'Porcentaje', 65, '2025-11-25', '2025-11-30', 'Ambos'),
('Fin de Semana con Descuenton', 'Aprovecha $40 de descuento en compras de helados', 'SUMMER200', 'Fijo', 40, '2025-06-01', '2025-06-03', 'Física'),
('Only Online Week', 'Solo por internet, 15% de descuento adicional', 'ONLINEW33K', 'Porcentaje', 15, '2025-10-15', '2025-10-22', 'Online'),
('Preparacion Navideña', 'Aprovecha para tener tus regalos con un 40% de descuento', 'READYFOR12/24', 'Porcentaje', 40, '2025-12-01', '2025-12-23', 'Ambos'),
('Day For Mother', 'Dibujale una sonrisa a tu madre con nuestro 25% de descuento', 'MOM4EVER', 'Porcentaje', 25, '2025-05-05', '2025-05-12', 'Ambos'),
('Para el Jefe', 'Regala con mucho estilo y alegra al hombre de la casa aprovechando nuestro 20% de descuento', 'THEBOSS', 'Porcentaje', 20, '2025-06-10', '2025-06-16', 'Ambos'),
('Descuento Estudioso', 'Presenta tu carnet de estudiante y recibe un 10% de descuento', 'STUDENT10', 'Porcentaje', 10, '2025-01-01', '2025-12-31', 'Física'),
('Semana Crazy', 'Solo esta semana, 30% en todas las compras', 'WhatAWeek', 'Porcentaje', 30, '2025-09-15', '2025-09-22', 'Ambos'),
('Cumpleaños Gamma', 'Celebra con nosotros nuestro cumple y recibe $55 de regalo', 'BDAYGAMMA', 'Fijo', 55, '2025-04-08', '2025-12-31', 'Física'),
('Descuento Express', 'Solo hoy, un 12% de descuento en cualquier compra', 'ExpressNow', 'Porcentaje', 12, '2025-03-01', '2025-03-02', 'Física'),
('Get Out of Here', 'Hasta 60% en productos seleccionados', 'OUT60', 'Porcentaje', 60, '2025-07-10', '2025-07-20', 'Ambos'),
('Nuevo Año, Nuevo yo', 'Renace este nuevo año con nuestro 35% de ahorro en tu compra', 'NEWYEARNEWME', 'Porcentaje', 35, '2025-12-26', '2025-12-31', 'Online'),
('El cliente tiene la razon', 'Como agradecimiento, por una semana tendremos 15% en todas las compras', 'CLIENTxRIGHT', 'Porcentaje', 15, '2025-10-01', '2025-10-07', 'Ambos'),
('Oh... here We go again', '20% en útiles escolares y mochilas', 'BACKAgain', 'Porcentaje', 20, '2025-08-15', '2025-09-10', 'Física'),
('Descuento por el Dia del Niño', 'Para los mas pequeños, 15% de descuento en juguetes', 'Childs15', 'Porcentaje', 15, '2025-04-20', '2025-04-30', 'Ambos'),
('Es viernes y el cuerpo lo sabe', 'Solo los viernes, 15% en toda la tienda', 'FRIDAYLOVE', 'Porcentaje', 15, '2025-03-01', '2025-12-31', 'Física'),
('Mas que un Juego', 'Chucherias y bebidas energeticas con 20% de descuento, para verdaderos gamers', 'G4MERPRIDE', 'Porcentaje', 20, '2025-09-05', '2025-09-12', 'Ambos'),
('日本 week', 'Ahorra 70$ en productos de japoneses ', 'NIHON<3', 'Fijo', 70, '2025-03-17', '2025-03-24', 'Física'),
('Desert love', '10% en postres y dulces', 'SWEETLOVE', 'Porcentaje', 10, '2025-07-01', '2025-07-15', 'Física'),
('Para que son los amigos?', 'Invita a un amigo y obten $50 de descuento', 'PanasX50', 'Fijo', 50, '2025-02-01', '2025-12-31', 'Online'),
('Promocion Mity Mity', 'Bienvenido al Mity Mity, todo lo que compres a mitad de precio', 'MityxMity', 'Porcentaje', 50, '2025-06-01', '2025-06-05', 'Ambos'),
('Refresco para que te quiero?', 'Hasta 25% en refrescos y bebidas gasificadas', 'RefreshLove', 'Porcentaje', 25, '2025-10-15', '2025-10-22', 'Física'),
('Gomitas Love', '50% de descuento para los amantes en gomitas', 'GOMITASLOVER', 'Porcentaje', 50, '2025-08-01', '2025-08-15', 'Física'),
('I am The Flash', 'Descuentos sorpresa de hasta 30%', 'ScarletFLASH30', 'Porcentaje', 30, '2025-11-01', '2025-11-07', 'Ambos'),
('Momento hoja de Otoño', 'Descuentos especiales en productos seleccionados durante Otoño', 'AUTUMN', 'Porcentaje', 35, '2025-09-15', '2025-09-30', 'Ambos'),
('Lunes mas bonito', 'Para que no odies tanto los lunes, te damos un 10% de descuento', 'WHYMONDAY?', 'Porcentaje', 10, '2025-01-01', '2025-12-31', 'Ambos'),
('Sabado de mercado', 'Aprovecha un 20% para hacer el mercado de la semana', 'SATURDAYMARKET', 'Porcentaje', 20, '2025-04-01', '2025-12-31', 'Física'),
('Dia del Trabajador', '15% de descuento en toda la tienda por un dia', 'WORKERDAY', 'Porcentaje', 15, '2025-05-01', '2025-05-01', 'Ambos'),
('Semana de los Deportes', '20% en agua y bebidas energeticas', 'SPORTSFORLIFE', 'Porcentaje', 20, '2025-06-10', '2025-06-17', 'Física'),
('Los tres mosqueteros', 'Compra por mas de $300 y recibe $100 de descuento', '1X3AND3X1', 'Fijo', 50, '2025-03-15', '2025-07-15', 'Online'),
('Check Point del Año', 'Haz llegado a la mitad del año viajero, descansa y aprovecha este 30% de descuento en todo el catalogo', 'CheackPoint', 'Porcentaje', 30, '2025-06-01', '2025-06-30', 'Ambos'),
('Mano aun tienes Fe?', 'Para que recuperes la fe, aprovecha este 30% de descuento en chucherias y bebidas para que apoyes a la seleccion ', 'FEALTERADAISBACK', 'Porcentaje', 30, '2025-03-01', '2025-12-31', 'Física'),
('Compra con tu Chikistriquis', 'Compra con un amigo y ambos obtienen 15% de descuento', 'Chikistriquis15', 'Porcentaje', 15, '2025-07-01', '2025-07-31', 'Física'),
('GRACIAS A DIOS ES MIERCOLES', 'Celebra que llego la mitad de la semana con nuestro 15% de descuento', 'ITSWEDNESDAY', 'Porcentaje', 15, '2025-01-01', '2025-01-12', 'Física');

INSERT INTO Cliente (CI, nombre, apellido, correo, sexo, fechaNacimiento, fechaRegistro) VALUES
(30136703, 'Carlos', 'Zavarce', 'cezavarcev16@gmail.com', 'M', '2003-10-31', '2023-08-20'),
(27457682, 'Ana', 'Gomez', 'ana.gomez@hotmail.com', 'F', '1999-11-12', '2021-06-17'),
(18423945, 'Luis', 'Morikawa', 'Morikawa_65@yahoo.com', 'M', '1982-02-05', '2022-10-05'),
(15739423, 'Maria', 'Lopez', 'maria.lopez@gmail.com', 'F', '1978-08-30', '2020-04-14'),
(8754231, 'Pedro', 'Garcia', 'pedro.garcia@hotmail.com', 'M', '1971-12-25', '2023-01-10'),
(24589761, 'Laura', 'Sanglade', 'lauraSan@yahoo.com', 'F', '1995-05-01', '2019-11-08'),
(18106283, 'Juan', 'Rodriguez', 'juan.rodriguez14@gmail.com', 'M', '1980-07-18', '2022-12-22'),
(1784512, 'Isabel', 'Vivas', 'isabel_VV@hotmail.com', 'F', '1986-06-14', '2020-08-29'),
(12890435, 'Carlos', 'Vargas', 'carlos.vargas@yahoo.com', 'M', '1974-01-20', '2023-05-04'),
(25059423, 'Elena', 'Fernandez', 'elena.fernandez@gmail.com', 'F', '1988-03-06', '2021-07-30'),
(31928390, 'Javier', 'Jimenez', 'javier.jimenez@hotmail.com', 'M', '2005-02-17', '2022-11-19'),
(21450987, 'Miku', 'Nakano', 'Nakano_Miku@yahoo.com', 'F', '1998-09-09', '2020-02-02'),
(13485672, 'Antonio', 'Ramos', 'antonio.ramos@gmail.com', 'M', '1970-11-14', '2021-03-18'),
(23674859, 'Beatriz', 'Diaz', 'beatriz.diaz@hotmail.com', 'F', '1994-03-27', '2023-01-24'),
(15793048, 'Eduardo', 'Suarez', 'eduardo.suarez@yahoo.com', 'M', '1976-01-03', '2022-07-12'),
(28345761, 'Vanessa', 'Silvera', 'vanevalensin@gmail.com', 'F', '2002-12-06', '2021-02-16'),
(27649283, 'Francisco', 'Sanchez', 'francisco.sanchez@hotmail.com', 'M', '1994-10-06', '2022-12-14'),
(31284953, 'Adriana', 'Muñoz', 'adriana.munoz@yahoo.com', 'F', '1992-05-29', '2021-04-19'),
(30674812, 'Rafael', 'Cruz', 'rafael.cruz@gmail.com', 'M', '2002-02-02', '2020-05-22'),
(27830415, 'Sofia', 'Morales', 'sofia.morales@hotmail.com', 'F', '1989-07-21', '2023-03-17'),
(26567892, 'Isagi', 'Yoichi', 'Yoichi_Isag@yahoo.com', 'M', '1993-12-11', '2022-09-28'),
(16543289, 'Patricia', 'Gil', 'patricia.gil@gmail.com', 'F', '1982-04-02', '2021-06-08'),
(23654301, 'Ricardo', 'Ruiz', 'ricardo.ruiz@hotmail.com', 'M', '1987-10-15', '2020-01-14'),
(18096532, 'Teresa', 'Torres', 'teresa.torres@yahoo.com', 'F', '1994-03-01', '2023-02-05'),
(30982573, 'Oscar', 'Molina', 'oscar.molina@gmail.com', 'M', '2001-06-20', '2022-06-11'),
(20987563, 'Tohka', 'Yatogami', 'Yatogami_Tohka@hotmail.com', 'F', '1976-09-05', '2021-11-26'),
(21548930, 'David', 'Jimenez', 'david.jimenez@yahoo.com', 'M', '1992-08-16', '2023-05-10'),
(17583920, 'Origami', 'Tobiichi', 'Tobi_Origami44@gmail.com', 'F', '1985-11-22', '2020-09-17'),
(31498712, 'Miguel', 'Hernandez', 'miguel.hernandez@hotmail.com', 'M', '2004-04-08', '2022-01-28'),
(23649875, 'Raul', 'Lopez', 'raul.lopez@yahoo.com', 'M', '1991-12-30', '2021-02-25'),
(25634789, 'Susana', 'Rios', 'susana.rios@gmail.com', 'F', '1998-09-12', '2023-01-14'),
(32198453, 'Lucas', 'Vazquez', 'Luquita.vaz@hotmail.com', 'M', '2006-02-25', '2022-03-22'),
(30759284, 'Sakura', 'Silvera', 'SakuSilV@yahoo.com', 'F', '2002-11-04', '2020-07-08'),
(15324698, 'Jorge', 'Perez', 'jorge.perez@gmail.com', 'M', '1983-05-22', '2021-11-04'),
(29756219, 'Alba', 'Fernandez', 'alba.fernandez@hotmail.com', 'F', '1996-10-13', '2022-12-06'),
(18764351, 'Martin', 'Sanchez', 'martin.sanchez@yahoo.com', 'M', '1992-07-06', '2020-01-17'),
(29813465, 'Beatriz', 'Lopez', 'beatriz.lopez@gmail.com', 'F', '1989-11-12', '2021-09-01'),
(28965417, 'Antonio', 'Martin', 'antonio.martin@hotmail.com', 'M', '2000-04-27', '2022-03-31'),
(21538790, 'Carmen', 'Rodriguez', 'carmen.rodriguez@yahoo.com', 'F', '1993-01-09', '2021-07-25'),
(17569340, 'Juan', 'Gonzalez', 'juan.gonzalez@gmail.com', 'M', '1988-09-14', '2023-02-09'),
(24678512, 'Patricia', 'Romero', 'patricia.romero@hotmail.com', 'F', '1994-08-22', '2020-11-11'),
(18732046, 'Luis', 'Cordero', 'luis.cordero@yahoo.com', 'M', '1995-10-18', '2021-01-19'),
(23984671, 'Jose', 'Garcia', 'jose.garcia@gmail.com', 'M', '1996-02-03', '2022-09-06'),
(29183460, 'Maria', 'Castro', 'maria.castro@hotmail.com', 'F', '1997-03-24', '2021-04-21'),
(18907654, 'Antonio', 'Sanchez', 'antonio.sanchez@yahoo.com', 'M', '1984-05-10', '2020-06-05'),
(6054321, 'Carlos', 'Gomez', 'carlos.gomez@gmail.com', 'M', '1968-05-14', '2024-02-25'),
(7248932, 'Ana', 'Martinez', 'ana.martinez@hotmail.com', 'F', '1965-09-23', '2023-12-10'),
(31246789, 'Luis', 'Fernandez', 'luis.fernandez@yahoo.com', 'M', '2005-04-30', '2024-01-15'),
(29875632, 'Elena', 'Ruiz', 'elena.ruiz@gmail.com', 'F', '2003-07-11', '2023-11-05'),
(8456321, 'Miguel', 'Lopez', 'miguel.lopez@hotmail.com', 'M', '1963-02-28', '2023-10-20'),
(25467891, 'Mariana', 'Diaz', 'mariana.diaz@yahoo.com', 'F', '1999-06-17', '2024-02-18'),
(18765432, 'Javier', 'Hernandez', 'javier.hernandez@gmail.com', 'M', '1987-03-22', '2023-09-14'),
(9234781, 'Paula', 'Gutierrez', 'paula.gutierrez@hotmail.com', 'F', '1960-12-03', '2023-08-30'),
(14567832, 'Daniel', 'Perez', 'daniel.perez@yahoo.com', 'M', '1978-10-09', '2023-07-25'),
(31256987, 'Lucia', 'Torres', 'lucia.torres@gmail.com', 'F', '2004-08-14', '2023-06-12'),
(5897643, 'Roberto', 'Vargas', 'roberto.vargas@hotmail.com', 'M', '1969-04-25', '2023-05-20'),
(26798453, 'Andrea', 'Morales', 'andrea.morales@yahoo.com', 'F', '2001-11-30', '2023-04-18'),
(31247895, 'Fernando', 'Castro', 'fernando.castro@gmail.com', 'M', '2002-03-05', '2023-03-15'),
(17894356, 'Veronica', 'Mendez', 'veronica.mendez@hotmail.com', 'F', '1985-07-21', '2023-02-10'),
(9238741, 'Alberto', 'Rios', 'alberto.rios@yahoo.com', 'M', '1962-09-08', '2023-01-05'),
(21457896, 'Gabriela', 'Ortega', 'gabriela.ortega@gmail.com', 'F', '1994-12-19', '2022-12-12'),
(31258974, 'Emilio', 'Navarro', 'emilio.navarro@hotmail.com', 'M', '2000-06-27', '2022-11-08'),
(14785632, 'Kana', 'Arima', 'KanaIdolOfficial@yahoo.com', 'F', '1975-10-15', '2022-10-06'),
(29876453, 'Santiago', 'Jimenez', 'santiago.jimenez@gmail.com', 'M', '2003-05-22', '2022-09-02'),
(32894715, 'Raquel', 'Flores', 'raquel.flores@hotmail.com', 'F', '2005-09-17', '2022-08-10'),
(31547892, 'Esteban', 'Silva', 'esteban.silva@gmail.com', 'M', '2004-11-03', '2022-07-15'),
(18975643, 'Monica', 'Cabrera', 'monica.cabrera@hotmail.com', 'F', '1988-02-28', '2022-06-10'),
(27659481, 'Ricardo', 'Mejia', 'ricardo.mejia@yahoo.com', 'M', '2001-09-14', '2022-05-08'),
(30136704, 'Kosetsu', 'Zavarce', 'KotZavarce36@gmail.com', 'F', '2003-02-25', '2022-04-04'),
(29876482, 'Shoto', 'Todoroki', 'Todoroky_Shoto@hotmail.com', 'M', '2003-12-21', '2022-03-02'),
(31254789, 'Sofia', 'Gonzalez', 'sofia.gonzalez@gmail.com', 'F', '2004-10-10', '2022-02-15'),
(19875463, 'Martin', 'Alvarez', 'martin.alvarez@yahoo.com', 'M', '1990-06-25', '2022-01-12'),
(28756392, 'Carmen', 'Lopez', 'carmen.lopez@hotmail.com', 'F', '2002-03-14', '2021-12-05'),
(18763529, 'Felipe', 'Mendoza', 'felipe.mendoza@gmail.com', 'M', '1985-07-30', '2021-11-20'),
(31264578, 'Valeria', 'Ortiz', 'valeria.ortiz@yahoo.com', 'F', '2005-09-17', '2021-10-25'),
(28975643, 'Raul', 'Garcia', 'raul.garcia@hotmail.com', 'M', '2003-11-22', '2021-09-18'),
(14578329, 'Patricia', 'Fernandez', 'patricia.fernandez@gmail.com', 'F', '1978-08-14', '2021-08-10'),
(27658321, 'Izuku', 'Midoriya', 'Midori_Izu@yahoo.com', 'M', '2001-02-06', '2021-07-03'),
(31268975, 'Ximena', 'Reyes', 'ximena.reyes@hotmail.com', 'F', '2004-12-12', '2021-06-21'),
(19874523, 'Armando', 'Unbanquito', 'BanquitoArmado@gmail.com', 'M', '1991-10-03', '2021-05-30'),
(30567891, 'Camila', 'Serrano', 'camila.serrano@gmail.com', 'F', '2004-07-19', '2021-04-25'),
(21789453, 'Paco', 'Gones', 'GonesPaquito@yahoo.com', 'M', '1993-05-12', '2021-03-20'),
(32345687, 'Shin', 'Nouzen', 'shinigami86@gmail.com', 'M', '2005-03-12', '2024-02-25'),
(30986765, 'Maria', 'Perez', 'maria.perez@hotmail.com', 'F', '1966-06-21', '2023-12-15'),
(22031355, 'Naofumi', 'Iwatani', 'tateNoYuusha@yahoo.com', 'M', '1996-07-09', '2024-01-30'),
(25645234, 'Ana', 'Rodriguez', 'ana.rodriguez@gmail.com', 'F', '2001-09-18', '2024-02-01'),
(31236809, 'Luis', 'Fernandez', 'luis.fernandez@hotmail.com', 'M', '2005-05-25', '2023-11-20'),
(5456321, 'Elena', 'Torres', 'elena.torres@yahoo.com', 'F', '1969-12-03', '2023-10-10'),
(15202345, 'Pedro', 'Lopez', 'pedro.lopez@gmail.com', 'M', '1988-11-29', '2024-02-15'),
(22757893, 'Laura', 'Hernandez', 'laura.hernandez@hotmail.com', 'F', '1997-04-05', '2023-08-25'),
(18000000, 'David', 'Diaz', 'david.diaz@yahoo.com', 'M', '1993-06-17', '2023-09-30'),
(29147000, 'Rem', 'Natsuki', 'RemGod78@gmail.com', 'F', '2003-06-23', '2024-07-18'),
(30230765, 'Vladilena', 'Milize', 'ElenaScarlet@gmail.com', 'F', '2002-01-01', '2024-02-14'),
(28140073, 'Jinx', 'Aoi', 'Jinxtsu@hotmail.com', 'F', '2000-03-27', '2023-04-29'),
(31247905, 'Shido', 'Itsuka', 'shidou_Itsuka@gmail.com', 'M', '2005-07-28', '2024-05-17'),
(28890432, 'Kurumi', 'Tokisaki', 'TokisakiNightmare@gmail.com', 'F', '1999-01-31', '2024-01-10'),
(30136345, 'Rapthalia', 'Iwatani', 'rapthali31@gmail.com', 'F', '2003-11-04', '2023-01-10'),
(22042314, 'Deadlock', 'Valorius', 'Valoratos_lock@hotmail.com', 'F', '1993-07-17', '2024-01-10'),
(29573219, 'Natsumi', 'Kyouno', 'natsuKyou090@gmail.com', 'F', '2004-03-20', '2022-03-11'),
(27854093, 'Belle', 'Zenless', 'BangouBelle@hotmail.com', 'F', '2003-12-24', '2024-04-14');

-- #####################################################################################################################################


/*
    Transaction and Relation Tables - Group 3
    These are the tables that connect everything. 
    Depend on the entities from second group and sometimes between them. 
    They're the heart of our business logic.

    This table must be populated with a procedure:
    - ProveedorProducto
*/

INSERT INTO ClienteDireccion (clienteId, tipoDireccion, dirLinea1, ciudadId) VALUES
--Usuarios con 1 direccion:
(1,'Facturación','Av.Araure',47),
(2, 'Facturación', 'Calle Bolivar', 61),
(3, 'Envío', 'Calle Sucre', 62),
(4, 'Facturación', 'Av. Los Llanos', 63),
(5, 'Envío', 'Urbanizacion La Victoria', 64),
(6, 'Envío', 'Barrio Libertad', 65),
(7, 'Facturación', 'Calle Libertador', 58),
(8, 'Facturación', 'Avenida Caracas', 59),
(9, 'Facturación', 'Sector El Centro', 60),
(10, 'Envío', 'Urbanizacion Los Jardines', 58),
(11, 'Envío', 'Calle Sucre', 59),
(12, 'Facturación', 'Barrio La Esperanza', 60),
(13, 'Envío', 'Avenida 34', 55),
(14, 'Facturación', 'Calle Urdaneta', 56),
(15, 'Envío', 'Sector La Limpia', 57),
(16, 'Facturación', 'Urbanizacion La Victoria', 55),
(17, 'Facturación', 'Calle El Milagro', 56),
(18, 'Envío', 'Barrio San Benito', 57),
(19, 'Facturación', 'Avenida Bolivar', 52),
(20, 'Facturación', 'Calle Paez', 53),
(21, 'Envío', 'Sector Los Teques', 54),
(22, 'Facturación', 'Urbanizacion El Bosque', 52),
(23, 'Facturación', 'Calle Principal', 53),
(24, 'Envío', 'Avenida Constitucion', 7),
(25, 'Facturación', 'Calle Las Flores', 51),
(26, 'Facturación', 'Calle Calzada del Valle', 8),
(27, 'Envío', 'San Bernardino', 51),
(28, 'Facturación', 'Barrio El Valle', 51),
(29, 'Envío', 'Avenida Delicias', 50),
(30, 'Facturación', 'Calle 67', 50),
(31, 'Envío', 'Calle 1 Avenida 3', 15), 
(32, 'Facturación', 'Avenida Independencia', 13), 
(33, 'Envío', 'Calle Benito Juarez', 14),
(34, 'Facturación', 'Avenida Independencia', 48),
(35, 'Facturación', 'Calle Ribas', 48),
(36, 'Envío', 'Sector El Tambor', 48),
(37, 'Envío', 'Urbanizacion El Llanito', 49),
(38, 'Facturación', 'Barrio Jose Felix Ribas', 49),
(39, 'Facturación', 'Avenida Reforma', 10), 
(40, 'Envío', 'Calle 1 Poniente', 11), 
(41, 'Facturación', 'Boulevard Forjadores', 12),
(42, 'Facturación', 'Sector Altamira', 47),
(43, 'Envío', 'Barrio El Cementerio', 47),
(44, 'Facturación', 'Avenida Corrientes', 44),
(45, 'Facturación', 'Calle 12', 45),
(46, 'Envío', 'Urbanizacion Playa Grande', 46),
(47, 'Facturación', 'Sector Puerto', 46),
(48, 'Envío', 'Barrio Recoleta', 44),
(49, 'Facturación', 'Avenida Principal', 41),
(50, 'Envío', 'Calle 10', 42),
(51, 'Facturación', 'Sector Centro', 43),
(52, 'Envío', 'Urbanizacion El Dorado', 41),
(53, 'Envío', 'Barrio San Jose', 42),
(54, 'Facturación', 'Avenida Quebrada Seca', 38),
(55, 'Facturación', 'Calle 200', 39),
(56, 'Facturación', 'Sector Campo 23', 40),
(57, 'Facturación', 'Boulevard Tlaquepaque', 6),
(58, 'Envío', 'Avenida Insurgentes', 1),
(59, 'Envío', 'Avenida Roosevelt', 35),
(60, 'Envío', 'Calle 42', 36),
(61, 'Facturación', 'Sector La Playa', 37),
(62, 'Facturación', 'Urbanizacion Ciudad Jardin', 35),
(63, 'Envío', 'Barrio El Prado', 36),
(64, 'Envío', 'Avenida San Juan', 32),
(65, 'Facturación', 'Calle 37 Sur', 33),
(66, 'Facturación', 'Sector Niquia', 34),
(67, 'Envío', 'Urbanizacion El Poblado', 32),
(68, 'Facturación', 'Barrio La America', 33),
(69, 'Facturación', 'Avenida Caracas', 31),
(70, 'Envío', 'Calle 26', 31),
(71, 'Facturación', 'Calle Chapultepec', 4),
(72, 'Envío', 'Avenida Patria', 5),
(73, 'Envío', 'Barrio La Candelaria', 31),
(74, 'Facturación', 'Avenida Michigan', 28),
(75, 'Facturación', 'Avenida Eduardo Molina', 3),
(76, 'Facturación', 'Sector Riverfront', 30),
(77, 'Envío', 'Urbanizacion Hyde Park', 28),
(78, 'Facturación', 'Barrio Lincoln Park', 29),
(79, 'Facturación', 'Calle Ermita Iztapalapa', 2),
(80, 'Envío', 'Avenida Benito Juarez', 9),

--Usuarios con 2 direcciones:
(81, 'Facturación', 'Sector Bayfront', 27),
(81, 'Envío', 'Urbanizacion Little Havana', 25),
(82, 'Facturación', 'Barrio Downtown', 26),
(82, 'Envío', 'Calle OBT', 27),
(83, 'Facturación', 'Avenida Orange Blossom', 25),
(83, 'Envío', 'Calle 50', 26),
(84, 'Facturación', 'Sector South Beach', 27),
(84, 'Envío', 'Urbanizacion Wynwood', 25),
(85, 'Facturación', 'Sector Harlem', 24),
(85, 'Envío', 'Urbanizacion The Bronx', 22),
(86, 'Facturación', 'Avenida Broadway', 22),
(86, 'Envío', 'Calle Wall Street', 23),
(87, 'Facturación', 'Sector Times Square', 24),
(87, 'Envío', 'Urbanizacion Queens', 22),
(88, 'Facturación', 'Barrio Brooklyn Heights', 23),
(88, 'Envío', 'Calle Fifth Avenue', 24),
(89, 'Facturación', 'Avenida Central Park', 22),
(89, 'Envío', 'Calle Madison Avenue', 23),
(90, 'Facturación', 'Avenida Westheimer', 19),
(90, 'Envío', 'Calle Montrose', 20),
(91, 'Facturación', 'Sector Deep Ellum', 21),
(91, 'Envío', 'Urbanizacion Uptown', 19),
(92, 'Facturación', 'Barrio The Heights', 20),
(92, 'Envío', 'Calle Oak Lawn', 21),
(93, 'Facturación', 'Avenida South Congress', 19),
(93, 'Envío', 'Calle Rainey Street', 20),
(94, 'Facturación', 'Sector Zilker', 21),
(94, 'Envío', 'Urbanizacion East Austin', 19),
(95, 'Facturación', 'Avenida Sunset Blvd', 16),
(95, 'Envío', 'Calle Santa Monica', 17),
(96, 'Facturación', 'Sector Fisherman’s Wharf', 18),
(96, 'Envío', 'Urbanizacion Golden Gate', 16),
(97, 'Facturación', 'Barrio Mission District', 17),
(97, 'Envío', 'Calle La Jolla', 18),
(98, 'Facturación', 'Avenida Rodeo Drive', 16),
(98, 'Envío', 'Calle Market Street', 17),
(99, 'Facturación', 'Sector Gaslamp Quarter', 18),
(99, 'Envío', 'Urbanizacion Pacific Beach', 16),
(100, 'Facturación', 'Barrio Chinatown', 17),
(100, 'Envío', 'Sector Beverly Hills', 18);

INSERT INTO ProductoRecomendadoParaProducto(productoId, productoRecomendadoId, mensaje) VALUES
(52, 79, 'Sugerencia personalizada basada en compras similares.'),
(57, 44, 'Una excelente opcion recomendada por otros clientes.'),
(50, 65, 'Descubra por que este producto es una gran eleccion junto con el suyo.'),
(161, 199, 'Sugerencia personalizada basada en compras similares.'),
(12, 195, 'Una excelente opcion recomendada por otros clientes.'),
(22, 130, 'Este articulo puede mejorar la experiencia de tu compra actual.'),
(99, 65, 'Este articulo puede mejorar la experiencia de tu compra actual.'),
(52, 195, 'Una excelente opcion recomendada por otros clientes.'),
(1, 29, 'Una excelente opcion recomendada por otros clientes.'),
(12, 172, 'Sugerencia personalizada basada en compras similares.'),
(5, 82, 'Descubra por que este producto es una gran eleccion junto con el suyo.'),
(59, 186, 'Este articulo puede mejorar la experiencia de tu compra actual.'),
(75, 180, 'Los compradores frecuentemente combinan estos productos.'),
(57, 45, 'Este articulo puede mejorar la experiencia de tu compra actual.'),
(158, 99, 'Una excelente opcion recomendada por otros clientes.'),
(182, 125, 'Los compradores frecuentemente combinan estos productos.'),
(29, 135, 'Este producto complementa bien tu compra.'),
(122, 145, 'Clientes que compraron este producto tambien adquirieron el recomendado.'),
(197, 140, 'Los compradores frecuentemente combinan estos productos.'),
(190, 112, 'Clientes que compraron este producto tambien adquirieron el recomendado.'),
(16, 23, 'Una excelente opcion recomendada por otros clientes.'),
(136, 182, 'Los compradores frecuentemente combinan estos productos.'),
(138, 32, 'Descubra por que este producto es una gran eleccion junto con el suyo.'),
(11, 179, 'Sugerencia personalizada basada en compras similares.'),
(145, 87, 'Nuestros expertos recomiendan este producto como complemento.'),
(1, 31, 'Una excelente opcion recomendada por otros clientes.'),
(20, 35, 'Este producto complementa bien tu compra.'),
(34, 60, 'Nuestros expertos recomiendan este producto como complemento.'),
(82, 163, 'Sugerencia personalizada basada en compras similares.'),
(132, 153, 'Nuestros expertos recomiendan este producto como complemento.'),
(11, 98, 'Una excelente opcion recomendada por otros clientes.'),
(197, 106, 'Nuestros expertos recomiendan este producto como complemento.'),
(66, 24, 'Una excelente opcion recomendada por otros clientes.'),
(187, 43, 'Clientes que compraron este producto tambien adquirieron el recomendado.'),
(97, 116, 'Descubra por que este producto es una gran eleccion junto con el suyo.'),
(30, 56, 'Este producto complementa bien tu compra.'),
(157, 5, 'Los compradores frecuentemente combinan estos productos.'),
(79, 15, 'Basado en tendencias, este articulo es una excelente opcion.'),
(47, 82, 'Una excelente opcion recomendada por otros clientes.'),
(106, 48, 'Los compradores frecuentemente combinan estos productos.');    

INSERT INTO ProductoRecomendadoParaCliente (clienteId, productoRecomendadoId, fechaRecomendacion, mensaje) VALUES
(23, 198, '2025-02-16', 'Este producto es ideal para sus necesidades.'),
(98, 68, '2025-02-20', 'Este producto te esta buscando, compralo ahora.'),
(29, 151, '2025-02-20', 'Clientes con gustos similares han comprado este producto.'),
(52, 140, '2025-02-10', 'Este articulo coincide con tu historial de busqueda.'),
(1, 109, '2025-02-14', 'Basado en tu historial, este articulo podria interesarte.'),
(63, 123, '2025-01-30', 'No te hace falta esto para completar tu compra?.'),
(64, 166, '2025-02-28', 'Oportunidad especial basada en sus preferencias.'),
(94, 125, '2025-01-30', 'Nuestra recomendacion para ti, teniendo en cuenta tus gustos.'),
(93, 1, '2025-02-17', 'Sugerencia personalizada para ti.'),
(85, 158, '2025-02-17', 'Sugerencia personalizada que te encantara.'),
(40, 2, '2025-02-25', 'Oferta especial en base a sus compras anteriores.'),
(21, 161, '2025-01-30', 'Recomendado por nuestras tendencias de compra.'),
(36, 125, '2025-02-19', 'Recomendacion segun las compras que hiciste antes.'),
(58, 176, '2025-02-02', 'Recomendado segun sus compras anteriores.'),
(22, 172, '2025-02-14', 'Este producto ha sido popular entre clientes con gustos similares a los tuyos.'),
(29, 89, '2025-02-14', 'Nuestra recomendacion exclusiva para ti.'),
(85, 13, '2025-02-09', 'Clientes con gustos similares han comprado este producto.'),
(68, 48, '2025-02-14', 'Oferta especial en base a sus compras anteriores.'),
(34, 84, '2025-02-02', 'Clientes con gustos similares han comprado este producto.'),
(54, 12, '2025-02-23', 'Sugerencia personalizada que no debes ignorar.'),
(41, 150, '2025-02-11', 'Este producto es ideal para sus necesidades.'),
(88, 100, '2025-02-21', 'Recomendado segun sus compras anteriores.'),
(78, 105, '2025-02-08', 'Clientes con gustos similares han comprado este producto.'),
(63, 131, '2025-02-12', 'Sugerencia excepcional que te encantara.'),
(55, 95, '2025-02-07', 'No se pierda esta sugerencia personalizada.'),
(85, 84, '2025-02-13', 'Este producto ha sido popular nuestros ultimos clientes.'),
(45, 97, '2025-02-25', 'Recomendado por nuestras tendencias de compra.'),
(56, 2, '2025-02-22', 'Basado en tu historial, este articulo podria interesarle.'),
(30, 7, '2025-02-12', 'Recomendado segun sus compras anteriores.'),
(55, 25, '2025-02-18', 'Oportunidad especial basada en sus preferencias.'),
(85, 20, '2025-02-18', 'Una excelente opcion para comprar el dia de hoy.'),
(77, 32, '2025-02-24', 'Este producto ha sido popular entre clientes similares.'),
(30, 135, '2025-02-03', 'Este producto es ideal para sus necesidades.'),
(12, 105, '2025-02-01', 'Este producto es ideal para sus necesidades.'),
(70, 123, '2025-02-14', 'Este producto ha sido popular entre clientes similares.'),
(53, 27, '2025-02-01', 'Oferta especial en base a sus compras anteriores.'),
(90, 126, '2025-02-02', 'Oportunidad especial basada en sus preferencias.'),
(53, 176, '2025-02-21', 'Producto que necesitas  segun tus preferencias.'),
(71, 76, '2025-02-05', 'Recomendado segun sus compras anteriores.'),
(17, 150, '2025-01-30', 'Una excelente que puede ser de tu interes.');

-- intermediate table. Needed to make a purchase, 25% of customers have products in their cart
-- Each customer has between 2 and 6 products in their cart
-- The products in the cart are a mix of low, medium, and high priced items
-- The quantity of each product in the cart varies between 1 and 6
INSERT INTO Carrito (clienteId, productoId, fechaAgregado, cantidad, precioPor) VALUES
-- Cliente 1 (4 productos)
(1, 1, '2025-09-22', 2, 1.50),
(1, 7, '2025-09-23', 1, 2.00),
(1, 12, '2025-09-23', 3, 1.00),
(1, 31, '2025-09-24', 1, 5.90),
-- Cliente 5 (3 productos)
(5, 10, '2025-09-24', 1, 0.75),
(5, 25, '2025-09-24', 2, 1.00),
(5, 50, '2025-09-24', 1, 6.80),
-- Cliente 10 (5 productos)
(10, 8, '2025-09-22', 1, 1.20),
(10, 16, '2025-09-22', 2, 1.25),
(10, 22, '2025-09-23', 1, 5.00),
(10, 45, '2025-09-24', 4, 1.80),
(10, 60, '2025-09-24', 1, 4.90),
-- Cliente 15 (2 productos)
(15, 107, '2025-09-23', 3, 1.70),
(15, 138, '2025-09-23', 1, 3.20),
-- Cliente 20 (6 productos)
(20, 1, '2025-09-21', 6, 1.50),
(20, 2, '2025-09-21', 6, 1.45),
(20, 31, '2025-09-22', 2, 5.90),
(20, 57, '2025-09-22', 2, 2.00),
(20, 88, '2025-09-23', 1, 3.80),
(20, 145, '2025-09-24', 1, 2.60),
-- Cliente 25 (4 productos)
(25, 4, '2025-09-24', 1, 1.80),
(25, 36, '2025-09-24', 2, 2.10),
(25, 66, '2025-09-24', 1, 2.50),
(25, 99, '2025-09-24', 1, 1.40),
-- Cliente 30 (3 productos)
(30, 210, '2025-09-23', 5, 2.50),
(30, 215, '2025-09-23', 2, 6.00),
(30, 23, '2025-09-23', 1, 2.00),
-- Cliente 35 (5 productos)
(35, 11, '2025-09-22', 1, 4.00),
(35, 41, '2025-09-22', 1, 1.50),
(35, 71, '2025-09-22', 2, 9.60),
(35, 101, '2025-09-23', 1, 2.70),
(35, 131, '2025-09-24', 3, 4.80),
-- Cliente 40 (2 productos)
(40, 184, '2025-09-24', 1, 7.20),
(40, 109, '2025-09-24', 1, 3.50),
-- Cliente 45 (4 productos)
(45, 19, '2025-09-23', 2, 1.50),
(45, 49, '2025-09-23', 1, 4.00),
(45, 79, '2025-09-23', 3, 2.50),
(45, 119, '2025-09-23', 1, 8.30),
-- Cliente 50 (3 productos)
(50, 150, '2025-09-22', 1, 9.60),
(50, 180, '2025-09-22', 2, 2.40),
(50, 202, '2025-09-22', 4, 2.20),
-- Cliente 55 (4 productos)
(55, 12, '2025-09-24', 2, 1.00),
(55, 42, '2025-09-24', 1, 3.70),
(55, 72, '2025-09-24', 1, 3.10),
(55, 102, '2025-09-24', 3, 3.20),
-- Cliente 60 (6 productos)
(60, 6, '2025-09-23', 1, 3.50),
(60, 17, '2025-09-23', 2, 1.80),
(60, 56, '2025-09-23', 1, 1.80),
(60, 86, '2025-09-24', 2, 1.30),
(60, 116, '2025-09-24', 1, 3.40),
(60, 146, '2025-09-24', 1, 4.00),
-- Cliente 65 (3 productos)
(65, 18, '2025-09-22', 1, 2.10),
(65, 48, '2025-09-22', 2, 7.50),
(65, 78, '2025-09-22', 1, 5.50),
-- Cliente 70 (5 productos)
(70, 28, '2025-09-21', 1, 6.50),
(70, 58, '2025-09-21', 2, 5.90),
(70, 88, '2025-09-22', 1, 3.80),
(70, 118, '2025-09-23', 3, 2.50),
(70, 148, '2025-09-24', 1, 2.90),
-- Cliente 75 (2 productos)
(75, 15, '2025-09-24', 2, 2.50),
(75, 195, '2025-09-24', 1, 1.10),
-- Cliente 80 (4 productos)
(80, 5, '2025-09-23', 1, 0.95),
(80, 35, '2025-09-23', 3, 1.30),
(80, 65, '2025-09-23', 1, 4.90),
(80, 95, '2025-09-23', 2, 1.10),
-- Cliente 85 (6 productos)
(85, 21, '2025-09-22', 1, 2.00),
(85, 51, '2025-09-22', 2, 1.60),
(85, 81, '2025-09-22', 1, 1.00),
(85, 111, '2025-09-22', 1, 2.00),
(85, 141, '2025-09-22', 2, 1.50),
(85, 171, '2025-09-22', 1, 2.20),
-- Cliente 90 (3 productos)
(90, 211, '2025-09-24', 4, 2.00),
(90, 212, '2025-09-24', 1, 2.20),
(90, 199, '2025-09-24', 1, 2.10),
-- Cliente 95 (4 productos)
(95, 213, '2025-09-23', 2, 1.70),
(95, 216, '2025-09-23', 3, 2.00),
(95, 212, '2025-09-23', 2, 1.30),
(95, 208, '2025-09-23', 1, 1.70),
-- Cliente 100 (5 productos)
(100, 200, '2025-09-22', 12, 2.70),
(100, 184, '2025-09-23', 1, 7.20),
(100, 154, '2025-09-23', 2, 2.30),
(100, 124, '2025-09-24', 1, 4.50),
(100, 94, '2025-09-24', 1, 2.40),
-- Cliente 83 (4 productos)
(83, 77, '2025-09-24', 1, 2.50),
(83, 91, '2025-09-24', 2, 3.10),
(83, 105, '2025-09-24', 1, 4.80),
(83, 123, '2025-09-24', 3, 3.20),
-- Cliente 73 (3 productos)
(73, 55, '2025-09-23', 1, 5.70),
(73, 89, '2025-09-23', 2, 2.30),
(73, 112, '2025-09-23', 1, 5.80),
-- Cliente 62 (2 productos)
(62, 157, '2025-09-22', 2, 1.40),
(62, 197, '2025-09-22', 1, 2.20),
-- Cliente 48 (5 productos)
(48, 13, '2025-09-24', 1, 1.60),
(48, 43, '2025-09-24', 2, 6.80),
(48, 73, '2025-09-24', 1, 4.50),
(48, 103, '2025-09-24', 3, 2.60),
(48, 133, '2025-09-24', 1, 9.50);

INSERT INTO PromoEspecializada (promoId, productoId, categoriaId, marcaId) VALUES
(5, 31, NULL, NULL),  -- Descuento en Sprite (Promo PHYSIC50)
(8, 189, NULL, NULL), -- Descuento en Helado de Chocolate (SUMMER200)
(28, 1, NULL, NULL),  -- Descuento en Coca-Cola (RefreshLove)
(28, 2, NULL, NULL),  -- Descuento en Pepsi (RefreshLove)
(28, 29, NULL, NULL), -- Descuento en Sprite (RefreshLove)
(35, 102, NULL, NULL), -- Descuento en Agua Mineral Evian (SPORTSFORLIFE)
(35, 57, NULL, NULL), -- Descuento en Bebida Isotonica Gatorade (SPORTSFORLIFE)
(35, 16, NULL, NULL), -- Descuento en Gatorade (SPORTSFORLIFE)
(3, 107, NULL, NULL), -- Descuento en Papas Fritas Lays Clásicas (SUMMERT1M3)
(3, 138, NULL, NULL), -- Descuento en Energizante Monster (SUMMERT1M3)
(3, 45, NULL, NULL),  -- Descuento en Refresco Fanta (SUMMERT1M3)
(25, 109, NULL, NULL), -- Descuento en Manteca de Mani Skippy (SWEETLOVE)
(25, 184, NULL, NULL), -- Descuento en Miel Pura de Abeja (SWEETLOVE)
(24, 215, NULL, NULL), -- Descuento en Takoyakis (NIHON<3)
(24, 210, NULL, NULL), -- Descuento en Ramen Instantáneo (NIHON<3)
(24, 145, NULL, NULL), -- Descuento en Salsa de Soja Kikkoman (NIHON<3)
(17, 17, NULL, NULL),  -- Descuento en Chocolate Hershey's (OUT60)
(17, 168, NULL, NULL), -- Descuento en Chocolate Blanco Hershey (OUT60)

-- Promociones aplicadas a categorías específicas
(25, NULL, 5, NULL),  -- Descuento en Postres y Dulces (SWEETLOVE)
(25, NULL, 21, NULL), -- Descuento en Chocolates y Dulces (SWEETLOVE)
(22, NULL, 1, NULL),  -- Descuento en toda la tienda los viernes (FRIDAYLOVE)
(33, NULL, 10, NULL), -- Descuento en Despensa los sábados (SATURDAYMARKET)
(34, NULL, 3, NULL),  -- Descuento en Carnes el día del trabajador (WORKERDAY)
(35, NULL, 1, NULL),  -- Descuento en Bebidas en general (SPORTSFORLIFE)
(35, NULL, 6, NULL),  -- Descuento en Snacks (SPORTSFORLIFE)
(35, NULL, 10, NULL), -- Descuento en Despensa (SPORTSFORLIFE)
(27, NULL, 2, NULL),  -- Descuento en Lácteos (MityxMity)
(27, NULL, 5, NULL),  -- Descuento en Panadería (MityxMity)
(27, NULL, 17, NULL), -- Descuento en Helados (MityxMity)
(38, NULL, 6, NULL),  -- Descuento en Chucherías (FEALTERADAISBACK)
(38, NULL, 1, NULL),  -- Descuento en Bebidas (FEALTERADAISBACK) 
(31, NULL, 4, NULL),  -- Descuento en Frutas y Verduras (AUTUMN)
(31, NULL, 30, NULL), -- Descuento en Comida Preparada (AUTUMN)

-- Promociones aplicadas a marcas específicas
(5, NULL, NULL, 31),  -- Descuento en productos marca InfoCesta (PHYSIC50)
(25, NULL, NULL, 26), -- Descuento en Cheesecake Factory (SWEETLOVE)
(35, NULL, NULL, 28), -- Descuento en Gatorade (SPORTSFORLIFE)
(28, NULL, NULL, 1),  -- Descuento en Coca-Cola Company (RefreshLove)
(28, NULL, NULL, 2),  -- Descuento en PepsiCo (RefreshLove)
(5, NULL, NULL, 9),   -- Descuento en productos de P&G (PHYSIC50)
(5, NULL, NULL, 10),  -- Descuento en productos de Lays (PHYSIC50)
(5, NULL, NULL, 11),  -- Descuento en productos de Bimbo (PHYSIC50)
(5, NULL, NULL, 15),  -- Descuento en productos de Molinos (PHYSIC50)
(17, NULL, NULL, 14), -- Descuento en productos de Arcor (OUT60)
(17, NULL, NULL, 32), -- Descuento en productos de Hershey's (OUT60)
(27, NULL, NULL, 25), -- Descuento en productos de Polar (MityxMity)
(27, NULL, NULL, 26), -- Descuento en productos de Cheesecake Factory (MityxMity)
(27, NULL, NULL, 22), -- Descuento en productos de Arizona (MityxMity)
(31, NULL, NULL, 3),  -- Descuento en productos de Nestlé (AUTUMN)
(31, NULL, NULL, 12), -- Descuento en productos de La Serenísima (AUTUMN)
(31, NULL, NULL, 28), -- Descuento en productos de Gatorade (AUTU
(3, NULL, NULL, 31), -- Enjuague Bucal InfoCesta
(3, NULL, NULL, 31), -- Toallitas Húmedas InfoCesta
(3, NULL, NULL, 31), -- Agua saborizada a Fresa InfoCesta
(3, NULL, NULL, 31), -- Agua saborizada a Limón InfoCesta
(3, NULL, NULL, 31), -- Agua saborizada a Naranja InfoCesta
(3, NULL, NULL, 31), -- Protector Solar InfoCesta
(3, NULL, NULL, 31), -- Jabón para la Cara InfoCesta
(3, NULL, NULL, 31), -- Gel Antibacterial InfoCesta
(3, NULL, NULL, 31), -- Tapabocas InfoCesta
(3, NULL, NULL, 31), -- Ramen Instantáneo InfoCesta
(3, NULL, NULL, 31), -- Galletas con crema de Fresa InfoCesta
(3, NULL, NULL, 31), -- Marquesa de Chocolate InfoCesta
(3, NULL, NULL, 31), -- Helado de Torta Suiza InfoCesta
(3, NULL, NULL, 31), -- Nuggets Congelados InfoCesta
(3, NULL, NULL, 31); -- Takoyakis InfoCesta



/*
    Detail Tables and Final Associations - Group 4
    These are the most dependent tables. 
    Usually register transaction details and cannot exist without them.

    The following tables must be populated with procedures and triggers:
    - Pago
    - VentaFisica
    - FacturaPromo
    - OrdenOnline
    - OrdenDetalle
*/



