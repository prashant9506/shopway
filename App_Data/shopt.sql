USE [master]
GO
/****** Object:  Database [Shopway]    Script Date: 08/03/2017 11:31:43 ******/
CREATE DATABASE [Shopway] ON  PRIMARY 
( NAME = N'Shopway', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Shopway.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shopway_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Shopway_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shopway] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shopway].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shopway] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Shopway] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Shopway] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Shopway] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Shopway] SET ARITHABORT OFF
GO
ALTER DATABASE [Shopway] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Shopway] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Shopway] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Shopway] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Shopway] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Shopway] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Shopway] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Shopway] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Shopway] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Shopway] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Shopway] SET  DISABLE_BROKER
GO
ALTER DATABASE [Shopway] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Shopway] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Shopway] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Shopway] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Shopway] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Shopway] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Shopway] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Shopway] SET  READ_WRITE
GO
ALTER DATABASE [Shopway] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Shopway] SET  MULTI_USER
GO
ALTER DATABASE [Shopway] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Shopway] SET DB_CHAINING OFF
GO
USE [Shopway]
GO
/****** Object:  Table [dbo].[TblU_Registration]    Script Date: 08/03/2017 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblU_Registration](
	[U_Name] [varchar](50) NULL,
	[U_Email] [varchar](50) NOT NULL,
	[U_Password] [varchar](50) NULL,
	[U_Address] [varchar](max) NULL,
	[U_State] [varchar](50) NULL,
	[U_Pin] [int] NULL,
	[U_MobileNo] [varchar](50) NULL,
 CONSTRAINT [PK_TblU_Registration] PRIMARY KEY CLUSTERED 
(
	[U_Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblR_Registration]    Script Date: 08/03/2017 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblR_Registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[R_Name] [varchar](50) NULL,
	[R_Mobile] [int] NULL,
	[R_Address] [varchar](max) NULL,
	[R_Gender] [varchar](50) NULL,
	[R_Adhar] [int] NULL,
	[R_ShopType] [varchar](50) NULL,
	[R_ShopNo] [nchar](10) NULL,
	[R_Email] [varchar](50) NOT NULL,
	[R_Password] [varchar](50) NULL,
	[R_Pic] [varchar](50) NULL,
 CONSTRAINT [PK_TblR_Registration] PRIMARY KEY CLUSTERED 
(
	[R_Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblAll_Login]    Script Date: 08/03/2017 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblAll_Login](
	[Email_ID] [varchar](50) NOT NULL,
	[Passwd] [varchar](50) NOT NULL,
	[LastLogin] [varchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
	[UserType] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Product]    Script Date: 08/03/2017 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[P_Name] [varchar](50) NOT NULL,
	[P_Discription] [varchar](50) NOT NULL,
	[P_Quantity] [varchar](50) NULL,
	[P_Price] [varchar](50) NULL,
	[P_Weight] [varchar](50) NULL,
	[P_Pic] [varchar](50) NOT NULL,
	[Retailer_ID] [varchar](50) NOT NULL,
	[P_Time] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_feedback]    Script Date: 08/03/2017 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [varchar](50) NULL,
	[email_id] [varchar](50) NULL,
	[message] [varchar](50) NULL,
	[date] [nchar](10) NULL,
 CONSTRAINT [PK_Tbl_feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_cart]    Script Date: 08/03/2017 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_cart](
	[auto_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[user_id] [varchar](50) NOT NULL,
	[p_name] [varchar](50) NULL,
	[p_price] [varchar](50) NULL,
	[p_desc] [varchar](50) NULL,
	[p_quantity] [varchar](50) NULL,
	[p_weight] [varchar](50) NULL,
	[p_pic] [varchar](max) NULL,
	[p_date] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_cart] PRIMARY KEY CLUSTERED 
(
	[auto_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Retailer_offer]    Script Date: 08/03/2017 11:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Retailer_offer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Retailer_id] [varchar](50) NOT NULL,
	[offer] [varchar](50) NULL,
	[status] [bit] NOT NULL,
	[data] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
