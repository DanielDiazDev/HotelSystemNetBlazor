USE [master]
GO
/****** Object:  Database [DBHotelBlazor]    Script Date: 2/3/2024 16:40:59 ******/
CREATE DATABASE [DBHotelBlazor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBHotelBlazor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBHotelBlazor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBHotelBlazor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBHotelBlazor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DBHotelBlazor] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBHotelBlazor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBHotelBlazor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBHotelBlazor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBHotelBlazor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBHotelBlazor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBHotelBlazor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET RECOVERY FULL 
GO
ALTER DATABASE [DBHotelBlazor] SET  MULTI_USER 
GO
ALTER DATABASE [DBHotelBlazor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBHotelBlazor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBHotelBlazor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBHotelBlazor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBHotelBlazor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBHotelBlazor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBHotelBlazor', N'ON'
GO
ALTER DATABASE [DBHotelBlazor] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBHotelBlazor] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBHotelBlazor]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 2/3/2024 16:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 2/3/2024 16:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocumento] [varchar](15) NULL,
	[Documento] [varchar](15) NULL,
	[NombreCompleto] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoHabitacion]    Script Date: 2/3/2024 16:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoHabitacion](
	[IdEstadoHabitacion] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstadoHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 2/3/2024 16:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[IdHabitacion] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [varchar](50) NULL,
	[Detalle] [varchar](100) NULL,
	[Precio] [decimal](10, 2) NULL,
	[IdEstadoHabitacion] [int] NULL,
	[IdPiso] [int] NULL,
	[IdCategoria] [int] NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Piso]    Script Date: 2/3/2024 16:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piso](
	[IdPiso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECEPCION]    Script Date: 2/3/2024 16:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECEPCION](
	[IdRecepcion] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[IdHabitacion] [int] NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[FechaSalidaConfirmacion] [datetime] NULL,
	[PrecioInicial] [decimal](10, 2) NULL,
	[Adelanto] [decimal](10, 2) NULL,
	[PrecioRestante] [decimal](10, 2) NULL,
	[TotalPagado] [decimal](10, 2) NULL,
	[CostoPenalidad] [decimal](10, 2) NULL,
	[Observacion] [varchar](500) NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRecepcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolUsuario]    Script Date: 2/3/2024 16:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolUsuario](
	[IdRolUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRolUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 2/3/2024 16:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreCompleto] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[IdRolUsuario] [int] NULL,
	[Clave] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categoria] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Categoria] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[EstadoHabitacion] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[EstadoHabitacion] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Habitacion] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Habitacion] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Piso] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Piso] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[RECEPCION] ADD  DEFAULT (getdate()) FOR [FechaEntrada]
GO
ALTER TABLE [dbo].[RECEPCION] ADD  DEFAULT ((0)) FOR [TotalPagado]
GO
ALTER TABLE [dbo].[RECEPCION] ADD  DEFAULT ((0)) FOR [CostoPenalidad]
GO
ALTER TABLE [dbo].[RolUsuario] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[RolUsuario] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD FOREIGN KEY([IdEstadoHabitacion])
REFERENCES [dbo].[EstadoHabitacion] ([IdEstadoHabitacion])
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD FOREIGN KEY([IdPiso])
REFERENCES [dbo].[Piso] ([IdPiso])
GO
ALTER TABLE [dbo].[RECEPCION]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[RECEPCION]  WITH CHECK ADD FOREIGN KEY([IdHabitacion])
REFERENCES [dbo].[Habitacion] ([IdHabitacion])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdRolUsuario])
REFERENCES [dbo].[RolUsuario] ([IdRolUsuario])
GO
USE [master]
GO
ALTER DATABASE [DBHotelBlazor] SET  READ_WRITE 
GO
