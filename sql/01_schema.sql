CREATE DATABASE infocesta ;

/* 
    Independent tables - Group 1
    These are the most independent tables
    Don't depend of any other, therefore these tables must be creted first. 
    Inside this group order doesn't matter.    
*/

CREATE TABLE IF NOT EXISTS Pais (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) NOT NULL,

    PRIMARY KEY (id) 
) ;

CREATE TABLE IF NOT EXISTS FormaPago (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100),

    PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS TipoEnvio (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombreEnvio VARCHAR(100) NOT NULL,
    tiempoEstimadoEntrega INTEGER CHECK (tiempoEstimadoEntrega BETWEEN 0 AND 23),
    costoEnvio DECIMAL(10, 1) CHECK (costoEnvio >= 0),

     PRIMARY KEY (id)  
) ;

CREATE TABLE IF NOT EXISTS Marca (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) NOT NULL ,
    descripcion VARCHAR(100),

     PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS Categoria (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100),

    PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS Cargo (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100),
    salarioBasePorHora DECIMAL(10, 2) CHECK (salarioBasePorHora >= 0),

     PRIMARY KEY (id)    
);

/* 
    Main entities - Group 2
    These tables depend on the catalog tables from first group. 
    These are the pillars of our database
*/

CREATE TABLE IF NOT EXISTS Estado (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) NOT NULL,
    paisId INTEGER,

    PRIMARY KEY (id),
    CONSTRAINT fk_pais_id FOREIGN KEY (paisId) REFERENCES Pais(id)
) ;

CREATE TABLE IF NOT EXISTS Ciudad (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) NOT NULL,
    estadoId INTEGER,

    PRIMARY KEY (id),   
    CONSTRAINT fk_estado_id FOREIGN KEY (estadoId) REFERENCES Estado(id)
) ;

CREATE TABLE IF NOT EXISTS Sucursal (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(16),
    horaAbrir INTEGER CHECK (horaAbrir BETWEEN 0 AND 23),
    horaCerrar INTEGER CHECK (horaCerrar BETWEEN 0 AND 23),
    ciudadId INTEGER,

    PRIMARY KEY (id),
    CONSTRAINT fk_ciudad_id FOREIGN KEY (ciudadId) REFERENCES Ciudad(id)
);

CREATE TABLE IF NOT EXISTS Empleado (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    CI INTEGER UNIQUE, 
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    direccionCorta VARCHAR(100),
    cargoId INTEGER,
    empleadoSupervisorId INTEGER,
    sucursalId INTEGER,
    fechaContrato DATE,
    bonoFijoMensual DECIMAL(10, 2) CHECK (bonoFijoMensual >= 0),
    horaInicio INTEGER CHECK (horaInicio BETWEEN 0 AND 23),
    horaFin INTEGER CHECK (horaFin BETWEEN 0 AND 23),
    cantidadDiasTrabajoPorSemana INTEGER CHECK (cantidadDiasTrabajoPorSemana BETWEEN 1 AND 7 ),

    PRIMARY KEY (id),   
    CONSTRAINT fk_cargo_id FOREIGN KEY (cargoId) REFERENCES Cargo(id),
    CONSTRAINT fk_empleadoSupervisor_id FOREIGN KEY (empleadoSupervisorId) REFERENCES Empleado(id), 
    CONSTRAINT fk_sucursal_id FOREIGN KEY (sucursalId) REFERENCES Sucursal(id)
);

CREATE TABLE IF NOT EXISTS Proveedor (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    RIF VARCHAR(15) UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(100),
    telefono VARCHAR(14),
    correo VARCHAR(100) UNIQUE,
    ciudadId INTEGER,

    PRIMARY KEY (id),
    CONSTRAINT fk_ciudad_id FOREIGN KEY (ciudadId) REFERENCES Ciudad(id)
);

CREATE TABLE IF NOT EXISTS Producto (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) UNIQUE NOT NULL,
    codigoBarra VARCHAR(20) UNIQUE NOT NULL,
    descripcion VARCHAR(100),
    tipoPrecio VARCHAR(9) CHECK (tipoPrecio IN ('PorUnidad', 'PorPesoKg')),
    precioPor DECIMAL(10, 2) NOT NULL CHECK(precioPor >= 0),
    esExentoIVA BOOL NOT NULL,
    categoriaId INTEGER,
    marcaId INTEGER,

    PRIMARY KEY (id),
    CONSTRAINT fk_categoria_id FOREIGN KEY (categoriaId) REFERENCES Categoria(id),
    CONSTRAINT fk_marca_id FOREIGN KEY (marcaId) REFERENCES Marca(id)
);

ALTER TABLE Producto 
DROP CONSTRAINT producto_nombre_key ;
-- this due to the problem of repeated names for different products

