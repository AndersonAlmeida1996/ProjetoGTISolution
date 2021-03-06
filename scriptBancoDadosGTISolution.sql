USE [master]
GO
/****** Object:  Database [GTISolution]    Script Date: 20/01/2022 18:25:09 ******/
CREATE DATABASE [GTISolution]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GTISolution', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GTISolution.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GTISolution_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GTISolution_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GTISolution] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GTISolution].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GTISolution] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GTISolution] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GTISolution] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GTISolution] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GTISolution] SET ARITHABORT OFF 
GO
ALTER DATABASE [GTISolution] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GTISolution] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GTISolution] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GTISolution] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GTISolution] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GTISolution] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GTISolution] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GTISolution] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GTISolution] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GTISolution] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GTISolution] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GTISolution] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GTISolution] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GTISolution] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GTISolution] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GTISolution] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GTISolution] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GTISolution] SET RECOVERY FULL 
GO
ALTER DATABASE [GTISolution] SET  MULTI_USER 
GO
ALTER DATABASE [GTISolution] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GTISolution] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GTISolution] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GTISolution] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GTISolution] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GTISolution] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GTISolution', N'ON'
GO
ALTER DATABASE [GTISolution] SET QUERY_STORE = OFF
GO
USE [GTISolution]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 20/01/2022 18:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](20) NOT NULL,
	[Nome] [varchar](max) NOT NULL,
	[RG] [varchar](20) NOT NULL,
	[DataExpedicao] [datetime] NOT NULL,
	[OrgaoExpedicao] [varchar](10) NOT NULL,
	[UF] [varchar](2) NOT NULL,
	[DataNascimento] [datetime] NOT NULL,
	[Sexo] [varchar](10) NOT NULL,
	[EstadoCivil] [varchar](10) NOT NULL,
	[Logradouro] [varchar](250) NULL,
	[Numero] [varchar](50) NULL,
	[Complemento] [varchar](250) NULL,
	[Bairro] [varchar](250) NULL,
	[Cidade] [varchar](100) NULL,
	[UfEndereco] [varchar](4) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [GTISolution] SET  READ_WRITE 
GO
