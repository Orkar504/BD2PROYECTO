CREATE TABLE DimCategoria (
    Categoria_id INT PRIMARY KEY,
    Nombre NVARCHAR(255)
);

CREATE TABLE DimMarca (
    Marca_ID INT PRIMARY KEY,
    Nombre NVARCHAR(255)
);

CREATE TABLE DimTienda (
    tienda_id INT PRIMARY KEY,
    nombre NVARCHAR(255),
    telefono NVARCHAR(20),
    email NVARCHAR(255),
    direccion NVARCHAR(255),
    ciudad NVARCHAR(100),
    estado NVARCHAR(100),
    codigo_postal NVARCHAR(20)
);

CREATE TABLE DimProducto (
    Producto_ID INT PRIMARY KEY,
    Producto_Nombre NVARCHAR(255),
    Marca_ID INT,
    CATEOGORIA_ID INT,
    modelo_anio INT,
    FOREIGN KEY (Marca_ID) REFERENCES DimMarca(Marca_ID),
    FOREIGN KEY (CATEOGORIA_ID) REFERENCES DimCategoria(Categoria_id)
);

CREATE TABLE DimCliente (
    cliente_id INT PRIMARY KEY,
    nombre NVARCHAR(255),
    apellido NVARCHAR(255),
    telefono NVARCHAR(20),
    email NVARCHAR(255),
    direccion NVARCHAR(255),
    ciudad NVARCHAR(100),
    estado NVARCHAR(100),
    codigo_postal NVARCHAR(20)
);

CREATE TABLE DimEmpleado (
    empleado_id INT PRIMARY KEY,
    nombre NVARCHAR(255),
    apellido NVARCHAR(255),
    telefono NVARCHAR(20),
    email NVARCHAR(255),
    activo TINYINT,
    tienda_id INT,
    manager_id INT,
    FOREIGN KEY (tienda_id) REFERENCES DimTienda(tienda_id),
    FOREIGN KEY (manager_id) REFERENCES DimEmpleado(empleado_id)
);

CREATE TABLE DIM_TIEMPO (
    FECHA_ID INT PRIMARY KEY,
    FECHA DATE,
    Dia_Semana NVARCHAR(20),
    MES INT,
    TRIMESTRE INT,
    ANIO INT
);

CREATE TABLE HECHOVENTAS (
    VENTA_ID INT PRIMARY KEY IDENTITY(1,1),
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