CREATE TABLE IF NOT EXISTS Promo (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    nombre VARCHAR(100) NOT NULL,
    slogan VARCHAR(100),
    codigo VARCHAR(10) UNIQUE,
    tipoDescuento VARCHAR(10) CHECK (tipoDescuento IN ('Porcentaje', 'Fijo')),
    valorDescuento DECIMAL(10, 2) CHECK (valorDescuento >= 0),
    fechaInicio DATE,
    fechaFin DATE,
    tipoPromocion VARCHAR(6) CHECK (tipoPromocion IN ('Online', 'Física', 'Ambos')),

    PRIMARY KEY (id)
);

ALTER TABLE Promo
ALTER COLUMN codigo SET DATA TYPE VARCHAR(18)  ,
ALTER COLUMN slogan SET DATA TYPE VARCHAR(150) ;
-- this due to the problem of short codes and slogans for different promos
-- this due to the problem of short codes for different promos


CREATE TABLE IF NOT EXISTS Cliente(
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    CI INTEGER UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    correo VARCHAR(100) UNIQUE NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    fechaNacimiento DATE,
    fechaRegistro DATE,

    PRIMARY KEY (id)
);

/*
    Transaction and Relation Tables - Group 3
    These are the tables that connect everything. 
    Depend on the entities from second group and sometimes between them. 
    They're the heart of our business logic.
*/

CREATE TABLE IF NOT EXISTS Inventario (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    productoId INTEGER,
    cantidad INTEGER CHECK (cantidad >= 0),

    PRIMARY KEY (id),
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id)
);

CREATE TABLE IF NOT EXISTS ClienteDireccion (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    clienteId INTEGER,
    tipoDireccion VARCHAR(11) CHECK (tipoDireccion IN ('Facturación', 'Envío')),
    dirLinea1 VARCHAR(100) NOT NULL,
    ciudadId INTEGER,

    PRIMARY KEY (id),   
    CONSTRAINT fk_cliente_id FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    CONSTRAINT fk_ciudad_id FOREIGN KEY (ciudadId) REFERENCES Ciudad(id)
);

CREATE TABLE IF NOT EXISTS Carrito (
    clienteId INTEGER,
    productoId INTEGER,
    fechaAgregado DATE NOT NULL,
    cantidad INTEGER CHECK (cantidad >= 0),
    precioPor DECIMAL(10, 2) NOT NULL CHECK (precioPor >= 0),

    PRIMARY KEY (clienteId, productoId),
    CONSTRAINT fk_cliente_id FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id)
);


CREATE TABLE IF NOT EXISTS HistorialClienteProducto (
    clienteId INTEGER,
    productoId INTEGER,
    fecha TIMESTAMP,
    tipoAccion VARCHAR(8) NOT NULL CHECK (tipoAccion IN ('Búsqueda', 'Carrito', 'Compra')),
    
    PRIMARY KEY (clienteId, productoId, fecha),
    CONSTRAINT fk_cliente_id FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id)
);


CREATE TABLE IF NOT EXISTS ProveedorProducto (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    proveedorId INTEGER,  
    productoId INTEGER ,
    fechaCompra TIMESTAMP NOT NULL,
    precioPor DECIMAL(10, 2) NOT NULL CHECK (precioPor >= 0),
    cantidad INTEGER NOT NULL CHECK (cantidad >= 0),

    PRIMARY KEY (id),
    CONSTRAINT fk_proveedor_id FOREIGN KEY (proveedorId) REFERENCES Proveedor(id),
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id)
);

CREATE TABLE IF NOT EXISTS ProductoRecomendadoParaProducto (
    productoId INTEGER ,
    productoRecomendadoId INTEGER, 
    mensaje VARCHAR(100),

    PRIMARY KEY (productoId, productoRecomendadoId),
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id),
    CONSTRAINT fk_productoRecomendado_id FOREIGN KEY (productoRecomendadoId) REFERENCES Producto(id)
);

CREATE TABLE IF NOT EXISTS ProductoRecomendadoParaCliente (
    clienteId INTEGER ,
    productoRecomendadoId INTEGER ,
    fechaRecomendacion TIMESTAMP ,
    mensaje VARCHAR(100),

    PRIMARY KEY (clienteId, productoRecomendadoId, fechaRecomendacion),
    CONSTRAINT fk_cliente_id FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    CONSTRAINT fk_productoRecomendado_id FOREIGN KEY (productoRecomendadoId) REFERENCES Producto(id)
);


CREATE TABLE IF NOT EXISTS PromoEspecializada (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    promoId INTEGER,
    productoid INTEGER ,
    categoriaId INTEGER ,  
    marcaId INTEGER,

    PRIMARY KEY (id),
    CONSTRAINT fk_promo_id FOREIGN KEY (promoId) REFERENCES Promo(id),
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id),
    CONSTRAINT fk_categoria_id FOREIGN KEY (categoriaId) REFERENCES Categoria(id),
    CONSTRAINT fk_marca_id FOREIGN KEY (marcaId) REFERENCES Marca(id)
);

