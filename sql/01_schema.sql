CREATE DATABASE infocesta ;

/* 
    Independent tables - Group 1
    These are the most independent tables
    Don't depend of any other, therefore these tables must be creted first. 
    Inside this group order doesn't matter.    
*/

CREATE TABLE IF NOT EXISTS Pais (
    id SERIAL ,
    nombre VARCHAR(100) NOT NULL,

    PRIMARY KEY (id) 
) ;

CREATE TABLE IF NOT EXISTS FormaPago (
    id SERIAL ,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100),

    PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS TipoEnvio (
    id SERIAL ,
    nombreEnvio VARCHAR(100) NOT NULL,
    tiempoEstimadoEntrega INTEGER CHECK (tiempoEstimadoEntrega BETWEEN 0 AND 23),
    costoEnvio DECIMAL(10, 1) CHECK (costoEnvio >= 0),

     PRIMARY KEY (id)  
) ;

CREATE TABLE IF NOT EXISTS Marca (
    id SERIAL ,
    nombre VARCHAR(100) NOT NULL ,
    descripcion VARCHAR(100),

     PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS Categoria (
    id SERIAL ,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100),

    PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS Cargo (
    id SERIAL ,
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
    id SERIAL ,
    nombre VARCHAR(100) NOT NULL,
    paisId INTEGER,

    PRIMARY KEY (id),
    CONSTRAINT fk_pais_id FOREIGN KEY (paisId) REFERENCES Pais(id)
) ;

CREATE TABLE IF NOT EXISTS Ciudad (
    id SERIAL ,
    nombre VARCHAR(100) NOT NULL,
    estadoId INTEGER,

    PRIMARY KEY (id),   
    CONSTRAINT fk_estado_id FOREIGN KEY (estadoId) REFERENCES Estado(id)
) ;

CREATE TABLE IF NOT EXISTS Sucursal (
    id SERIAL ,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(14),
    horaAbrir INTEGER CHECK (horaAbrir BETWEEN 0 AND 23),
    horaCerrar INTEGER CHECK (horaCerrar BETWEEN 0 AND 23),
    ciudadId INTEGER,

    PRIMARY KEY (id),
    CONSTRAINT fk_ciudad_id FOREIGN KEY (ciudadId) REFERENCES Ciudad(id)
);

CREATE TABLE IF NOT EXISTS Empleado (
    id SERIAL ,
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
    id SERIAL ,
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
    id SERIAL ,
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

CREATE TABLE IF NOT EXISTS Promo (
    id SERIAL ,
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

CREATE TABLE IF NOT EXISTS Cliente(
    id SERIAL ,
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
    id SERIAL ,
    productoId INTEGER,
    cantidad INTEGER CHECK (cantidad >= 0),

    PRIMARY KEY (id),
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id)
);

CREATE TABLE IF NOT EXISTS ClienteDireccion (
    id SERIAL ,
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
    id INTEGER ,
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
    id SERIAL ,
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

CREATE TABLE IF NOT EXISTS Factura (
    id INTEGER ,
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


