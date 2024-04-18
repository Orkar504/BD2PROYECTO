-- Tabla DimCategoria
CREATE TABLE DimCategoria (
    Categoria_id INT PRIMARY KEY,
    Nombre NVARCHAR2(255)
);

-- Tabla DimMarca
CREATE TABLE DimMarca (
    Marca_ID INT PRIMARY KEY,
    Nombre NVARCHAR2(255)
);

-- Tabla DimTienda
CREATE TABLE DimTienda (
    tienda_id INT PRIMARY KEY,
    nombre NVARCHAR2(255),
    telefono NVARCHAR2(20),
    email NVARCHAR2(255),
    direccion NVARCHAR2(255),
    ciudad NVARCHAR2(100),
    estado NVARCHAR2(100),
    codigo_postal NVARCHAR2(20)
);

-- Tabla DimProducto
CREATE TABLE DimProducto (
    Producto_ID INT PRIMARY KEY,
    Producto_Nombre NVARCHAR2(255),
    Marca_ID INT,
    CATEGORIA_ID INT,
    modelo_anio INT,
    FOREIGN KEY (Marca_ID) REFERENCES DimMarca(Marca_ID),
    FOREIGN KEY (CATEGORIA_ID) REFERENCES DimCategoria(Categoria_id)
);

-- Tabla DimCliente
CREATE TABLE DimCliente (
    cliente_id INT PRIMARY KEY,
    nombre NVARCHAR2(255),
    apellido NVARCHAR2(255),
    telefono NVARCHAR2(20),
    email NVARCHAR2(255),
    direccion NVARCHAR2(255),
    ciudad NVARCHAR2(100),
    estado NVARCHAR2(100),
    codigo_postal NVARCHAR2(20)
);

-- Tabla DimEmpleado
CREATE TABLE DimEmpleado (
    empleado_id INT PRIMARY KEY,
    nombre NVARCHAR2(255),
    apellido NVARCHAR2(255),
    telefono NVARCHAR2(20),
    email NVARCHAR2(255),
    activo NUMBER(1,0),
    tienda_id INT,
    FOREIGN KEY (tienda_id) REFERENCES DimTienda(tienda_id)
);

-- Tabla DIM_TIEMPO
CREATE TABLE DIM_TIEMPO (
    FECHA_ID INT PRIMARY KEY,
    FECHA DATE,
    Dia_Semana NVARCHAR2(20),
    MES INT,
    TRIMESTRE INT,
    ANIO INT
);

-- Tabla HECHOVENTAS
CREATE TABLE HECHOVENTAS (
    VENTA_ID INT PRIMARY KEY,
    FECHA_ID INT,
    PRODUCTO_ID INT,
    CLIENTE_ID INT,
    TIENDA_ID INT,
    EMPLEADO_ID INT,
    CANTIDAD INT,
    PRECIO_UNITARIO DECIMAL(10,2),
    DESCUENTO DECIMAL(4,2) DEFAULT 0 NOT NULL,
    MONTO_TOTAL DECIMAL(10,2),
    FOREIGN KEY (FECHA_ID) REFERENCES DIM_TIEMPO(FECHA_ID),
    FOREIGN KEY (PRODUCTO_ID) REFERENCES DimProducto(Producto_ID),
    FOREIGN KEY (CLIENTE_ID) REFERENCES DimCliente(cliente_id),
    FOREIGN KEY (TIENDA_ID) REFERENCES DimTienda(tienda_id),
    FOREIGN KEY (EMPLEADO_ID) REFERENCES DimEmpleado(empleado_id)
);
