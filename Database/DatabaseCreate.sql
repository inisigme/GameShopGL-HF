USE [master]
GO

/****** Object:  Database [gameshop]    Script Date: 11.06.2017 16:34:33 ******/
CREATE DATABASE [gameshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gameshop', FILENAME = N'c:\databases\gameshop\gameshop.mdf' , SIZE = 8192KB , MAXSIZE = 20971520KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'gameshop_log', FILENAME = N'c:\databases\gameshop\gameshop_log.ldf' , SIZE = 8192KB , MAXSIZE = 1048576KB , FILEGROWTH = 10%)
GO

ALTER DATABASE [gameshop] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gameshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [gameshop] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [gameshop] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [gameshop] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [gameshop] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [gameshop] SET ARITHABORT OFF 
GO

ALTER DATABASE [gameshop] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [gameshop] SET AUTO_SHRINK ON 
GO

ALTER DATABASE [gameshop] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [gameshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [gameshop] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [gameshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [gameshop] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [gameshop] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [gameshop] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [gameshop] SET  DISABLE_BROKER 
GO

ALTER DATABASE [gameshop] SET AUTO_UPDATE_STATISTICS_ASYNC ON 
GO

ALTER DATABASE [gameshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [gameshop] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [gameshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [gameshop] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [gameshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [gameshop] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [gameshop] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [gameshop] SET  MULTI_USER 
GO

ALTER DATABASE [gameshop] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [gameshop] SET DB_CHAINING OFF 
GO

ALTER DATABASE [gameshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [gameshop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [gameshop] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [gameshop] SET QUERY_STORE = OFF
GO

USE [gameshop]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [gameshop] SET  READ_WRITE 
GO
