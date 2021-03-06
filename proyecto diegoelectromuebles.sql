USE [master]
GO
/****** Nombre diego Feliz  Matricula 17-EIIT-1-024   Seccion 0541 ******/
CREATE DATABASE [DIEGOELECTROMUEBLES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DIEGOELECTROMUEBLES', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DIEGOELECTROMUEBLES.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DIEGOELECTROMUEBLES_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DIEGOELECTROMUEBLES_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DIEGOELECTROMUEBLES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET ARITHABORT OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET  MULTI_USER 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DIEGOELECTROMUEBLES]
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 28/11/2018 10:24:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajeros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_cajeros] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 28/11/2018 10:24:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maquina_registradora](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
 CONSTRAINT [PK_maquina_registradora] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productos]    Script Date: 28/11/2018 10:24:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[venta]    Script Date: 28/11/2018 10:24:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[cajero] [int] NULL,
	[maquina] [int] NULL,
	[producto] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cajeros] ON 

INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (1, N'Juan Santana')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (2, N'Michel Ramirez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (3, N'Cristian Feliz')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (4, N'Jose Baez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (5, N'Erickson Diaz')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (6, N' Marino Zapete')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (7, N'Jimny Montero')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (8, N'Wandel Gonzales')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (9, N'Daniela Agramontes')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (10, N'Jorge Perez')
SET IDENTITY_INSERT [dbo].[cajeros] OFF
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (1, 1)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (2, 2)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (3, 3)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (4, 4)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (5, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (6, 6)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (7, 7)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (8, 8)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (9, 9)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (10, 10)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (11, 11)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (12, 12)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (13, 13)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (1, N'abanico', 5000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (2, N'silla', 2000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (3, N'nevera', 15000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (4, N'lavadora', 20000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (5, N'mesa', 19000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (6, N'estufa', 45000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (7, N'tanque de gas', 7000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (8, N'televisores', 75000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (9, N'computadoras', 11500)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (10, N'juego de habitacion', 85000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (11, N'lamparas', NULL)
SET IDENTITY_INSERT [dbo].[productos] OFF
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (1, 2, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (6, 5, 12)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 8, 9)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (1, 2, 3)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 9, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (12, 7, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (10, 3, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 8, 6)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 1, 2)
USE [master]
GO
ALTER DATABASE [DIEGOELECTROMUEBLES] SET  READ_WRITE 
GO
