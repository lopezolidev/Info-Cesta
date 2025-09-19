CREATE DATABASE infocesta ;

/* 
    Independent tables - Group 1
    These are the most independent tables
    Don't depend of any other, therefore these tables must be creted first. 
    Inside this group order doesn't matter.    
*/

CREATE TABLE IF NOT EXISTS Pais (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL 
) ;

CREATE TABLE IF NOT EXISTS FormaPago (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100)
) ;

CREATE TABLE IF NOT EXISTS TipoEnvio (
    id SERIAL PRIMARY KEY,
    nombreEnvio VARCHAR(100) NOT NULL,
    tiempoEstimadoEntrega INTEGER CHECK (tiempoEstimadoEntrega BETWEEN 0 AND 23),
    costoEnvio DECIMAL(10, 1) CHECK (costoEnvio >= 0)
) ;

CREATE TABLE IF NOT EXISTS Marca (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL ,
    descripcion VARCHAR(100)
) ;

CREATE TABLE IF NOT EXISTS Categoria (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100)
) ;

CREATE TABLE IF NOT EXISTS Cargo (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100),
    salarioBasePorHora DECIMAL(10, 2) CHECK (salarioBasePorHora >= 0)
);

/* 
    Main entities - Group 2
    These tables depend on the catalog tables from first group. 
    These are the pillars of our database
*/

CREATE TABLE IF NOT EXISTS Estado (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    paisId INTEGER,
    CONSTRAINT fk_pais_id FOREIGN KEY (paisId) REFERENCES Pais(id)
) ;

CREATE TABLE IF NOT EXISTS Ciudad (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    estadoId INTEGER,
    CONSTRAINT fk_estado_id FOREIGN KEY (estadoId) REFERENCES Estado(id)
) ;

CREATE TABLE IF NOT EXISTS Sucursal (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(14),
    horaAbrir INTEGER CHECK (horaAbrir BETWEEN 0 AND 23),
    horaCerrar INTEGER CHECK (horaCerrar BETWEEN 0 AND 23),
    ciudadId INTEGER,
    CONSTRAINT fk_ciudad_id FOREIGN KEY (ciudadId) REFERENCES Ciudad(id)
);

CREATE TABLE IF NOT EXISTS Empleado (
    id SERIAL PRIMARY KEY,
    CI INTEGER UNIQUE, 
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    direccionCorta VARCHAR(100),
    cargoId INTEGER,
    CONSTRAINT fk_cargo_id FOREIGN KEY (cargoId) REFERENCES Cargo(id), 
    empleadoSupervisorId INTEGER,
    CONSTRAINT fk_empleadoSupervisor_id FOREIGN KEY (empleadoSupervisorId) REFERENCES Empleado(id), 
    sucursalId INTEGER,
    CONSTRAINT fk_sucursal_id FOREIGN KEY (sucursalId) REFERENCES Sucursal(id),
    fechaContrato DATE,
    bonoFijoMensual DECIMAL(10, 2) CHECK (bonoFijoMensual >= 0),
    horaInicio INTEGER CHECK (horaInicio BETWEEN 0 AND 23),
    horaFin INTEGER CHECK (horaFin BETWEEN 0 AND 23),
    cantidadDiasTrabajoPorSemana INTEGER CHECK (cantidadDiasTrabajoPorSemana BETWEEN 1 AND 7 )
);

CREATE TABLE IF NOT EXISTS Proveedor (
    id SERIAL PRIMARY KEY,
    RIF VARCHAR(15) UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(100),
    telefono VARCHAR(14),
    correo VARCHAR(100) UNIQUE,
    ciudadId INTEGER,
    CONSTRAINT fk_ciudad_id FOREIGN KEY (ciudadId) REFERENCES Ciudad(id)
);

CREATE TABLE IF NOT EXISTS Producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE NOT NULL,
    codigoBarra VARCHAR(20) UNIQUE NOT NULL,
    descripcion VARCHAR(100),
    tipoPrecio VARCHAR(9) CHECK (tipoPrecio IN ('PorUnidad', 'PorPesoKg')),
    precioPor DECIMAL(10, 2) NOT NULL CHECK(precioPor >= 0),
    esExentoIVA BOOL NOT NULL,
    categoriaId INTEGER,
    CONSTRAINT fk_categoria_id FOREIGN KEY (categoriaId) REFERENCES Categoria(id),
    marcaId INTEGER,
    CONSTRAINT fk_marca_id FOREIGN KEY (marcaId) REFERENCES Marca(id)
);

CREATE TABLE IF NOT EXISTS Promo (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    slogan VARCHAR(100),
    codigo VARCHAR(10) UNIQUE,
    tipoDescuento VARCHAR(10) CHECK (tipoDescuento IN ('Porcentaje', 'Fijo')),
    valorDescuento DECIMAL(10, 2) CHECK (valorDescuento >= 0),
    fechaInicio DATE,
    fechaFin DATE,
    tipoPromocion VARCHAR(6) CHECK (tipoPromocion IN ('Online', 'Física', 'Ambos'))
);

CREATE TABLE IF NOT EXISTS Cliente(
    id SERIAL PRIMARY KEY,
    CI INTEGER UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    correo VARCHAR(100) UNIQUE NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    fechaNacimiento DATE,
    fechaRegistro DATE
);

/*
    Transaction and Relation Tables - Group 3
    These are the tables that connect everything. 
    Depend on the entities from second group and sometimes between them. 
    They're the heart of our business logic.
*/

CREATE TABLE IF NOT EXISTS Inventario (
    id SERIAL PRIMARY KEY,
    productoId INTEGER,
    CONSTRAINT fk_producto_id FOREIGN KEY (productoId) REFERENCES Producto(id),
    cantidad INTEGER CHECK (cantidad >= 0)
);

CREATE TABLE IF NOT EXISTS ClienteDireccion (
    id SERIAL PRIMARY KEY,
    clienteId INTEGER,
    CONSTRAINT fk_cliente_id FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    tipoDireccion VARCHAR(11) CHECK (tipoDireccion IN ('Facturación', 'Envío')),
    dirLinea1 VARCHAR(100) NOT NULL,
    ciudadId INTEGER,
    CONSTRAINT fk_ciudad_id FOREIGN KEY (ciudadId) REFERENCES Ciudad(id)
);

/* To continue:
Table Carrito {
  clienteId integer [pk, ref: > Cliente.id]
  productoId integer [pk, ref: > Producto.id]
  fechaAgregado date [not null]
  cantidad integer [note: 'CHECK (cantidad >= 0)']
  precioPor decimal(10,2) [not null, note: 'CHECK (precioPor >= 0)']
}

*/