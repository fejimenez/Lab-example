USE [ERLICHDB]
GO
/****** Object:  Table [dbo].[_Referencia_Examen]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Referencia_Examen](
	[Examen] [varchar](25) NOT NULL,
	[Linea] [int] NOT NULL,
	[Edad] [varchar](15) NOT NULL,
	[Sexo] [varchar](2) NOT NULL,
	[Referencia] [varchar](max) NULL,
	[Anio] [bit] NULL,
	[Mes] [bit] NULL,
	[Dia] [bit] NULL,
	[Comentario] [bit] NULL,
 CONSTRAINT [PK__Referencia_Examen] PRIMARY KEY CLUSTERED 
(
	[Examen] ASC,
	[Linea] ASC,
	[Edad] ASC,
	[Sexo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Permiso]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Permiso](
	[Permiso] [varchar](10) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [PK__Permiso] PRIMARY KEY CLUSTERED 
(
	[Permiso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Perfil_Examen]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Perfil_Examen](
	[Perfil] [varchar](25) NOT NULL,
	[Examen] [varchar](25) NOT NULL,
	[Linea] [int] NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK__Perfil_Examen] PRIMARY KEY CLUSTERED 
(
	[Perfil] ASC,
	[Examen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Perfil]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Perfil](
	[Perfil] [varchar](25) NULL,
	[Descripcion] [varchar](250) NULL,
	[Vigente] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Paciente]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Paciente](
	[paciente] [varchar](25) NOT NULL,
	[nombre] [varchar](100) NULL,
	[sexo] [varchar](1) NULL,
	[fechaNacimiento] [datetime] NULL,
	[primerApellido] [varchar](20) NULL,
	[segundoApellido] [varchar](20) NULL,
	[Direccion] [varchar](300) NULL,
	[Telefono] [varchar](10) NULL,
	[Email] [varchar](250) NULL,
 CONSTRAINT [PK__PACIENTE] PRIMARY KEY CLUSTERED 
(
	[paciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Orden_Tipo_Pago]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Orden_Tipo_Pago](
	[tipoOrden] [varchar](10) NOT NULL,
	[Orden] [varchar](25) NOT NULL,
	[tipoPago] [varchar](15) NOT NULL,
	[Valor] [money] NULL,
 CONSTRAINT [PK__Orden_Tipo_Pago] PRIMARY KEY CLUSTERED 
(
	[tipoOrden] ASC,
	[Orden] ASC,
	[tipoPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Orden]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Orden](
	[tipoOrden] [varchar](10) NOT NULL,
	[Orden] [varchar](25) NOT NULL,
	[fechaRecepcion] [datetime] NULL,
	[Paciente] [varchar](50) NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido1] [varchar](50) NULL,
	[Apellido2] [varchar](50) NULL,
	[Genero] [varchar](2) NULL,
	[tipoEdad] [varchar](1) NULL,
	[Edad] [varchar](5) NULL,
	[codMedico] [varchar](25) NULL,
	[codServicio] [varchar](25) NULL,
	[habCama] [varchar](25) NULL,
	[Observacion] [varchar](250) NULL,
	[Descuento] [float] NULL,
	[Telefono] [varchar](10) NULL,
	[Direccion] [varchar](300) NULL,
	[Email] [varchar](250) NULL,
	[Finalizada] [bit] NULL,
	[TipoPaciente] [varchar](25) NULL,
	[relFactura] [int] NULL,
 CONSTRAINT [PK__Orden] PRIMARY KEY CLUSTERED 
(
	[tipoOrden] ASC,
	[Orden] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Medico]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Medico](
	[codMedico] [varchar](25) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Vigente] [bit] NULL,
 CONSTRAINT [PK_MEDICO] PRIMARY KEY CLUSTERED 
(
	[codMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Listado_Reporte]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Listado_Reporte](
	[Id] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Reporte] [varchar](100) NULL,
 CONSTRAINT [PK__Listado_Reporte] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Licencia]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Licencia](
	[licencia] [varchar](150) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_FacNumeracion]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_FacNumeracion](
	[Tipo] [varchar](10) NOT NULL,
	[Serie] [varchar](50) NOT NULL,
	[Inicio] [int] NOT NULL,
	[Fin] [int] NOT NULL,
	[Comentario] [varchar](max) NULL,
	[Vigente] [bit] NULL,
 CONSTRAINT [PK__FacNumeracion] PRIMARY KEY CLUSTERED 
(
	[Tipo] ASC,
	[Serie] ASC,
	[Inicio] ASC,
	[Fin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_FacCC]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_FacCC](
	[Tipo] [varchar](10) NOT NULL,
	[Serie] [varchar](50) NOT NULL,
	[Documento] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[Cliente] [varchar](100) NULL,
	[Direccion] [varchar](150) NULL,
	[Registro] [varchar](25) NULL,
	[MunicDepto] [varchar](50) NULL,
	[Giro] [varchar](100) NULL,
	[NotaRemision] [varchar](100) NULL,
	[NitDui] [varchar](25) NULL,
	[CondOperacion] [varchar](50) NULL,
	[VentaCuentaDe] [varchar](50) NULL,
	[status] [int] NULL,
	[Iva] [float] NULL,
 CONSTRAINT [PK__FacCC] PRIMARY KEY CLUSTERED 
(
	[Tipo] ASC,
	[Serie] ASC,
	[Documento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Examen]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Examen](
	[Examen] [varchar](25) NOT NULL,
	[Area] [varchar](25) NULL,
	[Nombre] [varchar](100) NULL,
	[Vigente] [bit] NULL,
	[Tipo] [varchar](1) NULL,
	[F2] [varchar](250) NULL,
	[F3] [varchar](250) NULL,
	[F4] [varchar](250) NULL,
	[F5] [varchar](250) NULL,
	[F6] [varchar](250) NULL,
	[F7] [varchar](250) NULL,
	[F8] [varchar](250) NULL,
	[Precio] [money] NULL,
	[Confidencial] [bit] NULL,
	[ImprimirTitulo] [bit] NULL,
	[ordenamientoPrueba] [varchar](2) NULL,
	[precioPerfil] [bit] NULL,
	[Referida] [bit] NULL,
	[Etiqueta] [varchar](15) NULL,
 CONSTRAINT [PK_Examen] PRIMARY KEY CLUSTERED 
(
	[Examen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Etiqueta]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Etiqueta](
	[Id] [varchar](15) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Muestra] [varchar](5) NULL,
	[Disenio] [varchar](500) NULL,
	[Vigente] [bit] NULL,
 CONSTRAINT [PK__Etiqueta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Detalle_Orden]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Detalle_Orden](
	[tipoOrden] [varchar](10) NOT NULL,
	[Orden] [varchar](25) NOT NULL,
	[Linea] [int] NOT NULL,
	[codExamen] [varchar](25) NULL,
	[Tipo] [varchar](1) NULL,
	[fechaRecepcion] [datetime] NULL,
	[Precio] [money] NULL,
	[Status] [varchar](2) NULL,
	[UsuarioIngresa] [varchar](25) NULL,
	[Validado] [bit] NULL,
	[UsuarioValida] [varchar](25) NULL,
	[Impreso] [bit] NULL,
	[UsuarioImprime] [varchar](25) NULL,
	[Referida] [bit] NULL,
 CONSTRAINT [PK__Detalle_Orden] PRIMARY KEY CLUSTERED 
(
	[tipoOrden] ASC,
	[Orden] ASC,
	[Linea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Detalle_FacCC]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Detalle_FacCC](
	[Tipo] [varchar](10) NOT NULL,
	[Serie] [varchar](50) NOT NULL,
	[Documento] [int] NOT NULL,
	[Linea] [int] NOT NULL,
	[Cantidad] [int] NULL,
	[Examen] [varchar](25) NULL,
	[Descripcion] [varchar](100) NULL,
	[PrecioUnitario] [money] NULL,
	[VentasAfectadas] [money] NULL,
 CONSTRAINT [PK__Detalle_FacCC] PRIMARY KEY CLUSTERED 
(
	[Tipo] ASC,
	[Serie] ASC,
	[Documento] ASC,
	[Linea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Detalle_Examen]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Detalle_Examen](
	[Prueba] [varchar](25) NOT NULL,
	[Linea] [int] NOT NULL,
	[Nombre] [varchar](160) NULL,
	[Medida] [varchar](150) NULL,
	[opcionesCaptura] [varchar](max) NULL,
	[Ordenamiento] [int] NULL,
	[noImprimirReferencia] [bit] NULL,
	[Vigente] [bit] NULL,
	[Subtitulo] [bit] NULL,
	[miSubtitulo] [varchar](4) NULL,
	[resultadoDefecto] [varchar](300) NULL,
 CONSTRAINT [PK__Detalle_Examen] PRIMARY KEY CLUSTERED 
(
	[Prueba] ASC,
	[Linea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Configuracion]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Configuracion](
	[categoria] [varchar](50) NOT NULL,
	[propiedad] [varchar](50) NOT NULL,
	[valorString] [varchar](250) NULL,
	[valorInt] [int] NULL,
	[valorBool] [bit] NULL,
	[campoLibre1] [varchar](50) NULL,
	[campoLibre2] [varchar](50) NULL,
	[campoLibre3] [varchar](50) NULL,
	[Uso] [varchar](500) NULL,
 CONSTRAINT [PK__CAT_CONFIGURACION] PRIMARY KEY CLUSTERED 
(
	[categoria] ASC,
	[propiedad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Cliente]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Cliente](
	[Nit] [varchar](25) NULL,
	[Nombre] [varchar](150) NULL,
	[Direccion] [varchar](200) NULL,
	[Registro] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Registro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Area]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Area](
	[Area] [varchar](25) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Vigente] [bit] NULL,
 CONSTRAINT [PK__CAT_AREA] PRIMARY KEY CLUSTERED 
(
	[Area] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Usuario_Permiso]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Usuario_Permiso](
	[Usuario] [varchar](50) NOT NULL,
	[Permiso] [varchar](10) NOT NULL,
	[valorBool] [bit] NULL,
 CONSTRAINT [PK__Usuario_Permiso] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC,
	[Permiso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Usuario]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Usuario](
	[Usuario] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[vigente] [bit] NULL,
 CONSTRAINT [PK__Usuario] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_TipoPaciente_Examen]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_TipoPaciente_Examen](
	[TipoPaciente] [varchar](25) NOT NULL,
	[Examen] [varchar](25) NOT NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK__TipoPaciente_Examen] PRIMARY KEY CLUSTERED 
(
	[TipoPaciente] ASC,
	[Examen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Tipo_Pago]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Tipo_Pago](
	[Codigo] [varchar](15) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Ordenamiento] [int] NULL,
	[vigente] [bit] NULL,
 CONSTRAINT [PK__Tipo_Pago] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Tipo_Paciente]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Tipo_Paciente](
	[Tipo] [varchar](25) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Vigente] [bit] NULL,
 CONSTRAINT [PK__Tipo_Paciente] PRIMARY KEY CLUSTERED 
(
	[Tipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Tipo_Orden]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Tipo_Orden](
	[tipoOrden] [varchar](3) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[direccion] [varchar](100) NULL,
	[telefono] [varchar](25) NULL,
	[vigente] [bit] NULL,
	[Visible] [bit] NULL,
	[Correlativo] [varchar](25) NULL,
 CONSTRAINT [PK__TIPO_ORDEN] PRIMARY KEY CLUSTERED 
(
	[tipoOrden] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Tipo_Muestra]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Tipo_Muestra](
	[idTipoMuestra] [varchar](10) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[orden] [int] NULL,
	[vigente] [bit] NULL,
 CONSTRAINT [PK__Tipo_Muestra] PRIMARY KEY CLUSTERED 
(
	[idTipoMuestra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Tipo_Admin]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Tipo_Admin](
	[tipoDocumento] [varchar](3) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[vigente] [bit] NULL,
 CONSTRAINT [PK__TIPO_Admin] PRIMARY KEY CLUSTERED 
(
	[tipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_TEMPORAL]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_TEMPORAL](
	[a] [varchar](max) NULL,
	[b] [varchar](max) NULL,
	[c] [varchar](max) NULL,
	[d] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Servicio]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Servicio](
	[Servicio] [varchar](25) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Vigente] [bit] NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[Servicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_Resultado]    Script Date: 01/21/2018 11:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Resultado](
	[tipoOrden] [varchar](10) NOT NULL,
	[Orden] [varchar](25) NOT NULL,
	[Linea] [int] NOT NULL,
	[LineaPrueba] [int] NOT NULL,
	[LineaResultado] [int] NOT NULL,
	[Examen] [varchar](150) NULL,
	[nombreExamen] [varchar](160) NULL,
	[Resultado] [varchar](300) NULL,
	[UnidadMedida] [varchar](20) NULL,
	[Alarma] [varchar](25) NULL,
	[Status] [varchar](2) NULL,
	[UsuarioIngresa] [varchar](25) NULL,
	[Validado] [bit] NULL,
	[UsuarioValida] [varchar](25) NULL,
	[Impreso] [bit] NULL,
	[UsuarioImprime] [varchar](25) NULL,
	[Referencia] [varchar](max) NULL,
	[FechaRecepcion] [datetime] NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaValida] [datetime] NULL,
	[FechaImprime] [datetime] NULL,
	[refComentario] [bit] NULL,
	[Ordenamiento] [int] NULL,
	[finalizada] [bit] NULL,
 CONSTRAINT [PK__Resultado] PRIMARY KEY CLUSTERED 
(
	[tipoOrden] ASC,
	[Orden] ASC,
	[Linea] ASC,
	[LineaPrueba] ASC,
	[LineaResultado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_AREA_vigente]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Area] ADD  CONSTRAINT [DF_AREA_vigente]  DEFAULT ((1)) FOR [Vigente]
GO
/****** Object:  Default [DF__Detalle_Examen_noImprimir]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Detalle_Examen] ADD  CONSTRAINT [DF__Detalle_Examen_noImprimir]  DEFAULT ((0)) FOR [noImprimirReferencia]
GO
/****** Object:  Default [DF__Detalle_Examen_LineaVigente]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Detalle_Examen] ADD  CONSTRAINT [DF__Detalle_Examen_LineaVigente]  DEFAULT ((1)) FOR [Vigente]
GO
/****** Object:  Default [DF__Detalle_Examen_Subtitulo]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Detalle_Examen] ADD  CONSTRAINT [DF__Detalle_Examen_Subtitulo]  DEFAULT ((0)) FOR [Subtitulo]
GO
/****** Object:  Default [DF___Detalle___Refer__17F790F9]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Detalle_Orden] ADD  DEFAULT ((0)) FOR [Referida]
GO
/****** Object:  Default [DF___Etiqueta__Vigen__1AD3FDA4]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Etiqueta] ADD  DEFAULT ((1)) FOR [Vigente]
GO
/****** Object:  Default [DF__Examen_Precio]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Examen] ADD  CONSTRAINT [DF__Examen_Precio]  DEFAULT ((0.00)) FOR [Precio]
GO
/****** Object:  Default [DF_Examen_imprimirTitulo]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Examen] ADD  CONSTRAINT [DF_Examen_imprimirTitulo]  DEFAULT ((1)) FOR [ImprimirTitulo]
GO
/****** Object:  Default [DF___Examen__precioP__7D439ABD]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Examen] ADD  DEFAULT ((0)) FOR [precioPerfil]
GO
/****** Object:  Default [DF___Examen__Referid__17036CC0]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Examen] ADD  DEFAULT ((0)) FOR [Referida]
GO
/****** Object:  Default [DF___FacCC__status__0D7A0286]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_FacCC] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF___FacCC__Iva__114A936A]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_FacCC] ADD  DEFAULT ((0)) FOR [Iva]
GO
/****** Object:  Default [DF__MEDICO_Vigente]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Medico] ADD  CONSTRAINT [DF__MEDICO_Vigente]  DEFAULT ((1)) FOR [Vigente]
GO
/****** Object:  Default [DF__Orden_Finalizada]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Orden] ADD  CONSTRAINT [DF__Orden_Finalizada]  DEFAULT ((0)) FOR [Finalizada]
GO
/****** Object:  Default [DF___Perfil_E__Preci__7E37BEF6]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Perfil_Examen] ADD  DEFAULT ((0.00)) FOR [Precio]
GO
/****** Object:  Default [DF__Resultado_Status]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Resultado] ADD  CONSTRAINT [DF__Resultado_Status]  DEFAULT ('P') FOR [Status]
GO
/****** Object:  Default [DF__Resultado_Validado]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Resultado] ADD  CONSTRAINT [DF__Resultado_Validado]  DEFAULT ((0)) FOR [Validado]
GO
/****** Object:  Default [DF__Resultado_Impreso]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Resultado] ADD  CONSTRAINT [DF__Resultado_Impreso]  DEFAULT ((0)) FOR [Impreso]
GO
/****** Object:  Default [DF___Resultad__final__0B91BA14]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Resultado] ADD  DEFAULT ((0)) FOR [finalizada]
GO
/****** Object:  Default [DF_Servicio_vigente]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Servicio] ADD  CONSTRAINT [DF_Servicio_vigente]  DEFAULT ((1)) FOR [Vigente]
GO
/****** Object:  Default [DF_TIPO_Admin_vigente]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Tipo_Admin] ADD  CONSTRAINT [DF_TIPO_Admin_vigente]  DEFAULT ((1)) FOR [vigente]
GO
/****** Object:  Default [DF___Tipo_Mue__vigen__0A9D95DB]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Tipo_Muestra] ADD  DEFAULT ((1)) FOR [vigente]
GO
/****** Object:  Default [DF_TIPO_ORDEN_vigente]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Tipo_Orden] ADD  CONSTRAINT [DF_TIPO_ORDEN_vigente]  DEFAULT ((1)) FOR [vigente]
GO
/****** Object:  Default [DF___Tipo_Ord__Visib__0F624AF8]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Tipo_Orden] ADD  DEFAULT ((0)) FOR [Visible]
GO
/****** Object:  Default [DF___Tipo_Pag__Orden__01142BA1]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Tipo_Pago] ADD  DEFAULT ((99)) FOR [Ordenamiento]
GO
/****** Object:  Default [DF___Tipo_Pag__vigen__02084FDA]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Tipo_Pago] ADD  DEFAULT ((1)) FOR [vigente]
GO
/****** Object:  Default [DF__Usuario_vigente]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Usuario] ADD  CONSTRAINT [DF__Usuario_vigente]  DEFAULT ((1)) FOR [vigente]
GO
/****** Object:  Default [DF__Usuario_Permiso_valorBool]    Script Date: 01/21/2018 11:02:53 ******/
ALTER TABLE [dbo].[_Usuario_Permiso] ADD  CONSTRAINT [DF__Usuario_Permiso_valorBool]  DEFAULT ((0)) FOR [valorBool]
GO