ALTER TABLE PromoEspecializada
ADD CONSTRAINT chk_promo_un_solo_objetivo
CHECK (
    (CASE WHEN productoId IS NOT NULL THEN 1 ELSE 0 END) +
    (CASE WHEN categoriaId IS NOT NULL THEN 1 ELSE 0 END) +
    (CASE WHEN marcaId IS NOT NULL THEN 1 ELSE 0 END) = 1
); -- checks that only one of the three fields is not null → the promo is specialized in only one of them

CREATE TABLE IF NOT EXISTS Factura (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    fechaEmision TIMESTAMP NOT NULL,
    clienteId INTEGER,
    subTotal DECIMAL(10, 2) NOT NULL CHECK (subTotal >= 0),
    montoDescuentoTotal DECIMAL(10, 2) NOT NULL CHECK (montoDescuentoTotal >= 0),
    porcentajeIVA DECIMAL(10, 2) NOT NULL CHECK (porcentajeIVA >= 0),  
    montoIVA DECIMAL(10,2) NOT NULL CHECK (montoIVA >= 0),
    montoTotal DECIMAL(10,2) NOT NULL CHECK (montoTotal >= 0),  

    PRIMARY KEY (id),
    CONSTRAINT fk_cliente_id FOREIGN KEY (clienteId) REFERENCES Cliente(id)
);


/* 
    Detail Tables and Final Associations - Group 4
    These are the most dependent tables. 
    Usually register transaction details and cannot exist without them.
*/

CREATE TABLE IF NOT EXISTS Pago (
    facturaId INTEGER NOT NULL,
    nroTransaccion INTEGER NOT NULL UNIQUE CHECK (nroTransaccion >= 0),
    metodoPagoId INTEGER,

    PRIMARY KEY (facturaId) ,
    CONSTRAINT fk_factura_id FOREIGN KEY (facturaId) REFERENCES Factura(id),
    CONSTRAINT fk_metodoPago_id FOREIGN KEY (metodoPagoId) REFERENCES FormaPago(id)
);

CREATE TABLE IF NOT EXISTS VentaFisica (
    facturaId INTEGER NOT NULL,
    sucursalId INTEGER NOT NULL,
    empleadoId INTEGER NOT NULL,

    PRIMARY KEY (facturaId, sucursalId, empleadoId),
    CONSTRAINT fk_factura_id FOREIGN KEY (facturaId) REFERENCES Factura(id),
    CONSTRAINT fk_sucursal_id FOREIGN KEY (sucursalId) REFERENCES Sucursal(id),
    CONSTRAINT fk_empleado_id FOREIGN KEY (empleadoId) REFERENCES Empleado(id)
    
);

CREATE TABLE IF NOT EXISTS FacturaDetalle (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    facturaId INTEGER NOT NULL,
    productoId INTEGER NOT NULL,
    cantidad INTEGER NOT NULL CHECK (cantidad >= 0),
    precioPor DECIMAL(10, 2) NOT NULL CHECK (precioPor >= 0) ,

    PRIMARY KEY (id),
    CONSTRAINT fk_factura_id FOREIGN KEY (facturaId) REFERENCES Factura(id),
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id)
);

CREATE TABLE IF NOT EXISTS FacturaPromo (
    facturaId INTEGER NOT NULL ,
    promoId INTEGER NOT NULL ,

    PRIMARY KEY (facturaId, promoId),
    CONSTRAINT fk_factura_id FOREIGN KEY (facturaId) REFERENCES Factura(id),
    CONSTRAINT fk_promo_id FOREIGN KEY (promoId) REFERENCES Promo(id)
);

CREATE TABLE IF NOT EXISTS OrdenOnline (
    id INTEGER GENERATED ALWAYS AS IDENTITY ,
    clienteId INTEGER NOT NULL,
    nroOrden VARCHAR(50) NOT NULL UNIQUE,
    fechaCreacion TIMESTAMP NOT NULL ,
    tipoEnvioId INTEGER NOT NULL ,
    facturaId INTEGER , 


    PRIMARY KEY (id),
    CONSTRAINT fk_cliente_id FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    CONSTRAINT fk_tipoEnvio_id FOREIGN KEY (tipoEnvioId) REFERENCES TipoEnvio(id),
    CONSTRAINT fk_factura_id FOREIGN KEY (facturaId) REFERENCES Factura(id)
);


CREATE TABLE IF NOT EXISTS OrdenDetalle (
    id INTEGER GENERATED ALWAYS AS IDENTITY , 
    ordenId INTEGER NOT NULL,
    productoId INTEGER NOT NULL,
    cantidad INTEGER NOT NULL CHECK (cantidad >= 0),
    precioPor DECIMAL(10, 2) NOT NULL CHECK (precioPor >= 0) ,

    PRIMARY KEY (id) ,
    CONSTRAINT fk_orden_id FOREIGN KEY (ordenId) REFERENCES OrdenOnline(id),
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id)
);
