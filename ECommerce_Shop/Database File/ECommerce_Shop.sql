IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sizes_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sizes]'))
ALTER TABLE [dbo].[Sizes] DROP CONSTRAINT [FK_Sizes_Category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductImages_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImages]'))
ALTER TABLE [dbo].[ProductImages] DROP CONSTRAINT [FK_ProductImages_Product]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Feature_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductFeature]'))
ALTER TABLE [dbo].[ProductFeature] DROP CONSTRAINT [FK_Feature_Product]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Sizes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] DROP CONSTRAINT [FK_ProductDetails_Sizes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] DROP CONSTRAINT [FK_ProductDetails_Product]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] DROP CONSTRAINT [FK_ProductDetails_Color]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Offers_DiscountType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offers]'))
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [FK_Offers_DiscountType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails] DROP CONSTRAINT [FK_CartDetails_Product]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails] DROP CONSTRAINT [FK_CartDetails_Color]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Contact_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Contact] DROP CONSTRAINT [DF_Contact_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Contact_IsProductInquiry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Contact] DROP CONSTRAINT [DF_Contact_IsProductInquiry]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[bosskinds].[DF_ProductPTE_isUpdated]') AND type = 'D')
BEGIN
ALTER TABLE [bosskinds].[ProductPTE] DROP CONSTRAINT [DF_ProductPTE_isUpdated]
END

GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sizes]') AND type in (N'U'))
DROP TABLE [dbo].[Sizes]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImages]') AND type in (N'U'))
DROP TABLE [dbo].[ProductImages]
GO
/****** Object:  Table [dbo].[ProductFeature]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductFeature]') AND type in (N'U'))
DROP TABLE [dbo].[ProductFeature]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductDetails]') AND type in (N'U'))
DROP TABLE [dbo].[ProductDetails]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offers]') AND type in (N'U'))
DROP TABLE [dbo].[Offers]
GO
/****** Object:  Table [dbo].[FileManagers]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileManagers]') AND type in (N'U'))
DROP TABLE [dbo].[FileManagers]
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAQ]') AND type in (N'U'))
DROP TABLE [dbo].[FAQ]
GO
/****** Object:  Table [dbo].[EmailTemplete]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailTemplete]') AND type in (N'U'))
DROP TABLE [dbo].[EmailTemplete]
GO
/****** Object:  Table [dbo].[DiscountType]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiscountType]') AND type in (N'U'))
DROP TABLE [dbo].[DiscountType]
GO
/****** Object:  Table [dbo].[Containers]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Containers]') AND type in (N'U'))
DROP TABLE [dbo].[Containers]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
DROP TABLE [dbo].[Contact]
GO
/****** Object:  Table [dbo].[Configurations]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Configurations]') AND type in (N'U'))
DROP TABLE [dbo].[Configurations]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Color]') AND type in (N'U'))
DROP TABLE [dbo].[Color]
GO
/****** Object:  Table [dbo].[CollectionPoints]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CollectionPoints]') AND type in (N'U'))
DROP TABLE [dbo].[CollectionPoints]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CartDetails]') AND type in (N'U'))
DROP TABLE [dbo].[CartDetails]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Advertisement]') AND type in (N'U'))
DROP TABLE [dbo].[Advertisement]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [bosskinds].[ProductPTE]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bosskinds].[ProductPTE]') AND type in (N'U'))
DROP TABLE [bosskinds].[ProductPTE]
GO
/****** Object:  Schema [bosskinds]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'bosskinds')
DROP SCHEMA [bosskinds]
GO

DECLARE @RoleName sysname
set @RoleName = N'gd_execprocs'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
IF @RoleName <> N'public' and (select is_fixed_role from sys.database_principals where name = @RoleName) = 0
BEGIN
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id
		from sys.database_role_members

		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName AND type = 'R'))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName
	
	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
END
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'gd_execprocs' AND type = 'R')
DROP ROLE [gd_execprocs]
GO
/****** Object:  Database [ECommerce_Shop]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'ECommerce_Shop')
DROP DATABASE [ECommerce_Shop]
GO
/****** Object:  Database [ECommerce_Shop]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ECommerce_Shop')
BEGIN
CREATE DATABASE [ECommerce_Shop] ON  PRIMARY 
( NAME = N'ECommerce_Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ECommerce_Shop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ECommerce_Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ECommerce_Shop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ECommerce_Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ECommerce_Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ECommerce_Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ECommerce_Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ECommerce_Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ECommerce_Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET RECOVERY FULL 
GO
ALTER DATABASE [ECommerce_Shop] SET  MULTI_USER 
GO
ALTER DATABASE [ECommerce_Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ECommerce_Shop] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ECommerce_Shop', N'ON'
GO
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'gd_execprocs' AND type = 'R')
CREATE ROLE [gd_execprocs]
GO
/****** Object:  Schema [bosskinds]    Script Date: 16-Sep-19 4:28:56 PM ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'bosskinds')
EXEC sys.sp_executesql N'CREATE SCHEMA [bosskinds]'

GO
/****** Object:  Table [bosskinds].[ProductPTE]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bosskinds].[ProductPTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [bosskinds].[ProductPTE](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[word] [nvarchar](max) NULL,
	[meaning] [nvarchar](max) NULL,
	[extrainfomation] [nvarchar](max) NULL,
	[createdDate] [datetime] NULL,
	[isUpdated] [bit] NOT NULL,
 CONSTRAINT [PK_ProductPTE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Advertisement]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Advertisement](
	[AdvertisementId] [bigint] IDENTITY(1,1) NOT NULL,
	[LinkUrl] [nvarchar](max) NULL,
	[HImageUrl] [nvarchar](max) NULL,
	[VImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Advertisement] PRIMARY KEY CLUSTERED 
(
	[AdvertisementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[ProfileImage] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Tagline] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[DateOfBirth] [datetime] NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Brand](
	[BrandId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Brand_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CartDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CartDetails](
	[CartDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactId] [bigint] NOT NULL CONSTRAINT [DF_CartDetails_ContactId]  DEFAULT ((0)),
	[CartCookie] [nvarchar](150) NOT NULL,
	[Quantity] [int] NOT NULL CONSTRAINT [DF_CartDetails_Quantity]  DEFAULT ((1)),
	[ProductId] [bigint] NOT NULL,
	[MRP] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[TAX] [float] NOT NULL,
	[OfferTitle] [nvarchar](max) NULL,
	[Discount] [float] NOT NULL CONSTRAINT [DF_CartDetails_Discount]  DEFAULT ((0)),
	[SizeName] [nvarchar](500) NOT NULL,
	[ColorId] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CartDetails_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_CartDetails_1] PRIMARY KEY CLUSTERED 
(
	[CartDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Category]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[CategoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[RootCategoryId] [bigint] NULL,
	[CustomUrl] [nvarchar](max) NULL,
	[OrderNo] [int] NULL CONSTRAINT [DF_Category_OrderNo_1]  DEFAULT ((0)),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Category_active]  DEFAULT ((1)),
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CollectionPoints]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CollectionPoints]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CollectionPoints](
	[CollectionPointId] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CollectionPoints] PRIMARY KEY CLUSTERED 
(
	[CollectionPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Color]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Color]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Color](
	[ColorId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Hex] [nvarchar](7) NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Color_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Configurations]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Configurations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Configurations](
	[ConfigurationId] [bigint] IDENTITY(1,1) NOT NULL,
	[ConfigurationType] [nvarchar](max) NOT NULL,
	[ConfigurationValue] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Configurations] PRIMARY KEY CLUSTERED 
(
	[ConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contact](
	[ContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](500) NULL,
	[Mobile] [nvarchar](10) NOT NULL,
	[IsProductInquiry] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Containers]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Containers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Containers](
	[VideoId] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[VideoName] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[IsVideo] [bit] NOT NULL,
 CONSTRAINT [PK_Containers] PRIMARY KEY CLUSTERED 
(
	[VideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DiscountType]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiscountType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DiscountType](
	[DiscountId] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_DiscountType] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EmailTemplete]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailTemplete]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmailTemplete](
	[EmailTempleteId] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Subject] [nvarchar](1000) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[HashTag] [nvarchar](max) NOT NULL,
	[FromId] [nvarchar](100) NOT NULL,
	[BccId] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_EmailTemplete_IsActive]  DEFAULT ((0)),
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_EmailTemplete_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_EmailTemplete] PRIMARY KEY CLUSTERED 
(
	[EmailTempleteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FAQ](
	[FAQId] [bigint] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_FAQ_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_FAQ] PRIMARY KEY CLUSTERED 
(
	[FAQId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FileManagers]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileManagers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FileManagers](
	[ImageId] [bigint] IDENTITY(1,1) NOT NULL,
	[typeId] [bigint] NOT NULL,
	[ImageName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FileManagers] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Offers](
	[OfferId] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[DiscountId] [bigint] NULL,
	[DiscountPercentage] [bigint] NULL,
	[FlatDiscount] [bigint] NULL,
	[SpecificItems] [bigint] NULL,
	[SpecificValue] [bigint] NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ProductId] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[OfferId] [bigint] NULL CONSTRAINT [DF_Product_OfferId]  DEFAULT ((0)),
	[ProductName] [nvarchar](500) NOT NULL,
	[MRP] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[TAX] [float] NOT NULL,
	[SKU] [nvarchar](500) NOT NULL,
	[ShortDescription] [nvarchar](500) NOT NULL,
	[FullDescription] [nvarchar](max) NOT NULL,
	[Tag] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF__Product__active__1ED998B2]  DEFAULT ((1)),
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK__Product__2D10D16A8176F9A0] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductDetails](
	[ProductDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[SizeId] [bigint] NOT NULL,
	[ColorId] [bigint] NOT NULL,
	[StockQty] [int] NULL CONSTRAINT [DF_ProductDetails_StockQty]  DEFAULT ((0)),
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ProductDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductFeature]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductFeature](
	[FeatureId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[FeatureType] [nvarchar](100) NOT NULL,
	[FeatureValue] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductImages](
	[ProductImageId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[ImageName] [nvarchar](100) NOT NULL,
	[CoverImage] [bit] NOT NULL CONSTRAINT [DF_ProductImages_coverImage]  DEFAULT ((0)),
 CONSTRAINT [PK__ProductI__AD7A00A83E16888E] PRIMARY KEY CLUSTERED 
(
	[ProductImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 16-Sep-19 4:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sizes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sizes](
	[SizeId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Sizes_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK__Sizes__55B1E55757215B0B] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201901090942567_InitialCreate', N'EKart_v1.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D0D3EEC269F9B2339835BA1378DA76D6C8D81E4C7B827D33D812BB4D8C447524CAB1B1C897ED433E29BFB045DD498A12D5ADBE3808104CF372AA583C248B5495FFF8DFEFE31F5E02DF7AC6514C423AB14F46C7B685A91B7A842E2776C216DF7DB07FF8FEAF7F195F79C18BF573D1EE8CB7839E349ED84F8CADCE1D27769F7080E25140DC288CC3051BB961E0202F744E8F8FFFE59C9C3818206CC0B2ACF197843212E0F407FC9C86D4C52B9620FF36F4B01FE7E550334B51AD3B14E078855C3CB1AF7E42117B7C3E19654D6DEBC22708D498617F615B88D29021064A9E7F8DF18C45215DCE565080FC87D71586760BE4C73857FEBC6A6E3A8EE3533E0EA7EA5840B949CCC2A027E0C9596E1847EEBE9679EDD27060BA2B30317BE5A34ECD37B16F3C9C167D097D30802CF07CEA47BCF1C4BE2D455CC4AB3BCC4645C75106791D01DCAF61F46D54473CB28CFB1D95443A1D1DF3FF8EAC69E2B324C2138A131621FFC8FA9CCC7DE2FE845F1FC26F984ECE4EE68BB30FEFDE23EFECFD3FF1D9BBFA4861ACD04E2880A2CF51B8C211E88617E5F86DCB11FB3972C7B25BAD4F6615E012AC09DBBA452F9F305DB227582DA71F6CEB9ABC60AF28C9C9F595125842D0894509FCBC4B7C1FCD7D5CD63BAD32F9FF5BA49EBE7B3F88D43BF44C96E9D44BF261E144B0AEBE603FAD8D9FC82A5B5EC27C3FE6CDAEA330E0BF457E65B58FB330895C3E9850DBE401454BCC44EDC64E455E234A73A8E1695DA01E3EB5B9A62ABD1B9BF201ADB3120A11BB5E0D85BEDB956BCCB88BD50A262FA516B7481BE1A4936A24753DB28A0615694E4C494361307FE63DF01A9A77EC83F04F23C9ED82E0E78200C302B4DCBEB00BCF8B701C6F5DCE035AFA846E7F3C3F62EAF135B065319788E1FBC54712B1A742162F7A204167D7AB00117F80C3D4400A38B10B1205B85C2D1F43D8BA10EDCDFDCF288EE12CF1FE8DE2A7ADDB7686DD24822D6EC650B0DAFE6A7B0A29BE4B82F90E58539335D8D43CFC1A5E239785D115E5BD36C6FB14BADFC2845D518F13FA2B73FBF2BB0418449D0BD785EDE91AC88CBD690877B402F086B2B3D3DE70FC94DBB7333BF511099ABD59E93C7E2C9A561E6D730BC5ABD5346BF26CDB54FD142E093553B568AA57356BD1A96ADEACAFAA1CCC4CD3BCA55ED1B441A79E59ABC1EE0AE90C0D7F5948610FFFB6B09913A8DB0B6A669CC10E89C139C0116C63DE67C4188E68350326FBC63E9CCE74FAB8D0AD9F4DA9A49F919F0C2D6AADD5906E02C3AF8614F6F05743AA26143F93D49735B842178D01DEA87DF3EDBC7BCD499AED7A3908C3DCB5F0DDEC01BAE57211C7A14BD255D0F0789A3F7D89FA830F6775BF8365A391DFD260604074C28F3C2881B1D932A9EEE925F631C3D6859B3D2E4F51EC224F35230CC8EBA15871A2362856BDA989CAFD4391094CC711EF84F8252886954A28539705A12E5921BFD34A524FC3238C8FBD9421D75CE215BFAA52D6690913E1CD4F685C81528E34295D161A3B35C6B51351E3B5EAE6BCCB85ADE65D79D9DA09273B7C670D2F73FF6D2BC46CB7D80EC8D96E121305B4CFC1FB20687E573125807C713934824A37260D4173976A2704152DB607828A26797304CDAEA8A6F32FDD570F8D9EE24579F7C77AABB9F6C04DC11E0746CDCCF7843E0C7AE048A5E7E59C57E217D67039033DF3FB599CBBBA324538F80C33F1C9A6F2771BFD50A71D4426511B6045B40ED0FC43B202A42CA81ECA156F79ADDAE55E440FD8E2DDAD1536DFFB25D81A0754ECFA07F55A43FD6777999C46B78F7264251B14921B5D166A380D8490372F71E00646D1BDCBAA8631F185FB78C3B581E593D162A00ECF5563A46230835BA9A066B7959A1CB23E2ED9465692DC278D958AC10C6EA59CA3DD466A700A7AB8051B99483CC2075A6CC54B4779DA947563270BB2CB0BC68E261A6F7C8B562B4297B5E8BCBCC49A65A179D3EF66FDC3D6820CC371E386E8B552DB52120B23B4C4522D88064DAF4914B34BC4D01CF1779EA91728CD1ACF56CDF65F88AC1F9FEA2416E740D19AFF3BFF282C857F0807ADEA89E400D730BC80BB33E91B7AC3E43777B778A824F251D4F06C3F0DFD24A07AEF4ADF3BFB7857EF9F95A8086347D25FF19E1453293EAE6877A3595157C41033547A2EEBCF921E4267EBC2EFAC5B5BE78BEA518AA7A93A8AEEB96A6FB3A67361CC674A760DFB4F5427C276565415D754C7A84ACD91C4C0A53A9A58638E584627D5C1CA42739C32FAA88E53169AE314D1457598A2CC1C45081EAA430915E6787944511D292FEA89510B4A51C06A753D1821C40D098C106ACC11A5E0A03AA454D543CB7A0890A064BD622D3C8D459B5BF4E0B312F423105BA935476E08FFA9433754AF81DDA0B35CD7638F50238484DD42AD36C7AEC285E433F080BD0EED95733DB7237B92D8CCEFD0606CE7401BC66DA9455ED4816AC53DB1F2D80A052C2F3F482A69EFE5EB51297B86DA8C4A1A0CFD9E23042C885B4E6B94851E53884290DC1C7D14861EAF1F61B74A0BE54E2E3729A5977773E90E3ECEEFC3DD6973CA05396B625B8519E1487F8D190E46BCC168F68B3FF509E61B78D1E01651B2C031CB226FECD3E3935329F9EE7012E19C38F6FC86F7045D369C38673B08A2A3CF28729F50A486B46C902C56812A5F0B6EC06D7E99D8FF4D7B9DA70F4FFC5F69F19175137FA5E497042A1EA2045BBFA921BAC324CF18A46B958AFEF626F2A0CC4D7EF39FC7ACEB91751FC1723AB78E2543AF33FD6276542F6DB2AE1B68B376CED4DB5D6D725A5201FCB700BDFCBD8EB66EEAD14680527AD14658520AD14658629AD046500DA9401E14B13455A21F94901AD4C81069E75B3F13684ED82059401B99AE31D3673302ABD93C43E10D62425DB6CE3A58DA4C9D75E9D79CB9B38E6ADAAC1D42FB83C9393BE6474AD1738F3E45C3CD7717C74B6AE7CE9C878D02A0F7ED6728A9111B2D7435FDA107DCA0290E9BB99B6F2C75603037A821336030EC7DF27EEBE900879201505DC0F61BF8BFCB58FF96AFBA7FAA10FF03084A6D08B2DB7F20FFAEB9A67BCA3FF068E87EE1FA0746B6FC98DF7F50FEAEC9A67BEC3F70B2F50ABD3F30AEEDEBFCDC33D38C8FD0BD07D2AB31819A4F724D5F04BA02E5B3CF2770FD9F874082CCA3CCF29B9B2333DBA2CA3B04564DF442F521A1B26065E128729516ED62FB8D353FF05B079BB76917AB09A46E939DEFFFADB2F336EDB235E1C9FB08F16F0C106E4ABBE8D8C7DA6218DF5248BF30928E0C922E9FB535BEE22D45F00F621461F5682205DE4EC0FE20261972E9F408D0573FFAC3D959FB8BBA707EC7645941F0BFAF4BB12B9C9A659B1BBA088BC35BD2A86822BDD0DC62863C38522F224616C86550CD1FA0D33FD0903EEAF1CF2073ECDDD0FB84AD120643C6C1DC171EBCB813D0263FCD4210751EDFAFF8AF788821809A843FDCDFD38F09F1BD52EFEB8637210D04F72EF2E75E3E978C3FFB2E5F4BA4BB500E76D501E5E62B9DA2071CAC7C008BEFE90C3DE3757403FA7DC24BE4BE562F803A90EE8910CD3EBE246819A120CE31AAFEF01338EC052FDFFF1FBD9E87CA585A0000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[Advertisement] ON 

INSERT [dbo].[Advertisement] ([AdvertisementId], [LinkUrl], [HImageUrl], [VImageUrl]) VALUES (5, N'www.google.com', N'0035acc5-fe33-4fd9-8ff6-5c116b01699e.jpg', N'1d808cf9-e537-4189-8dae-838b8175413d.jpg')
INSERT [dbo].[Advertisement] ([AdvertisementId], [LinkUrl], [HImageUrl], [VImageUrl]) VALUES (7, N'www.google.com', N'1632ed45-8138-492e-bec2-7497f76599b4.jpg', N'32917daf-9a8d-4704-ae67-3e6a5e2bb2f0.jpg')
INSERT [dbo].[Advertisement] ([AdvertisementId], [LinkUrl], [HImageUrl], [VImageUrl]) VALUES (8, N'www.google.com', N'8abdcc96-0c64-4471-aa88-9364736b9239.jpg', N'ae83e85b-c443-415d-8f55-164f149f869b.jpg')
SET IDENTITY_INSERT [dbo].[Advertisement] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8102A6A8-3999-490F-8997-0793E86E014C', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'ABFBB704-3F8C-4FE2-9836-494E02951312', N'User')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'E4720B52-AF96-450B-B7FF-38ADB0139CFE', N'Developer')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8102A6A8-3999-490F-8997-0793E86E014C')
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [ProfileImage], [Address], [Tagline], [Gender], [DateOfBirth], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'bosskinds', NULL, NULL, NULL, NULL, NULL, N'admin@bosskinds.com', 1, N'AEbbNaH7o+dxHJADezsZf9n7GDv+PujBp4ray0ilUFuKezlztHFDEycRi42oR6fM+A==', N'08cd6397-0da6-445b-bd78-bf6cc56a8820', NULL, 1, 0, NULL, 1, 0, N'admin@bosskinds.com')
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandId], [Name], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (2, N'Shien', N'1', NULL, CAST(N'2019-02-04 05:56:31.370' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[CartDetails] ON 

INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (1, 0, N'eb49b1b4-31c7-4009-8e5e-668e65c2502c', 1, 60, 500, 500, 5, NULL, 0, N'XL', 4, CAST(N'2019-04-05 17:06:25.323' AS DateTime), NULL)
INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (2, 0, N'eb49b1b4-31c7-4009-8e5e-668e65c2502c', 1, 60, 500, 500, 5, NULL, 0, N'XL', 4, CAST(N'2019-04-05 17:06:22.980' AS DateTime), NULL)
INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (7, 0, N'cc65aa08-3141-49d2-a059-1a4e1b6c2c00', 2, 60, 500, 500, 5, NULL, 0, N'XS', 4, CAST(N'2019-04-06 10:57:54.940' AS DateTime), NULL)
INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (27, 0, N'a6122fe7-d9af-47fd-8c6f-43347e6e3203', 1, 70, 3000, 2750, 0, NULL, 0, N'One Size', 2, CAST(N'2019-04-07 13:28:00.317' AS DateTime), NULL)
INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (28, 0, N'a6122fe7-d9af-47fd-8c6f-43347e6e3203', 1, 70, 3000, 2750, 0, NULL, 0, N'One Size', 2, CAST(N'2019-04-07 13:31:24.100' AS DateTime), NULL)
INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (29, 0, N'c3206cbc-67d1-4e1a-8aea-5fd262df418e', 1, 60, 500, 500, 5, NULL, 0, N'XL', 4, CAST(N'2019-04-07 13:41:56.763' AS DateTime), NULL)
INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (35, 0, N'a6122fe7-d9af-47fd-8c6f-43347e6e3203', 1, 62, 500, 500, 5, NULL, 0, N'XL', 4, CAST(N'2019-04-14 19:04:28.670' AS DateTime), NULL)
INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (50, 0, N'5de820dd-91ab-422b-b1fa-953d21d6f950', 1, 60, 500, 500, 5, N'', 0, N'XL', 4, CAST(N'2019-05-28 10:21:11.487' AS DateTime), NULL)
INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (51, 0, N'89d9ba1a-e071-4818-90f1-f3c95c2a9155', 1, 60, 500, 500, 5, N'', 0, N'XL', 4, CAST(N'2019-06-29 08:51:40.937' AS DateTime), NULL)
INSERT [dbo].[CartDetails] ([CartDetailId], [ContactId], [CartCookie], [Quantity], [ProductId], [MRP], [Price], [TAX], [OfferTitle], [Discount], [SizeName], [ColorId], [CreatedDate], [UpdatedDate]) VALUES (52, 0, N'a2c22ee9-fab5-47dd-807e-d251c681feaa', 1, 71, 2800, 2500, 0, N'', 0, N'One Size', 16, CAST(N'2019-07-26 04:31:05.767' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[CartDetails] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (0, N'One Size', NULL, 0, NULL, 1, 1, N'1', NULL, CAST(N'2019-02-04 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (2, N'WOMEN', N'', 0, NULL, 2, 1, N'1', NULL, CAST(N'2019-02-04 04:50:20.890' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (3, N'MEN', N'', 0, NULL, 3, 1, N'1', NULL, CAST(N'2019-02-04 04:50:27.077' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (4, N'KIDS', N'', 0, NULL, 4, 1, N'1', NULL, CAST(N'2019-02-04 04:51:05.497' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (5, N'SERVICES', N'', 0, NULL, 5, 1, N'1', NULL, CAST(N'2019-02-04 04:51:10.867' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (7, N'All Catagories', N'', 2, N'Catalog/Index/2', 21, 1, N'1', N'1', CAST(N'2019-02-04 04:52:03.930' AS DateTime), CAST(N'2019-02-04 04:53:20.850' AS DateTime))
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (8, N'NEW IN', N'', 2, NULL, 22, 1, N'1', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-02-04 04:52:14.530' AS DateTime), CAST(N'2019-03-27 08:44:43.707' AS DateTime))
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (9, N'Party Dresses', N'', 2, NULL, 23, 1, N'1', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-02-04 04:52:35.383' AS DateTime), CAST(N'2019-03-27 08:44:42.757' AS DateTime))
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (11, N'Shalwars', N'', 2, NULL, 24, 1, N'1', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-02-04 04:53:44.680' AS DateTime), CAST(N'2019-03-27 08:44:45.787' AS DateTime))
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (12, N'Maxi Dresses', N'', 2, NULL, 25, 1, N'1', NULL, CAST(N'2019-02-04 04:54:23.333' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (13, N'Sharara Dresses', N'', 2, NULL, 26, 1, N'1', NULL, CAST(N'2019-02-04 04:54:37.997' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (14, N'Abaya', N'', 2, NULL, 27, 1, N'1', NULL, CAST(N'2019-02-04 04:54:47.550' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (15, N'Hijab', N'', 2, NULL, 28, 1, N'1', NULL, CAST(N'2019-02-04 04:54:55.013' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (16, N'Skirts & Blouses', N'', 2, NULL, 29, 1, N'1', NULL, CAST(N'2019-02-04 04:55:07.167' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (17, N'Linning', N'', 2, NULL, 31, 1, N'1', NULL, CAST(N'2019-02-04 04:55:19.853' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (18, N'Formal Dresses', N'', 2, NULL, 32, 1, N'1', NULL, CAST(N'2019-02-04 04:55:31.590' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (19, N'Shoes', N'', 2, NULL, 33, 1, N'1', NULL, CAST(N'2019-02-04 04:55:37.023' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (20, N'Sandals & flip flops', N'', 2, NULL, 34, 1, N'1', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-02-04 04:55:44.083' AS DateTime), CAST(N'2019-04-03 12:04:00.887' AS DateTime))
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (21, N'Flip-Flops', N'', 2, NULL, 35, 0, N'1', NULL, CAST(N'2019-02-04 04:55:53.173' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (22, N'All Catagories', N'', 3, N'Catalog/Index/3', 41, 1, N'1', NULL, CAST(N'2019-02-04 04:56:30.173' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (23, N'Jumpers & Cardians', N'', 3, NULL, 42, 1, N'1', NULL, CAST(N'2019-02-04 04:55:19.853' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (24, N'Jeans', N'', 3, NULL, 43, 1, N'1', NULL, CAST(N'2019-02-04 04:56:50.567' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (25, N'T-Shirts & Vests', N'', 3, NULL, 44, 1, N'1', NULL, CAST(N'2019-02-04 04:57:00.137' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (26, N'Shirts', N'', 3, NULL, 45, 1, N'1', NULL, CAST(N'2019-02-04 04:57:09.393' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (27, N'Chinos', N'', 3, NULL, 46, 1, N'1', NULL, CAST(N'2019-02-04 04:57:17.270' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (28, N'Trousers', N'', 3, NULL, 47, 1, N'1', NULL, CAST(N'2019-02-04 04:57:30.140' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (29, N'Trainers', N'', 3, NULL, 48, 1, N'1', NULL, CAST(N'2019-02-04 04:57:45.120' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (30, N'Sandals & Flip-Flops', N'', 3, NULL, 49, 1, N'1', NULL, CAST(N'2019-02-04 04:57:50.847' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (43, N'New arrivals', N'', 0, NULL, 7, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:42:11.917' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (44, N'UNIFORMS', N'', 5, N'javascript:void(0)', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:52:11.080' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (45, N'STUDIO', N'', 5, N'javascript:void(0)', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:52:20.033' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (46, N'School Uniform', N'', 44, NULL, NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:56:35.897' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (47, N'Madrasa Uniforms', N'', 44, NULL, NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:56:45.507' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (48, N'Private Uniforms', N'', 44, NULL, NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:56:55.950' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (49, N'Kitchen Uniforms', N'', 44, NULL, NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:57:10.920' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (50, N'Marriage Ceramony', N'', 45, N'Video/Index/50', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:57:23.390' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (51, N'Awarding Ceramony', N'', 45, N'Video/Index/51', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:57:31.087' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (52, N'Formal Functions', N'', 45, N'Video/Index/52', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:57:44.227' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (53, N'Sportsmeet', N'', 45, N'Video/Index/53', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:57:54.547' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (54, N'Greeting Cards', N'', 45, N'Video/Index/54', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:58:01.650' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (55, N'Printings', N'', 45, N'Video/Index/55', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:58:12.260' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (56, N'All Catagories', N'', 4, N'Catalog/Index/4', 61, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-14 07:08:14.747' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (57, N'Jeans', N'', 4, NULL, 63, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-14 07:08:29.000' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (58, N'T-Shirts & Vests', N'', 4, NULL, 64, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-14 07:08:38.150' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (59, N'Shirts', N'', 4, NULL, 65, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-14 07:08:50.367' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (60, N'Chinos', N'', 4, NULL, 66, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-14 07:08:57.637' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (61, N'Trousers', N'', 4, NULL, 67, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-14 07:09:06.423' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (62, N'Sandals & Flip-Flops', N'', 4, NULL, 69, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-14 07:09:14.613' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (63, N'Trainers', N'', 4, NULL, 68, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-14 07:09:26.593' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (65, N'Others', N'', 0, NULL, 6, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-12 03:42:11.917' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (67, N'Shoes', N'', 4, NULL, 70, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-04 04:56:30.173' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ImageName], [RootCategoryId], [CustomUrl], [OrderNo], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (68, N'Jumpers & Cardians', N'', 4, NULL, 62, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-14 07:09:33.753' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[CollectionPoints] ON 

INSERT [dbo].[CollectionPoints] ([CollectionPointId], [Address]) VALUES (5, N'147, Madawachchiya road
Horrowpothana
Anuradhapura.
025228765438
')
INSERT [dbo].[CollectionPoints] ([CollectionPointId], [Address]) VALUES (6, N'19, Bank town road
Anuradhapura
02522987645')
SET IDENTITY_INSERT [dbo].[CollectionPoints] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorId], [Name], [Hex], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (2, N'Black', N'#000000', N'1', NULL, CAST(N'2019-02-04 04:49:12.010' AS DateTime), NULL)
INSERT [dbo].[Color] ([ColorId], [Name], [Hex], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (3, N'White', N'#FFFFFF', N'1', NULL, CAST(N'2019-02-04 04:49:23.810' AS DateTime), NULL)
INSERT [dbo].[Color] ([ColorId], [Name], [Hex], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (4, N'Red', N'#FF0000', N'1', NULL, CAST(N'2019-02-04 04:49:39.957' AS DateTime), NULL)
INSERT [dbo].[Color] ([ColorId], [Name], [Hex], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (5, N'Green', N'#008000', N'1', NULL, CAST(N'2019-02-04 04:49:49.847' AS DateTime), NULL)
INSERT [dbo].[Color] ([ColorId], [Name], [Hex], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (6, N'Blue', N'#0000FF', N'1', NULL, CAST(N'2019-02-04 04:50:03.883' AS DateTime), NULL)
INSERT [dbo].[Color] ([ColorId], [Name], [Hex], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (8, N'Yellow', N'#FFFF00', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-23 16:37:31.413' AS DateTime), NULL)
INSERT [dbo].[Color] ([ColorId], [Name], [Hex], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (13, N'Lime', N'#00FF00', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-23 16:37:31.413' AS DateTime), NULL)
INSERT [dbo].[Color] ([ColorId], [Name], [Hex], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (14, N'Aqua', N'#00FFFF', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-23 16:37:31.413' AS DateTime), NULL)
INSERT [dbo].[Color] ([ColorId], [Name], [Hex], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (16, N'Navy', N'#000080', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', NULL, CAST(N'2019-02-23 16:37:31.413' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[Configurations] ON 

INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (1, N'LOGO', N'logo.png')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (2, N'WOMENCOVER', N'womencover.jpg')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (3, N'MENCOVER', N'mencover.jpg')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (4, N'KIDSCOVER', N'kidscover.jpg')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (5, N'UNIFORMCOVER', N'uniformcover.jpg')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (6, N'STUDIOCOVER', N'studiocover.jpg')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (7, N'MOBILENO', N'98988998989')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (8, N'WHATSAPP', N'98988998989')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (9, N'EMAIL', N'admin@gmail.com')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (10, N'ABOUTUS', N'<p>We started in 2019 and we are bringing you loved brands on the street.</p>

<p>at <big><span class="marker"><strong>AllStore</strong></span></big>, we are renowned stylish, affordable, new and original fashion to you. our product mainly focuses on women wear&rsquo;s, but it also offers men&#39;s apparel, children clothes, accessories, shoes, bags and other fashion items.</p>

<p><big><strong>AllStore </strong></big>manufacture and supplier of leisurewear, workwear and school uniforms. we understood the importance of making good impression &quot;Let your uniform do the talking&quot; with in-house embroidery and print facility. we can customize any garment by providing range of high-quality logo application solution with perfect results. our range of products makes us to go to people when it comes to promotional, industrial clothing, leisure wear and sportswear.</p>

<p><big><strong>AllStore </strong></big>also providing a high quality of making videos and photos of celebrations, parties and ceremonies with your loves.</p>')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (11, N'TERMSANDCONDITIONS', N'<p><strong>Terms and Conditions</strong> agreements act as a legal contract between you (the company) who has the website or mobile app and the user who access your website and mobile app.</p>

<p>Having a <strong>Terms and Conditions</strong> agreement is completely optional. No laws require you to have one. Not even the super-strict and wide-reaching General Data Protection Regulation (GDPR).</p>

<p>It&rsquo;s up to you to set the rules and guidelines that the user must agree to. You can think of your <strong>Terms and Conditions</strong> agreement as the legal agreement where you maintain your rights to exclude users from your app in the event that they abuse your app, where you maintain your legal rights against potential app abusers, and so on.</p>
')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (12, N'PRIVACYPOLICY', N'<p><strong>Terms and Conditions</strong> agreements act as a legal contract between you (the company) who has the website or mobile app and the user who access your website and mobile app.</p>

<p>Having a <strong>Terms and Conditions</strong> agreement is completely optional. No laws require you to have one. Not even the super-strict and wide-reaching General Data Protection Regulation (GDPR).</p>

<p>It&rsquo;s up to you to set the rules and guidelines that the user must agree to. You can think of your <strong>Terms and Conditions</strong> agreement as the legal agreement where you maintain your rights to exclude users from your app in the event that they abuse your app, where you maintain your legal rights against potential app abusers, and so on.</p>
')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (13, N'FBLink', N'https://www.facebook.com/')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (14, N'TWLink', N'https://twitter.com')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (15, N'INSLink', N'https://www.instagram.com/accounts/login/?hl=en')
INSERT [dbo].[Configurations] ([ConfigurationId], [ConfigurationType], [ConfigurationValue]) VALUES (16, N'LILink', N'https://www.linkedin.com')
SET IDENTITY_INSERT [dbo].[Configurations] OFF
SET IDENTITY_INSERT [dbo].[DiscountType] ON 

INSERT [dbo].[DiscountType] ([DiscountId], [Type]) VALUES (1, N'Flat Discount')
INSERT [dbo].[DiscountType] ([DiscountId], [Type]) VALUES (2, N'Percentage')
INSERT [dbo].[DiscountType] ([DiscountId], [Type]) VALUES (3, N'Specific Offer')
SET IDENTITY_INSERT [dbo].[DiscountType] OFF
INSERT [dbo].[EmailTemplete] ([EmailTempleteId], [Name], [Subject], [Body], [HashTag], [FromId], [BccId], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (1, N'Verification Email', N'Verify your email identity', N'<!-- Required Details:
#name#
#copyrightname#
#copyrightyear#

#website#
#verificationlink#
#signaturename#

#signatureimg# https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/_compresseds/da24cf15-10e5-4af3-b8f7-56013fdde0e0.jpg

#linkfacebook#
#linktwitter#
#linklinkedin#

#logolight# https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/13f425ab-c680-4ae0-88de-7b493d95095f.jpg
#logodark# https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/dbe9c57f-5e00-4d9f-9719-5d36a9a02ebc.jpg
 --><!--[if !mso]><!--><!--<![endif]--><!--[if (gte mso 9)|(IE)]>
        <style type="text/css">
            table {border-collapse: collapse !important;}
        </style>
        <![endif]-->
<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	<tbody>
		<tr>
			<td><!--[if (gte mso 9)|(IE)]>

                                      <table width="600" align="center" cellpadding="0" cellspacing="0" border="0" style="border-spacing:0" >
                                          <tr>
                                              <td style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;" >
                                              <![endif]--><!-- ======= start main body ======= -->
			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:100%">
				<tbody>
					<tr>
						<td><!-- ======= start header ======= -->
						<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
							<tbody>
								<tr>
									<td>
									<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
										<tbody>
											<tr>
												<td>
												<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:100%">
													<tbody>
														<tr>
															<td><!-- ======= start header ======= -->
															<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
																<tbody>
																	<tr>
																		<td style="text-align:left"><!--[if (gte mso 9)|(IE)]>
                                                                                                <table width="100%" style="border-spacing:0" >
                                                                                                <tr>
                                                                                                <td width="20%" valign="top" style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:30px;" >
                                                                                                <![endif]-->
																		<table style="width:100%">
																			<tbody>
																				<tr>
																					<td><a href="#website#" target="_blank"><img alt="" src="#logodark#" style="border-width:0; float:left; height:auto; width:60px" /></a></td>
																				</tr>
																			</tbody>
																		</table>

																		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
																			<tbody>
																				<tr>
																					<td>
																					<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
																						<tbody>
																							<tr>
																								<td style="vertical-align:top">&nbsp;</td>
																							</tr>
																							<tr>
																								<td style="vertical-align:top"><img alt="" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/392d9623-7a0f-47de-acdd-bf67d2a653c2.jpg" style="border-width:0; height:auto; width:20px" /><a href="#website#" target="_blank">Visit our website</a></td>
																							</tr>
																						</tbody>
																					</table>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																		<!--[if (gte mso 9)|(IE)]>
                                                                                                      </td>
                                                                                                      </tr>
                                                                                                      </table>
                                                                                                      <![endif]--></td>
																	</tr>
																	<tr>
																		<td>&nbsp;</td>
																	</tr>
																</tbody>
															</table>
															</td>
														</tr>
													</tbody>
												</table>
												</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- ======= end header ======= --><!-- ======= start hero ======= -->

						<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
							<tbody>
								<tr>
									<td style="vertical-align:top"><!--[if gte mso 9]>
                                                <v:rect xmlns:v="urn:schemas-microsoft-com:vml" fill="true" stroke="false" style="width:600px;height:303px;">
                                                  <v:fill type="tile" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/42ba8b72-65d6-4dea-b8ab-3ecc12676337.jpg" color="#2f9780" />
                                                  <v:textbox inset="0,0,0,0">
                                                <![endif]--><br />
									&nbsp;
									<p>Just one more step...</p>
									<!--[if gte mso 9]>
                                                  </v:textbox>
                                                </v:rect>
                                                <![endif]--></td>
								</tr>
							</tbody>
						</table>
						<!-- ======= end hero  ======= --><!-- ======= start article ======= -->

						<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
							<tbody>
								<tr>
									<td>
									<p>Dear #name#,<br />
									<br />
									We received a request to set up your account with us. If this is correct, please confirm your email address by clicking big button below.<br />
									&nbsp;</p>

									<table align="center" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td>
												<table border="0" cellpadding="0" cellspacing="0">
													<tbody>
														<tr>
															<td><a href="#verificationlink#">Verify Email<img alt="" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/73ac4376-78ab-4d32-a0b5-b8195202e51f.jpg" style="height:17px; width:32px" /> </a></td>
														</tr>
													</tbody>
												</table>
												</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
								<tr>
									<td><br />
									<br />
									<br />
									on behalf of the company<br />
									<img alt="" src="#signatureimg#" style="height:61px; width:312px" /><br />
									#signaturename#</td>
								</tr>
							</tbody>
						</table>
						<!-- ======= end article ======= --><!-- ======= start footer ======= -->

						<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
							<tbody>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td style="text-align:center"><!--[if (gte mso 9)|(IE)]>
                                                <table width="100%" style="border-spacing:0" >
                                                <tr>
                                                <td width="60%" valign="top" style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;" >
                                                <![endif]-->
									<table style="width:100%">
										<tbody>
											<tr>
												<td><a href="#website#" target="_blank"><img alt="" src="#logolight#" style="border-width:0; height:auto; width:59px" /></a></td>
												<td style="vertical-align:middle">
												<p>&copy; #copyrightyear# #copyrightname#<br />
												All rights reserved.</p>
												</td>
											</tr>
										</tbody>
									</table>

									<table style="width:100%">
										<tbody>
											<tr>
												<td>
												<table style="width:100%">
													<tbody>
														<tr>
															<td style="vertical-align:top">
															<table border="0" cellpadding="0" cellspacing="0" style="width:150px">
																<tbody>
																	<tr>
																		<td><a href="#linkfacebook#" target="_blank"><img alt="facebook" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/51f10cc9-b6d3-409d-9a64-4080a155b8c7.jpg" style="border-width:0; height:auto; width:36px" /></a></td>
																		<td><a href="#linktwitter#" target="_blank"><img alt="twitter" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/f910c3b7-2369-4b33-87e8-90ba1748d47a.jpg" style="border-width:0; height:auto; width:36px" /></a></td>
																		<td><a href="#linklinkedin#" target="_blank"><img alt="linkedin" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/0efcd6de-1324-4e05-871b-a93f6056f00e.jpg" style="border-width:0; height:auto; width:36px" /></a></td>
																	</tr>
																</tbody>
															</table>
															</td>
														</tr>
													</tbody>
												</table>
												</td>
											</tr>
										</tbody>
									</table>
									<!--[if (gte mso 9)|(IE)]> 	</td> 											</tr> </table> 									<![endif]--></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
							</tbody>
						</table>
						<!-- ======= end footer ======= --></td>
					</tr>
				</tbody>
			</table>
			<!--[if (gte mso 9)|(IE)]>
                                  </td>
                              </tr>
                          </table>
                          <![endif]--></td>
		</tr>
	</tbody>
</table>
', N'name, copyrightname, copyrightyear, website, verificationlink,signaturename, signatureimg, linkfacebook, linktwitter, linklinkedin, logolight, logodark', N'noreply@riowebs.com', NULL, 0, N'1', NULL, CAST(N'2019-01-11 08:43:19.163' AS DateTime), NULL)
INSERT [dbo].[EmailTemplete] ([EmailTempleteId], [Name], [Subject], [Body], [HashTag], [FromId], [BccId], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (2, N'Reset Password', N'Forgot your password ?', N'<!-- Required Details:
#name#
#copyrightname#
#copyrightyear#

#website#
#resetlink#
#signaturename#

#signatureimg# https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/_compresseds/da24cf15-10e5-4af3-b8f7-56013fdde0e0.jpg

#linkfacebook#
#linktwitter#
#linklinkedin#

#logolight# https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/13f425ab-c680-4ae0-88de-7b493d95095f.jpg
#logodark# https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/dbe9c57f-5e00-4d9f-9719-5d36a9a02ebc.jpg
 --><!--[if !mso]><!--><!--<![endif]--><!--[if (gte mso 9)|(IE)]>
        <style type="text/css">
            table {border-collapse: collapse !important;}
        </style>
        <![endif]-->
<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	<tbody>
		<tr>
			<td><!--[if (gte mso 9)|(IE)]>

                                      <table width="600" align="center" cellpadding="0" cellspacing="0" border="0" style="border-spacing:0" >
                                          <tr>
                                              <td style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;" >
                                              <![endif]--><!-- ======= start main body ======= -->
			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:100%">
				<tbody>
					<tr>
						<td><!-- ======= start header ======= -->
						<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
							<tbody>
								<tr>
									<td>
									<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
										<tbody>
											<tr>
												<td>
												<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:100%">
													<tbody>
														<tr>
															<td><!-- ======= start header ======= -->
															<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
																<tbody>
																	<tr>
																		<td style="text-align:left"><!--[if (gte mso 9)|(IE)]>
                                                                                                <table width="100%" style="border-spacing:0" >
                                                                                                <tr>
                                                                                                <td width="20%" valign="top" style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:30px;" >
                                                                                                <![endif]-->
																		<table style="width:100%">
																			<tbody>
																				<tr>
																					<td><a href="#website#" target="_blank"><img alt="" src="#logodark#" style="border-width:0; float:left; height:auto; width:60px" /></a></td>
																				</tr>
																			</tbody>
																		</table>

																		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
																			<tbody>
																				<tr>
																					<td>
																					<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
																						<tbody>
																							<tr>
																								<td style="vertical-align:top">&nbsp;</td>
																							</tr>
																							<tr>
																								<td style="vertical-align:top"><img alt="" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/392d9623-7a0f-47de-acdd-bf67d2a653c2.jpg" style="border-width:0; height:auto; width:20px" /><a href="#website#" target="_blank">Visit our website</a></td>
																							</tr>
																						</tbody>
																					</table>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																		<!--[if (gte mso 9)|(IE)]>
                                                                                                      </td>
                                                                                                      </tr>
                                                                                                      </table>
                                                                                                      <![endif]--></td>
																	</tr>
																	<tr>
																		<td>&nbsp;</td>
																	</tr>
																</tbody>
															</table>
															</td>
														</tr>
													</tbody>
												</table>
												</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- ======= end header ======= --><!-- ======= start hero ======= -->

						<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
							<tbody>
								<tr>
									<td style="vertical-align:top"><!--[if gte mso 9]>
                                                <v:rect xmlns:v="urn:schemas-microsoft-com:vml" fill="true" stroke="false" style="width:600px;height:303px;">
                                                  <v:fill type="tile" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/42ba8b72-65d6-4dea-b8ab-3ecc12676337.jpg" color="#2f9780" />
                                                  <v:textbox inset="0,0,0,0">
                                                <![endif]--><br />
									&nbsp;
									<p>Reset Password ?</p>
									<!--[if gte mso 9]>
                                                  </v:textbox>
                                                </v:rect>
                                                <![endif]--></td>
								</tr>
							</tbody>
						</table>
						<!-- ======= end hero  ======= --><!-- ======= start article ======= -->

						<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
							<tbody>
								<tr>
									<td>
									<p>Dear #name#,<br />
									<br />
									Seems like you forgot your password for account. If this is true, click below big button to reset your password. If you did not forgot your password you safely ignore this email.<br />
									&nbsp;</p>

									<table align="center" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td>
												<table border="0" cellpadding="0" cellspacing="0">
													<tbody>
														<tr>
															<td><a href="#resetlink#">Reset My Password<img alt="" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/73ac4376-78ab-4d32-a0b5-b8195202e51f.jpg" style="height:17px; width:32px" /> </a></td>
														</tr>
													</tbody>
												</table>
												</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
								<tr>
									<td><br />
									<br />
									<br />
									on behalf of the company<br />
									<img alt="" src="#signatureimg#" style="height:61px; width:312px" /><br />
									#signaturename#</td>
								</tr>
							</tbody>
						</table>
						<!-- ======= end article ======= --><!-- ======= start footer ======= -->

						<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
							<tbody>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td style="text-align:center"><!--[if (gte mso 9)|(IE)]>
                                                <table width="100%" style="border-spacing:0" >
                                                <tr>
                                                <td width="60%" valign="top" style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;" >
                                                <![endif]-->
									<table style="width:100%">
										<tbody>
											<tr>
												<td><a href="#website#" target="_blank"><img alt="" src="#logolight#" style="border-width:0; height:auto; width:59px" /></a></td>
												<td style="vertical-align:middle">
												<p>&copy; #copyrightyear# #copyrightname#<br />
												All rights reserved.</p>
												</td>
											</tr>
										</tbody>
									</table>

									<table style="width:100%">
										<tbody>
											<tr>
												<td>
												<table style="width:100%">
													<tbody>
														<tr>
															<td style="vertical-align:top">
															<table border="0" cellpadding="0" cellspacing="0" style="width:150px">
																<tbody>
																	<tr>
																		<td><a href="#linkfacebook#" target="_blank"><img alt="facebook" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/51f10cc9-b6d3-409d-9a64-4080a155b8c7.jpg" style="border-width:0; height:auto; width:36px" /></a></td>
																		<td><a href="#linktwitter#" target="_blank"><img alt="twitter" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/f910c3b7-2369-4b33-87e8-90ba1748d47a.jpg" style="border-width:0; height:auto; width:36px" /></a></td>
																		<td><a href="#linklinkedin#" target="_blank"><img alt="linkedin" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/0efcd6de-1324-4e05-871b-a93f6056f00e.jpg" style="border-width:0; height:auto; width:36px" /></a></td>
																	</tr>
																</tbody>
															</table>
															</td>
														</tr>
													</tbody>
												</table>
												</td>
											</tr>
										</tbody>
									</table>
									<!--[if (gte mso 9)|(IE)]> 	</td> 											</tr> </table> 									<![endif]--></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
							</tbody>
						</table>
						<!-- ======= end footer ======= --></td>
					</tr>
				</tbody>
			</table>
			<!--[if (gte mso 9)|(IE)]>
                                  </td>
                              </tr>
                          </table>
                          <![endif]--></td>
		</tr>
	</tbody>
</table>
', N'name, copyrightname, copyrightyear, website, resetlink,signaturename, signatureimg, linkfacebook, linktwitter, linklinkedin, logolight, logodark', N'noreply@riowebs.com', NULL, 0, N'1', NULL, CAST(N'2019-01-11 08:44:27.230' AS DateTime), NULL)
INSERT [dbo].[EmailTemplete] ([EmailTempleteId], [Name], [Subject], [Body], [HashTag], [FromId], [BccId], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (3, N'Contact Product', N'We have received your enquiry', N'<!-- Required Details:#tabledata##name##website##confirmlink##signaturename##signatureimg# https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/_compresseds/da24cf15-10e5-4af3-b8f7-56013fdde0e0.jpg#linkfacebook##linktwitter##linklinkedin##logolight#https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/13f425ab-c680-4ae0-88de-7b493d95095f.jpg#logodark#https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/dbe9c57f-5e00-4d9f-9719-5d36a9a02ebc.jpg--><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><!--[if !mso]><!--><meta http-equiv="X-UA-Compatible" content="IE=edge" /><!--<![endif]--><meta name="viewport" content="width=device-width, initial-scale=1.0" /><title></title><style type="text/css">* {-webkit-font-smoothing: antialiased;}body {Margin: 0;padding: 0;min-width: 100%;font-family: Arial, sans-serif;-webkit-font-smoothing: antialiased;mso-line-height-rule: exactly;}table {border-spacing: 0;color: #333333;font-family: Arial, sans-serif;}img {border: 0;}.wrapper {width: 100%;table-layout: fixed;-webkit-text-size-adjust: 100%;-ms-text-size-adjust: 100%;}.webkit {max-width: 600px;}.outer {Margin: 0 auto;width: 100%;max-width: 600px;}.full-width-image img {width: 100%;max-width: 600px;height: auto;}.inner {padding: 10px;}p {Margin: 0;padding-bottom: 10px;}.h1 {font-size: 21px;font-weight: bold;Margin-top: 15px;Margin-bottom: 5px;font-family: Arial, sans-serif;-webkit-font-smoothing: antialiased;}.h2 {font-size: 18px;font-weight: bold;Margin-top: 10px;Margin-bottom: 5px;font-family: Arial, sans-serif;-webkit-font-smoothing: antialiased;}.one-column .contents {text-align: left;font-family: Arial, sans-serif;-webkit-font-smoothing: antialiased;}.one-column p {font-size: 14px;Margin-bottom: 10px;font-family: Arial, sans-serif;-webkit-font-smoothing: antialiased;}.two-column {text-align: center;font-size: 0;}.two-column .column {width: 100%;max-width: 300px;display: inline-block;vertical-align: top;}.contents {width: 100%;}.two-column .contents {font-size: 14px;text-align: left;}.two-column img {width: 100%;max-width: 280px;height: auto;}.two-column .text {padding-top: 10px;}.three-column {text-align: center;font-size: 0;padding-top: 10px;padding-bottom: 10px;}.three-column .column {width: 100%;max-width: 200px;display: inline-block;vertical-align: top;}.three-column .contents {font-size: 14px;text-align: center;}.three-column img {width: 100%;max-width: 180px;height: auto;}.three-column .text {padding-top: 10px;}.img-align-vertical img {display: inline-block;vertical-align: middle;}@media only screen and (max-device-width: 480px) {table[class=hide], img[class=hide], td[class=hide] {display: none !important;}.contents1 {width: 100%;}.contents1 {width: 100%;}</style><!--[if (gte mso 9)|(IE)]><style type="text/css">table {border-collapse: collapse !important;}</style><![endif]--></head><body style="Margin:0;padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;min-width:100%;background-color:#f3f2f0;"><center class="wrapper" style="width:100%;table-layout:fixed;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;background-color:#f3f2f0;"><table width="100%" cellpadding="0" cellspacing="0" border="0" style="background-color:#f3f2f0;" bgcolor="#f3f2f0;"><tr><td width="100%"><div class="webkit" style="max-width:600px;Margin:0 auto;"><!--[if (gte mso 9)|(IE)]><table width="600" align="center" cellpadding="0" cellspacing="0" border="0" style="border-spacing:0" ><tr><td style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;" ><![endif]--><!-- ======= start main body ======= --><table class="outer" align="center" cellpadding="0" cellspacing="0" border="0" style="border-spacing:0;Margin:0 auto;width:100%;max-width:600px;"><tr><td style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;"><!-- ======= start header ======= --><table border="0" width="100%" cellpadding="0" cellspacing="0"><tr><td><table style="width:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td align="center"><center><table border="0" align="center" width="100%" cellpadding="0" cellspacing="0" style="Margin: 0 auto;"><tbody><tr><td class="one-column" style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;" bgcolor="#FFFFFF"><!-- ======= start header ======= --><table cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="#f3f2f0"><tr><td class="two-column" style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;text-align:left;font-size:0;"><!--[if (gte mso 9)|(IE)]><table width="100%" style="border-spacing:0" ><tr><td width="20%" valign="top" style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:30px;" ><![endif]--><div class="column" style="width:100%;max-width:80px;display:inline-block;vertical-align:top;"><table class="contents" style="border-spacing:0; width:100%"></table></div><!--[if (gte mso 9)|(IE)]></td><td width="80%" valign="top" style="padding-top:0;padding-bottom:0;padding-right:0;padding-left:0;" ><![endif]--><div class="column" style="width:100%;max-width:518px;display:inline-block;vertical-align:top;"><table width="100%" style="border-spacing:0" cellpadding="0" cellspacing="0" border="0"><tr><td class="inner" style="padding-top:0px;padding-bottom:10px; padding-right:10px;padding-left:10px;"><table class="contents" style="border-spacing:0; width:100%" cellpadding="0" cellspacing="0" border="0"><tr><td align="left" valign="top">&nbsp;</td></tr></table></td></tr></table></div><!--[if (gte mso 9)|(IE)]></td></tr></table><![endif]--></td></tr><tr><td>&nbsp;</td></tr></table></td></tr></tbody></table></center></td></tr></tbody></table></td></tr></table><!-- ======= end header ======= --><!-- ======= start hero ======= --><table class="one-column" border="0" cellpadding="0" cellspacing="0" width="100%" style="border-spacing:0; border-left:1px solid #e8e7e5; border-right:1px solid #e8e7e5; border-bottom:1px solid #e8e7e5; border-top:1px solid #e8e7e5" bgcolor="#FFFFFF"><tr><td background="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/42ba8b72-65d6-4dea-b8ab-3ecc12676337.jpg" bgcolor="#2f9780" width="600" height="80" valign="top" align="center" style="padding:40px 40px 5px 40px"><!--[if gte mso 9]><v:rect xmlns:v="urn:schemas-microsoft-com:vml" fill="true" stroke="false" style="width:600px;height:303px;"><v:fill type="tile" src="https://gallery.mailchimp.com/fdcaf86ecc5056741eb5cbc18/images/42ba8b72-65d6-4dea-b8ab-3ecc12676337.jpg" color="#2f9780" /><v:textbox inset="0,0,0,0"><![endif]--><div><p style="color:#ffffff; font-size:60px; text-align:center; font-family: Verdana, Geneva, sans-serif">BOSSKINDS!</p><br /></div><!--[if gte mso 9]></v:textbox></v:rect><![endif]--></td></tr></table><!-- ======= end hero  ======= --><!-- ======= start article ======= --><table class="one-column" border="0" cellpadding="0" cellspacing="0" width="100%" style="border-spacing:0; border-left:1px solid #e8e7e5; border-right:1px solid #e8e7e5; border-bottom:1px solid #e8e7e5; border-top:1px solid #e8e7e5" bgcolor="#FFFFFF"><tr><td align="center" style="padding:50px 50px 50px 50px"><p style="color:#262626; font-size:16px; text-align:justify; font-family: Verdana, Geneva, sans-serif; line-height:22px ">Hello #name#,<br> (#email# , #phone#) <br/>We`ve received your enquiry.					  <br /><br /></p>#tabledata#<br /><br /><p style="color:#262626; font-size:16px; text-align:justify; font-family: Verdana, Geneva, sans-serif; line-height:22px ">We will contact you shortly. Thank You!</p></td></tr><tr><td align="center" style="padding:0px 50px 50px 50px"><br /><img src="http://bosskinds.com/Uploads/Configuration/logo/logo.png" width="200" height="61" alt="" border="0" /><br /></td></tr></table><!-- ======= end article ======= --><!-- ======= start footer ======= --><!-- ======= end footer ======= --></td></tr></table><!--[if (gte mso 9)|(IE)]></td></tr></table><![endif]--></div></td></tr></table></center></body></html>', N'name,email,phone,tabledata, copyrightname, copyrightyear, website, resetlink,signaturename, signatureimg, linkfacebook, linktwitter, linklinkedin, logolight, logodark', N'noreply@riowebs.com', NULL, 0, N'1', NULL, CAST(N'2019-01-11 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[FAQ] ON 

INSERT [dbo].[FAQ] ([FAQId], [Question], [Answer], [CreatedDate], [UpdatedDate]) VALUES (1, N'What It a long established fact that a reader ?', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.', CAST(N'2019-02-06 13:45:40.407' AS DateTime), NULL)
INSERT [dbo].[FAQ] ([FAQId], [Question], [Answer], [CreatedDate], [UpdatedDate]) VALUES (2, N'Ipsum generators on the Internet tend ?', N'Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', CAST(N'2019-02-06 05:17:57.597' AS DateTime), NULL)
INSERT [dbo].[FAQ] ([FAQId], [Question], [Answer], [CreatedDate], [UpdatedDate]) VALUES (3, N'Many desktop publishing packages ?', N'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', CAST(N'2019-02-06 05:18:13.757' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[FAQ] OFF
SET IDENTITY_INSERT [dbo].[FileManagers] ON 

INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (1, 7, N'4867cbcf-e0fd-4d01-ba26-c706228a2692.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (2, 7, N'de528d51-6a80-431c-872c-a5b0721370a2.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (3, 7, N'c7536713-c3f8-4015-b4f7-f85d202c597a.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (4, 7, N'08dbb2de-dfb8-4259-aca3-bb27d5cb2bf8.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (5, 7, N'f4809c1e-4292-4ea2-95a3-cd9abbda35a1.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (6, 7, N'ba3e6af2-6018-495f-a8e0-ae1eae9eb90f.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (7, 7, N'f4d0d7e1-e30b-4255-991b-877b2cd9a742.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (8, 7, N'cf89f99d-4edb-4fff-bed5-bf9b47b687a3.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (12, 8, N'767ac0e1-b0a9-454e-ba05-ef044a7d8390.png')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (13, 8, N'ee44eda1-adca-41e2-ab15-e2e46bfcb361.png')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (14, 8, N'66f82e0a-6ffb-4331-919c-bac6de32432c.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (35, 1, N'c584dc24-6b56-4d2a-91d9-d537aaa173ce.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (36, 1, N'f4f1d99e-156a-4a5a-a1a1-5639ee42e431.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (37, 1, N'00bff538-1e7c-4ee3-a897-a8abb2a50732.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (38, 1, N'58d0b17d-7a84-474d-96d8-be5dd6112cae.jpg')
INSERT [dbo].[FileManagers] ([ImageId], [typeId], [ImageName]) VALUES (39, 1, N'da23a45f-545c-4f84-a845-6163e60d8608.jpg')
SET IDENTITY_INSERT [dbo].[FileManagers] OFF
SET IDENTITY_INSERT [dbo].[Offers] ON 

INSERT [dbo].[Offers] ([OfferId], [Title], [DiscountId], [DiscountPercentage], [FlatDiscount], [SpecificItems], [SpecificValue]) VALUES (0, N'No Offer Available', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Offers] ([OfferId], [Title], [DiscountId], [DiscountPercentage], [FlatDiscount], [SpecificItems], [SpecificValue]) VALUES (1, N'Flat Rs 20', 1, NULL, 20, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Offers] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (60, 11, 0, N'Aperiam nihil veniam', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:29:23.840' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (61, 11, 1, N'Aperiam nihil veniam', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:29:29.090' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (62, 26, 1, N'Aperiam nihil veniam', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:30:52.720' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (63, 29, 0, N'Aperiam nihil veniam', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:30:45.097' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (64, 9, 0, N'Aperiam nihil veniam', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:25:46.507' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (65, 25, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:26:02.323' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (66, 11, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:29:07.857' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (67, 11, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:29:13.847' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (68, 25, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:26:52.977' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (69, 25, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:27:07.047' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (70, 27, 0, N'ALYSSUM ABAYA', 3000, 2750, 0, N'BK5000', N'Get ultimate summer vibes in this eye catching floral abaya.Featuring a beautiful 
delicate petal embroidery design through the shoulders and draping down the back, 
this black open abaya has you covered for all occasions.
Choice - We do all What customer Needs (style/design/Size)', N'<p>Get ultimate summer vibes in this eye catching floral abaya. Featuring a beautiful delicate petal embroidery design through&nbsp;<br />
the shoulders and draping down the back, this black open abaya&nbsp;has you covered for all occasions.and also this is totally home made.</p>
', N'women abaya,trendy abaya,new design abaya,srilankan abaya,casual abaya,black abaya,abaya,season abaya', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-07 13:24:41.717' AS DateTime), CAST(N'2019-09-13 10:30:26.237' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (71, 26, 0, N'Aubergine Embroidered Kimono', 2800, 2500, 0, N'BK5001', N'Get ultimate summer vibes in this eye catching floral abaya. Featuring a beautiful delicate petal 
embroidery design through the shoulders and draping down the back, this black open abaya 
has you covered for all occasions.                                                                                                         
Choice - We do all What customer Needs (style/design/Size)', N'<p>Get ultimate summer vibes in this eye catching floral abaya. Featuring a beautiful delicate petal embroidery design through&nbsp;<br />
the shoulders and draping down the back, this black open abaya&nbsp;has you covered for all occasions.<br />
Choice - We do all What customer Needs (style/design/Size)</p>
', N'ABAYA,SRILANKAN ABAYA', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-07 14:00:18.917' AS DateTime), CAST(N'2019-09-13 10:30:39.350' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (72, 27, 0, N'ALYSSUM ABAYA', 3000, 2750, 0, N'BK5000', N'Get ultimate summer vibes in this eye catching floral abaya.Featuring a beautiful 
delicate petal embroidery design through the shoulders and draping down the back, 
this black open abaya has you covered for all occasions.
Choice - We do all What customer Needs (style/design/Size)', N'<p>Get ultimate summer vibes in this eye catching floral abaya. Featuring a beautiful delicate petal embroidery design through&nbsp;<br />
the shoulders and draping down the back, this black open abaya&nbsp;has you covered for all occasions.and also this is totally home made.</p>
', N'women abaya,trendy abaya,new design abaya,srilankan abaya,casual abaya,black abaya,abaya,season abaya', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-07 13:24:41.717' AS DateTime), CAST(N'2019-09-13 10:30:26.237' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (73, 25, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:26:02.323' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (74, 11, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:29:07.857' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (75, 11, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:29:13.847' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (76, 11, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:29:07.857' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (77, 11, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:29:13.847' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (78, 25, 0, N'Nulla numquam obcaecati', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', N'men,tshirt', 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:26:02.323' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [OfferId], [ProductName], [MRP], [Price], [TAX], [SKU], [ShortDescription], [FullDescription], [Tag], [IsActive], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (79, 9, 0, N'Aperiam nihil veniam', 500, 500, 5, N'05464207', N'Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda ', N'<p>Quis temporibus hic reprehenderit explicabo odio earum maxime cupiditate mollitia magni laboriosam illum adipisci, ipsam, repellendus optio esse dolorem incidunt debitis eius voluptate expedita assumenda. Praesentium iure inventore nostrum corporis illum, est asperiores accusamus, ducimus, accusantium natus illo</p>

<p>Ad officiis omnis eaque, tempora quidem, vel, esse quasi qui sed rem provident ea autem accusamus? Aspernatur excepturi rem illo amet sapiente non repellat debitis dignissimos quod, accusamus corrupti consectetur optio maiores, sint aliquam. Veniam, non harum voluptate dicta sit porro iste cumque eligendi placeat ea voluptatem deserunt quam quo facere! Libero vitae rem dolore placeat quae, magni voluptate maiores nemo ullam temporibus adipisci perferendis laboriosam illo ipsam quia numquam, ipsum delectus at vel error iure aspernatur</p>
', NULL, 1, N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', N'8fc66af4-4bfc-419c-b791-ab36c41b6f0b', CAST(N'2019-04-05 15:01:49.680' AS DateTime), CAST(N'2019-09-13 10:25:46.507' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (57, 64, 15, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (58, 64, 18, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (59, 64, 19, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (60, 65, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (61, 65, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (62, 65, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (69, 68, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (70, 68, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (71, 68, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (72, 69, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (73, 69, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (74, 69, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (77, 66, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (78, 66, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (79, 66, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (80, 67, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (81, 67, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (82, 67, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (83, 60, 15, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (84, 60, 18, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (85, 60, 19, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (86, 61, 15, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (87, 61, 18, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (88, 61, 19, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (91, 70, 46, 2, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (92, 71, 8, 16, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (93, 63, 15, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (94, 63, 18, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (95, 63, 19, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (96, 62, 15, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (97, 62, 18, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (98, 62, 19, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (99, 72, 46, 2, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (100, 73, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (101, 73, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (102, 73, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (103, 74, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (104, 74, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (105, 74, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (106, 75, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (107, 75, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (108, 75, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (109, 76, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (110, 76, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (111, 76, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (112, 77, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (113, 77, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (114, 77, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (115, 78, 131, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (116, 78, 130, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (117, 78, 132, 13, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (118, 79, 15, 4, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (119, 79, 18, 14, NULL)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductId], [SizeId], [ColorId], [StockQty]) VALUES (120, 79, 19, 13, NULL)
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
SET IDENTITY_INSERT [dbo].[ProductFeature] ON 

INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (102, 64, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (103, 64, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (104, 64, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (105, 64, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (106, 64, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (107, 65, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (108, 65, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (109, 65, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (110, 65, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (111, 65, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (122, 68, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (123, 68, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (124, 68, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (125, 68, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (126, 68, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (127, 69, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (128, 69, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (129, 69, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (130, 69, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (131, 69, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (143, 66, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (144, 66, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (145, 66, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (146, 66, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (147, 66, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (148, 67, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (149, 67, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (150, 67, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (151, 67, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (152, 67, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (153, 60, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (154, 60, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (155, 60, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (156, 60, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (157, 60, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (158, 61, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (159, 61, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (160, 61, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (161, 61, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (162, 61, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (174, 70, N'Material', N'Febric- Nida')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (175, 70, N'Style', N'Close')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (176, 70, N'Type', N'Traditional Wear')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (177, 70, N'Wash', N'Machine Washable')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (178, 70, N'Made', N'100% Home Made')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (179, 70, N'Weight', N'1 kg')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (180, 71, N'Material', N'Febric- Nida')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (181, 71, N'Style	', N'Close')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (182, 71, N'Type', N'Traditional Wear')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (183, 71, N'Made', N'100% Home Made')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (184, 71, N'Weight', N'1 kg')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (185, 63, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (186, 63, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (187, 63, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (188, 63, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (189, 63, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (190, 62, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (191, 62, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (192, 62, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (193, 62, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (194, 62, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (195, 72, N'Material', N'Febric- Nida')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (196, 72, N'Style', N'Close')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (197, 72, N'Type', N'Traditional Wear')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (198, 72, N'Wash', N'Machine Washable')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (199, 72, N'Made', N'100% Home Made')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (200, 72, N'Weight', N'1 kg')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (201, 73, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (202, 73, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (203, 73, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (204, 73, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (205, 73, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (206, 74, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (207, 74, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (208, 74, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (209, 74, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (210, 74, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (211, 75, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (212, 75, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (213, 75, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (214, 75, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (215, 75, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (216, 76, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (217, 76, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (218, 76, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (219, 76, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (220, 76, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (221, 77, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (222, 77, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (223, 77, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (224, 77, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (225, 77, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (226, 78, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (227, 78, N'Material', N'Nylon')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (228, 78, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (229, 78, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (230, 78, N'Gender', N'Unisex')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (231, 79, N'Rain Cover', N'No')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (232, 79, N'Material', N'Nylon')
GO
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (233, 79, N'Pattern Type', N'Solid')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (234, 79, N'Style', N'Sport')
INSERT [dbo].[ProductFeature] ([FeatureId], [ProductId], [FeatureType], [FeatureValue]) VALUES (235, 79, N'Gender', N'Unisex')
SET IDENTITY_INSERT [dbo].[ProductFeature] OFF
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (52, 60, N'3ba705a0-c59a-4792-ac81-728c9d08109f.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (53, 60, N'e9bc6b72-d6a9-4f81-b509-af687cf5326c.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (54, 61, N'47fdf1f2-e11e-46a4-9bd4-1ca26cd48f69.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (55, 61, N'4a992c4d-157e-464a-8dbe-9c983b13607b.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (56, 61, N'65e0d237-94ae-4184-b77c-64a8399d2be8.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (57, 62, N'1a388df8-f336-4e7b-b8a0-f28a97b4d764.png', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (58, 62, N'5833f798-d2b3-440f-96b8-74b3593c0519.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (59, 62, N'005e8400-b160-41bd-91ae-4b665d75ccaa.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (60, 62, N'85260ad3-dd31-41e9-b86d-df0747df5f05.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (61, 63, N'ff251f46-c634-4170-96ef-11b089f187df.png', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (62, 63, N'8d32b0f0-7fcd-4f1a-b862-3be5d5f0d155.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (63, 63, N'f5869950-7c4a-484c-b18d-e3ffb05fa28c.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (64, 63, N'2b426850-9f6e-4f2d-a34d-38a440a0bb35.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (65, 64, N'6f99eebe-405c-4a2c-8374-911220932e39.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (66, 64, N'f067cb1f-47b9-400f-927f-a70812315e13.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (67, 64, N'd6edcff2-3f57-4c72-bd18-49196ab23046.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (68, 64, N'0d40cb05-2865-438a-af89-83310feab1f5.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (69, 65, N'6bf5e062-8b1a-403f-9c41-46c975bd975e.png', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (70, 65, N'b5956233-4cde-4ffe-8456-bc433578ec87.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (71, 65, N'f5723efd-2d34-4338-ae0a-7394f4a2db86.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (72, 66, N'06c6d2c1-b8a7-4154-9ad1-68af503132e0.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (73, 66, N'73321f63-fd3c-4a1a-9c95-0da7bf8ee984.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (74, 66, N'752da1c5-c691-4bff-a8b4-a9568c266ec5.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (75, 67, N'739b342b-0726-4a90-9471-6e6142d3de05.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (76, 67, N'5f239ba0-d1b1-4f02-ab28-d51a17853e0f.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (77, 68, N'80d32009-6e3a-47d9-acbf-2d98f0793bd2.png', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (78, 68, N'831a95be-8358-421c-8a96-6b8427944da8.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (79, 68, N'369943ea-ed86-475a-99eb-be71ac4eca1f.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (80, 69, N'f1688819-4b8c-4b4a-9961-973c25df7ce6.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (81, 69, N'971eeebc-3a1b-4c18-b35b-afbc5dfb4111.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (82, 69, N'3406d417-3070-4cc4-979b-029e198536ba.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (83, 69, N'7e81232f-b315-40fb-bd35-7fe4ce8ea4c6.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (84, 70, N'70a40788-739b-4721-b181-5058640f0e46.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (85, 70, N'4a7c0d45-9e7c-4cff-8947-ad4db32f3640.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (86, 70, N'28e5c1ca-1559-4108-acf1-9560ab81c1e4.png', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (87, 71, N'0dc0f772-2bfd-44cb-a99c-65d0b3c1d523.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (88, 71, N'63c106dc-bae5-47c9-8e7d-e6ee33660dde.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (89, 72, N'c6ad5534-3b28-4fb1-8a3b-218e63c72bb4.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (90, 72, N'85e86de4-3fa9-4e6f-af5f-09c511431ea8.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (91, 72, N'01766954-be09-492c-88ad-762033f64f5d.png', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (92, 73, N'befa4afc-f79f-4bdc-96a1-c86abf03936e.png', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (93, 73, N'57a5fa5b-9d76-4dc9-b813-2b2b3e7e9285.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (94, 73, N'ab7dd9d3-92b9-4279-b97a-98653b6b5ce3.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (95, 74, N'73cd2aa2-fa20-432d-b0c8-dbd8584cad99.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (96, 74, N'9707673d-7b49-45fa-ba26-e3b0f0ab65ff.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (97, 74, N'accb641c-3597-432f-8b8a-c1e1374b9376.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (98, 75, N'82633822-104b-492c-a2d7-c83af2755750.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (99, 75, N'762a5520-acfa-4f3d-81ec-fa6c1ae791a0.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (100, 76, N'26ee7cdc-de84-4d8f-a49c-9c194a7eccb1.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (101, 76, N'5cb25d6b-5978-4570-9a19-dc8eac5aca69.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (102, 76, N'9be21d75-2ebb-40b4-8158-6c12a9701178.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (103, 77, N'efc1e4c3-6747-40a4-8c57-b87b5261c697.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (104, 77, N'807321b2-b2bc-410d-a10d-21d21ca5f684.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (105, 78, N'ac072dcb-a511-41ed-869c-49789943db81.png', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (106, 78, N'06539708-fdba-415b-bde4-f5cf040f9f59.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (107, 78, N'a9b0f8ee-067c-4350-9013-d82e7b3a79bf.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (108, 79, N'8093b036-1e1f-4812-812a-97620987cc7c.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (109, 79, N'db0e7bb3-5217-4141-b953-608f5cc501d4.jpg', 0)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (110, 79, N'f161911b-864a-4454-a435-b0ee5fa6cfd2.jpg', 1)
INSERT [dbo].[ProductImages] ([ProductImageId], [ProductId], [ImageName], [CoverImage]) VALUES (111, 79, N'caa183a3-a0a7-4074-a1ea-2e3758e9e30a.jpg', 0)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (0, N'One Size', 0, N'1', NULL, CAST(N'2019-02-04 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (1, N'S', 7, N'1', NULL, CAST(N'2019-02-04 05:29:15.360' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (2, N'M', 7, N'1', NULL, CAST(N'2019-02-04 05:29:24.453' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (3, N'L', 7, N'1', NULL, CAST(N'2019-02-04 05:29:32.840' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (4, N'XS', 7, N'1', NULL, CAST(N'2019-02-04 05:29:42.070' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (5, N'XL', 7, N'1', NULL, CAST(N'2019-02-04 05:29:57.020' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (6, N'XXL', 7, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (7, N'XXXL', 7, N'1', NULL, CAST(N'2019-02-04 05:30:07.697' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (8, N'S', 8, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (9, N'M', 8, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (10, N'L', 8, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (11, N'XS', 8, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (12, N'XL', 8, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (13, N'XXL', 8, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (14, N'XXXL', 8, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (15, N'S', 9, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (16, N'M', 9, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (17, N'L', 9, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (18, N'XS', 9, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (19, N'XL', 9, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (20, N'XXL', 9, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (21, N'XXXL', 9, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (29, N'S', 11, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (30, N'M', 11, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (31, N'L', 11, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (32, N'XS', 11, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (33, N'XL', 11, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (34, N'XXL', 11, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (35, N'XXXL', 11, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (36, N'S', 12, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (37, N'M', 12, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (38, N'L', 12, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (39, N'XS', 12, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (40, N'XL', 12, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (41, N'XXL', 12, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (42, N'XXXL', 12, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (43, N'S', 13, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (44, N'M', 13, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (45, N'L', 13, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (46, N'XS', 13, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (47, N'XL', 13, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (48, N'XXL', 13, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (49, N'XXXL', 13, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (50, N'S', 14, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (51, N'M', 14, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (52, N'L', 14, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (53, N'XS', 14, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (54, N'XL', 14, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (55, N'XXL', 14, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (56, N'XXXL', 14, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (57, N'S', 15, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (58, N'M', 15, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (59, N'L', 15, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (60, N'XS', 15, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (61, N'XL', 15, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (62, N'XXL', 15, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (63, N'XXXL', 15, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (64, N'S', 16, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (65, N'M', 16, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (66, N'L', 16, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (67, N'XS', 16, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (68, N'XL', 16, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (69, N'XXL', 16, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (70, N'XXXL', 16, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (71, N'S', 17, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (72, N'M', 17, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (73, N'L', 17, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (74, N'XS', 17, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (75, N'XL', 17, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (76, N'XXL', 17, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (77, N'XXXL', 17, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (78, N'S', 18, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (79, N'M', 18, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (80, N'L', 18, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (81, N'XS', 18, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (82, N'XL', 18, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (83, N'XXL', 18, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (84, N'XXXL', 18, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (85, N'S', 19, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (86, N'M', 19, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (87, N'L', 19, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (88, N'XS', 19, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (89, N'XL', 19, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (90, N'XXL', 19, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (91, N'XXXL', 19, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (92, N'S', 20, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (93, N'M', 20, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (94, N'L', 20, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (95, N'XS', 20, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (96, N'XL', 20, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (97, N'XXL', 20, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (98, N'XXXL', 20, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (99, N'S', 21, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (100, N'M', 21, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (101, N'L', 21, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (102, N'XS', 21, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (103, N'XL', 21, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (104, N'XXL', 21, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (105, N'XXXL', 21, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
GO
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (106, N'S', 22, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (107, N'M', 22, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (108, N'L', 22, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (109, N'XS', 22, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (110, N'XL', 22, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (111, N'XXL', 22, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (112, N'XXXL', 22, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (113, N'S', 23, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (114, N'M', 23, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (115, N'L', 23, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (116, N'XS', 23, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (117, N'XL', 23, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (118, N'XXL', 23, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (119, N'XXXL', 23, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (120, N'S', 24, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (121, N'M', 24, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (122, N'L', 24, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (123, N'XS', 24, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (124, N'XL', 24, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (125, N'XXL', 24, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (126, N'XXXL', 24, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (127, N'S', 25, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (128, N'M', 25, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (129, N'L', 25, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (130, N'XS', 25, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (131, N'XL', 25, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (132, N'XXL', 25, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (133, N'XXXL', 25, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (134, N'S', 26, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (135, N'M', 26, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (136, N'L', 26, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (137, N'XS', 26, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (138, N'XL', 26, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (139, N'XXL', 26, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (140, N'XXXL', 26, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (141, N'S', 27, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (142, N'M', 27, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (143, N'L', 27, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (144, N'XS', 27, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (145, N'XL', 27, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (146, N'XXL', 27, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (147, N'XXXL', 27, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (148, N'S', 28, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (149, N'M', 28, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (150, N'L', 28, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (151, N'XS', 28, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (152, N'XL', 28, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (153, N'XXL', 28, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (154, N'XXXL', 28, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (155, N'S', 29, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (156, N'M', 29, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (157, N'L', 29, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (158, N'XS', 29, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (159, N'XL', 29, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (160, N'XXL', 29, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (161, N'XXXL', 29, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (162, N'S', 30, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (163, N'M', 30, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (164, N'L', 30, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (165, N'XS', 30, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (166, N'XL', 30, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (167, N'XXL', 30, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
INSERT [dbo].[Sizes] ([SizeId], [Name], [CategoryId], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate]) VALUES (168, N'XXXL', 30, N'1', NULL, CAST(N'2019-02-04 05:30:02.707' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[bosskinds].[DF_ProductPTE_isUpdated]') AND type = 'D')
BEGIN
ALTER TABLE [bosskinds].[ProductPTE] ADD  CONSTRAINT [DF_ProductPTE_isUpdated]  DEFAULT ((0)) FOR [isUpdated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Contact_IsProductInquiry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_IsProductInquiry]  DEFAULT ((0)) FOR [IsProductInquiry]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Contact_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Color] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Color] ([ColorId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Color]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Offers_DiscountType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offers]'))
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_DiscountType] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[DiscountType] ([DiscountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Offers_DiscountType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offers]'))
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_DiscountType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Color] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Color] ([ColorId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Color]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Sizes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Sizes] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([SizeId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Sizes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Sizes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Feature_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductFeature]'))
ALTER TABLE [dbo].[ProductFeature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Feature_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductFeature]'))
ALTER TABLE [dbo].[ProductFeature] CHECK CONSTRAINT [FK_Feature_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductImages_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImages]'))
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductImages_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImages]'))
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sizes_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sizes]'))
ALTER TABLE [dbo].[Sizes]  WITH CHECK ADD  CONSTRAINT [FK_Sizes_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sizes_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sizes]'))
ALTER TABLE [dbo].[Sizes] CHECK CONSTRAINT [FK_Sizes_Category]
GO
ALTER DATABASE [ECommerce_Shop] SET  READ_WRITE 
GO
