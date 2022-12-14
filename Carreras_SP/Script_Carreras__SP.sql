USE [master]
GO
/****** Object:  Database [CarrerasBD_Local]    Script Date: 25/09/2022 16:54:32 ******/
CREATE DATABASE [CarrerasBD_Local]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarrerasBD_Local', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CarrerasBD_Local.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarrerasBD_Local_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CarrerasBD_Local_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CarrerasBD_Local] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarrerasBD_Local].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarrerasBD_Local] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarrerasBD_Local] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarrerasBD_Local] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CarrerasBD_Local] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarrerasBD_Local] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET RECOVERY FULL 
GO
ALTER DATABASE [CarrerasBD_Local] SET  MULTI_USER 
GO
ALTER DATABASE [CarrerasBD_Local] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarrerasBD_Local] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarrerasBD_Local] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarrerasBD_Local] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CarrerasBD_Local] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CarrerasBD_Local] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CarrerasBD_Local', N'ON'
GO
ALTER DATABASE [CarrerasBD_Local] SET QUERY_STORE = OFF
GO
USE [CarrerasBD_Local]
GO
/****** Object:  Table [dbo].[Asignaturas]    Script Date: 25/09/2022 16:54:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaturas](
	[id_asignatura] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
 CONSTRAINT [pk_Asignaturas] PRIMARY KEY CLUSTERED 
(
	[id_asignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carreras]    Script Date: 25/09/2022 16:54:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carreras](
	[id_carrera] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
 CONSTRAINT [pk_Carreras] PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleCarreras]    Script Date: 25/09/2022 16:54:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleCarreras](
	[id_detalleCarrera] [int] IDENTITY(1,1) NOT NULL,
	[anio_cursado] [tinyint] NOT NULL,
	[cuatrimestre] [tinyint] NOT NULL,
	[id_carrera] [int] NOT NULL,
	[id_asignatura] [int] NOT NULL,
 CONSTRAINT [pk_DetalleCarreras] PRIMARY KEY CLUSTERED 
(
	[id_detalleCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Asignaturas] ON 

INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (1, N'Algebra 1')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (2, N'Algebra 2')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (3, N'Estadísticas')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (4, N'Fisica')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (5, N'Inglés 1')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (6, N'Inglés 2')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (7, N'Laboratorio de Computacion 1')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (8, N'Laboratorio de Computacion 2')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (9, N'Laboratorio 2')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (10, N'Legislación')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (11, N'Matemática')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (12, N'Metodología de Sistemas 1')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (13, N'Programación 1')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (14, N'Programación 2')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (15, N'Programación 3')
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre]) VALUES (16, N'Arquitectura y Sistemas Operativos 1')
SET IDENTITY_INSERT [dbo].[Asignaturas] OFF
GO
SET IDENTITY_INSERT [dbo].[Carreras] ON 

INSERT [dbo].[Carreras] ([id_carrera], [nombre]) VALUES (1, N'Ingenieria en Sistemas de Información')
SET IDENTITY_INSERT [dbo].[Carreras] OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleCarreras] ON 

INSERT [dbo].[DetalleCarreras] ([id_detalleCarrera], [anio_cursado], [cuatrimestre], [id_carrera], [id_asignatura]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[DetalleCarreras] ([id_detalleCarrera], [anio_cursado], [cuatrimestre], [id_carrera], [id_asignatura]) VALUES (2, 1, 1, 1, 5)
INSERT [dbo].[DetalleCarreras] ([id_detalleCarrera], [anio_cursado], [cuatrimestre], [id_carrera], [id_asignatura]) VALUES (3, 1, 1, 1, 13)
INSERT [dbo].[DetalleCarreras] ([id_detalleCarrera], [anio_cursado], [cuatrimestre], [id_carrera], [id_asignatura]) VALUES (4, 1, 1, 1, 7)
INSERT [dbo].[DetalleCarreras] ([id_detalleCarrera], [anio_cursado], [cuatrimestre], [id_carrera], [id_asignatura]) VALUES (5, 1, 2, 1, 11)
INSERT [dbo].[DetalleCarreras] ([id_detalleCarrera], [anio_cursado], [cuatrimestre], [id_carrera], [id_asignatura]) VALUES (6, 2, 2, 1, 12)
SET IDENTITY_INSERT [dbo].[DetalleCarreras] OFF
GO
ALTER TABLE [dbo].[DetalleCarreras]  WITH CHECK ADD  CONSTRAINT [fk_Asignaturas] FOREIGN KEY([id_asignatura])
REFERENCES [dbo].[Asignaturas] ([id_asignatura])
GO
ALTER TABLE [dbo].[DetalleCarreras] CHECK CONSTRAINT [fk_Asignaturas]
GO
ALTER TABLE [dbo].[DetalleCarreras]  WITH CHECK ADD  CONSTRAINT [fk_Carreras] FOREIGN KEY([id_carrera])
REFERENCES [dbo].[Carreras] ([id_carrera])
GO
ALTER TABLE [dbo].[DetalleCarreras] CHECK CONSTRAINT [fk_Carreras]
GO
/****** Object:  StoredProcedure [dbo].[sp_consultar_asignaturas]    Script Date: 25/09/2022 16:54:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_consultar_asignaturas]
as
begin
	select id_asignatura, nombre from asignaturas
	order by nombre
end
GO
/****** Object:  StoredProcedure [dbo].[sp_consultar_carreras]    Script Date: 25/09/2022 16:54:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_consultar_carreras]
as
begin
	select id_carrera, nombre from carreras
	order by id_carrera
end
GO
/****** Object:  StoredProcedure [dbo].[sp_consultar_detalleCarreras]    Script Date: 25/09/2022 16:54:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_consultar_detalleCarreras]
@idCarrera int
as
begin
	select a.nombre,
	dc.anio_cursado, 
	dc.cuatrimestre
	from detalleCarreras as dc 
	inner join asignaturas as a on dc.id_asignatura = a.id_asignatura
	inner join carreras as c on dc.id_carrera = c.id_carrera
	where c.id_carrera = @idCarrera
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_asignatura]    Script Date: 25/09/2022 16:54:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_insertar_asignatura]
@nombre varchar(100)
as
begin
	insert into asignaturas(nombre) values(@nombre);
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_carrera]    Script Date: 25/09/2022 16:54:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_insertar_carrera]
@nombre varchar(100),
@new_id_carrera int output
as
begin
	insert into carreras(nombre) values(@nombre);
	set @new_id_carrera = SCOPE_IDENTITY();
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_detalleCarreras]    Script Date: 25/09/2022 16:54:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_insertar_detalleCarreras]
@anioCursado tinyint,
@cuatrimestre tinyint,
@id_carrera int,
@id_asignatura int

as
begin
	insert into DetalleCarreras(anio_cursado, cuatrimestre, id_carrera, id_asignatura)
	values(@anioCursado, @cuatrimestre, @id_carrera, @id_asignatura)
end
GO
USE [master]
GO
ALTER DATABASE [CarrerasBD_Local] SET  READ_WRITE 
GO
