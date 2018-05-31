USE ERLICHV1
GO

-- Tabla medicos --
CREATE TABLE MEDICOS
(
    codMedico INT IDENTITY(1,1) PRIMARY KEY NOT NULL, --codigo, aparece en una parte como numero, en otra como letras--
    nombre VARCHAR(200),
    numJVPM VARCHAR(50), --no se que indica--
    clinica VARCHAR(100),
    telefono VARCHAR(30),
    direccion VARCHAR(100),
    aplicarCom VARCHAR(2)
) --no se que indica, pero en el programa es true o false (si/no)--

-- Tabla empresa --
CREATE TABLE EMPRESA
(
    idEmpresa INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    telefono VARCHAR(30),
    nombre VARCHAR(200),
    codMedico INT FOREIGN KEY(codMedico) REFERENCES MEDICOS(codMedico),
    institucion VARCHAR(100),
    gerencia VARCHAR(100),
    tituloReporte VARCHAR(100)
)

-- tabla sexo, simplemente para que sea mas facil elegir uno u otro --
CREATE TABLE SEXO
(
    nSexo VARCHAR(1) PRIMARY KEY NOT NULL
)

-- tabla clientes --
CREATE TABLE CLIENTES
(
    idCliente INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre VARCHAR(200),
    edadAnos INT,
    edadMeses INT,
    nSexo VARCHAR(1) FOREIGN KEY (nSexo) REFERENCES SEXO(nSexo),
    descripcion VARCHAR(500),
    idEmpresa INT FOREIGN KEY(idEmpresa) REFERENCES EMPRESA(idEmpresa),
    afiliacion VARCHAR(100)
) --afiliacion a la empresa-

CREATE TABLE PRUEBA
(
    idPrueba INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre VARCHAR(100),
    precio DECIMAL(9,2)
)

CREATE TABLE ORDEN
(
    idOrden INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    idCliente INT,
    codMedico INT FOREIGN KEY (codMedico) REFERENCES MEDICOS(codMedico),
    estado VARCHAR(50),
    fecha DATE,
    detalle VARCHAR(100),
    idPrueba INT FOREIGN KEY (idPrueba) REFERENCES PRUEBA(idPrueba),
    cantidad INT,
)

CREATE TABLE COLOR
(
    nColor VARCHAR(25) PRIMARY KEY NOT NULL,
)

CREATE TABLE REL_PRUEBA_COLOR
(
    idRPruebaColor INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nColor VARCHAR(25) FOREIGN KEY (nColor) REFERENCES COLOR(nColor),
    idPrueba INT FOREIGN KEY (idPrueba) REFERENCES PRUEBA(idPrueba)
)

CREATE TABLE PRODUCTOS
(
    idProducto INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    estado VARCHAR(100),
    area VARCHAR(100),
    nombre VARCHAR(100),
    codigo VARCHAR(100),
    marca VARCHAR(100),
    maximo INT,
    minimo INT
)

CREATE TABLE TIPODEPAGO
(
    tipoPago VARCHAR(100) PRIMARY KEY NOT NULL
)

CREATE TABLE COMPRA
(
    idFactura INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    idProducto INT FOREIGN KEY (idProducto) REFERENCES PRODUCTOS(idProducto),
    idOrden INT FOREIGN KEY (idOrden) REFERENCES ORDEN (idOrden),
    tipoPago VARCHAR(100) FOREIGN KEY (tipoPago) REFERENCES TIPODEPAGO (tipoPago),
    descuento DECIMAL(9,2),
    costSIVA DECIMAL(9,2),
    setss VARCHAR(100), --no se que es, pero aparece como Sets en la parte de compra
    subTotal DECIMAL(9,2)
)

