USE ERLICHV1
GO
-- Tabla medicos --
CREATE TABLE MEDICOS(
codMedico int identity(1,1) primary key not null, --codigo, aparece en una parte como numero, en otra como letras--
nombre varchar(200),
numJVPM varchar(50), --no se que indica--
clinica varchar(100),
telefono varchar(30),
direccion varchar(100),
aplicarCom varchar(2)) --no se que indica, pero en el programa es true o false (si/no)--
-- Tabla empresa --
CREATE TABLE EMPRESA(
idEmpresa int identity(1,1) primary key not null,
telefono varchar(30),
nombre varchar(200),
codMedico int foreign key(codMedico) references MEDICOS(codMedico), 
institucion varchar(100),
gerencia varchar(100),
tituloReporte varchar(100))

CREATE TABLE SEXO(
nSexo varchar(1) primary key not null)

CREATE TABLE CLIENTES(
idCliente int identity(1,1) primary key not null,
nombre varchar(200),
edadAños int,
edadMeses int,
nSexo varchar(1) foreign key (nSexo) references SEXO(nSexo),
descripcion varchar(500),
idEmpresa int foreign key(idEmpresa) references EMPRESA(idEmpresa),
afiliacion varchar(100))
