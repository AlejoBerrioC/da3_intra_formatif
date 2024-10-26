USE [da3_intra_formatif]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChemicalElements]') AND type in (N'U'))
ALTER TABLE [dbo].[ChemicalElements] DROP CONSTRAINT IF EXISTS [DF_ChemicalElements_DateCreated]
GO
/****** Object:  Table [dbo].[ChemicalElements]    Script Date: 2024-10-18 12:27:36 ******/
DROP TABLE IF EXISTS [dbo].[ChemicalElements]
GO
USE [master]
GO
/****** Object:  Database [da3_intra_formatif]    Script Date: 2024-10-18 12:27:36 ******/
DROP DATABASE IF EXISTS [da3_intra_formatif]
GO
/****** Object:  Database [da3_intra_formatif]    Script Date: 2024-10-18 12:27:36 ******/
CREATE DATABASE [da3_intra_formatif]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'da3_intra_formatif', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL2022DEV\MSSQL\DATA\da3_intra_formatif.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'da3_intra_formatif_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL2022DEV\MSSQL\DATA\da3_intra_formatif_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [da3_intra_formatif] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [da3_intra_formatif].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [da3_intra_formatif] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET ARITHABORT OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [da3_intra_formatif] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [da3_intra_formatif] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET  DISABLE_BROKER 
GO
ALTER DATABASE [da3_intra_formatif] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [da3_intra_formatif] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET RECOVERY FULL 
GO
ALTER DATABASE [da3_intra_formatif] SET  MULTI_USER 
GO
ALTER DATABASE [da3_intra_formatif] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [da3_intra_formatif] SET DB_CHAINING OFF 
GO
ALTER DATABASE [da3_intra_formatif] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [da3_intra_formatif] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [da3_intra_formatif] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [da3_intra_formatif] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'da3_intra_formatif', N'ON'
GO
ALTER DATABASE [da3_intra_formatif] SET QUERY_STORE = ON
GO
ALTER DATABASE [da3_intra_formatif] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [da3_intra_formatif]
GO
/****** Object:  Table [dbo].[ChemicalElements]    Script Date: 2024-10-18 12:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChemicalElements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Symbol] [nvarchar](3) NOT NULL,
	[AtomicNumber] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ChemicalElements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChemicalElements] ON 

INSERT [dbo].[ChemicalElements] ([Id], [Name], [Symbol], [AtomicNumber], [DateCreated]) VALUES (1, N'Hydrogen', N'H', 1, CAST(N'2024-10-18T12:18:07.4366667' AS DateTime2))
INSERT [dbo].[ChemicalElements] ([Id], [Name], [Symbol], [AtomicNumber], [DateCreated]) VALUES (2, N'Helium', N'He', 2, CAST(N'2024-10-18T12:18:19.9633333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ChemicalElements] OFF
GO
ALTER TABLE [dbo].[ChemicalElements] ADD  CONSTRAINT [DF_ChemicalElements_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
USE [master]
GO
ALTER DATABASE [da3_intra_formatif] SET  READ_WRITE 
GO
