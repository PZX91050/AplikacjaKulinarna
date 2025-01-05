USE [master]
GO
/****** Object:  Database [AplikacjaKulinarnaDb]    Script Date: 05.01.2025 19:53:08 ******/
CREATE DATABASE [AplikacjaKulinarnaDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AplikacjaKulinarnaDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AplikacjaKulinarnaDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AplikacjaKulinarnaDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AplikacjaKulinarnaDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AplikacjaKulinarnaDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET  MULTI_USER 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AplikacjaKulinarnaDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Budget] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[WeightUnit] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeIngredients]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeIngredients](
	[RecipeId] [int] NOT NULL,
	[IngredientId] [int] NOT NULL,
	[Quantity] [decimal](10, 2) NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_RecipeIngredients] PRIMARY KEY CLUSTERED 
(
	[RecipeId] ASC,
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IngredientsString] [nvarchar](max) NOT NULL,
	[PreparationInstructions] [nvarchar](max) NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserIngredients]    Script Date: 05.01.2025 19:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserIngredients](
	[UserId] [nvarchar](450) NOT NULL,
	[IngredientId] [int] NOT NULL,
	[Quantity] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_UserIngredients] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241207031400_InitialCreate', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250104222416_RemoveShoppingList', N'8.0.11')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Budget]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', N'pablo@op.pl', N'PABLO@OP.PL', N'pablo@op.pl', N'PABLO@OP.PL', 0, N'AQAAAAIAAYagAAAAEB7PqR2zVdiCW8V5R0PKHIOACOlpwMpi12EOAHYt+8qzDgizW36d8q5nCeNKex3psA==', N'6UN4KMSSSFKKVVD67SERTPNEDKB3USQW', N'99555fa2-a91d-4eef-b992-e5c18bf1ff12', NULL, 0, 0, NULL, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Budget]) VALUES (N'b9002bfc-99ef-4f90-b925-b9f870a10d20', N'pablozapasowy@op.pl', N'PABLOZAPASOWY@OP.PL', N'pablozapasowy@op.pl', N'PABLOZAPASOWY@OP.PL', 0, N'AQAAAAIAAYagAAAAEGigCTl/SXNoEA+FERziNm845F8szFvtJcNgCMgyuUKjIJmrBYH5jRhjxjdDsa6Ihw==', N'XGXAOQG54ZZHIGVP5NA25HY56OUFPB6K', N'da5c0a18-d673-47a1-a59a-a390cbc5d024', NULL, 0, 0, NULL, 1, 0, CAST(0.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Ingredients] ON 

INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (1, N'Mąka pszenna', CAST(2.50 AS Decimal(18, 2)), N'kilogram', N'Mąka')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (2, N'Cukier', CAST(3.00 AS Decimal(18, 2)), N'kilogram', N'Cukier')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (3, N'Jajka', CAST(0.50 AS Decimal(18, 2)), N'sztuka', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (4, N'Masło', CAST(60.00 AS Decimal(18, 2)), N'kilogram', N'Tłuszcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (5, N'Sól', CAST(3.00 AS Decimal(18, 2)), N'kilogram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (6, N'Pieprz czarny', CAST(40.00 AS Decimal(18, 2)), N'kilogram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (8, N'Cebula', CAST(1.20 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (9, N'Czosnek', CAST(0.30 AS Decimal(18, 2)), N'sztuka', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (10, N'Pomidory', CAST(3.50 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (11, N'Papryka czerwona', CAST(5.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (12, N'Kurczak', CAST(15.00 AS Decimal(18, 2)), N'kilogram', N'Mięso')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (13, N'Wieprzowina', CAST(16.00 AS Decimal(18, 2)), N'kilogram', N'Mięso')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (14, N'Wołowina', CAST(20.00 AS Decimal(18, 2)), N'kilogram', N'Mięso')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (15, N'Chleb pszenny', CAST(3.00 AS Decimal(18, 2)), N'sztuka', N'Pieczywo')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (16, N'Ser zółty', CAST(10.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (17, N'Ser biały', CAST(8.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (18, N'Pomidory w puszce', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (19, N'Mleko', CAST(3.50 AS Decimal(18, 2)), N'litr', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (20, N'Jogurt naturalny', CAST(2.80 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (21, N'Ziemniaki', CAST(1.50 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (22, N'Marchew', CAST(2.50 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (23, N'Buraki', CAST(3.20 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (24, N'Natka pietruszki', CAST(1.50 AS Decimal(18, 2)), N'sztuka', N'Zioła')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (25, N'Koperek', CAST(1.70 AS Decimal(18, 2)), N'sztuka', N'Zioła')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (26, N'Oregano', CAST(0.50 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (27, N'Bazylia', CAST(0.50 AS Decimal(18, 2)), N'gram', N'Zioła')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (28, N'Tymianek', CAST(0.30 AS Decimal(18, 2)), N'gram', N'Zioła')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (29, N'Rozmaryn', CAST(0.30 AS Decimal(18, 2)), N'gram', N'Zioła')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (30, N'Estragon', CAST(1.20 AS Decimal(18, 2)), N'gram', N'Zioła')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (31, N'Liść laurowy', CAST(0.20 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (32, N'Zioła prowansalskie', CAST(0.15 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (33, N'Papryka wędzona', CAST(0.55 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (34, N'Kumin', CAST(2.20 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (35, N'Cynamon', CAST(0.30 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (36, N'Goździki', CAST(0.15 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (37, N'Imbir', CAST(7.00 AS Decimal(18, 2)), N'kilogram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (38, N'Miód', CAST(26.50 AS Decimal(18, 2)), N'kilogram', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (39, N'Czekolada gorzka', CAST(10.00 AS Decimal(18, 2)), N'kilogram', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (40, N'Kakao', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (42, N'Ocet balsamiczny', CAST(4.00 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (43, N'Musztarda', CAST(2.00 AS Decimal(18, 2)), N'kilogram', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (44, N'Ketchup', CAST(3.50 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (45, N'Majonez', CAST(4.00 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (46, N'Sos tatarski', CAST(4.50 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (48, N'Tatar', CAST(20.00 AS Decimal(18, 2)), N'kilogram', N'Mięso')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (49, N'Kawa', CAST(8.00 AS Decimal(18, 2)), N'kilogram', N'Napoje')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (50, N'Herbata', CAST(2.00 AS Decimal(18, 2)), N'opakowanie', N'Napoje')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (51, N'Czekolada mleczna', CAST(19.00 AS Decimal(18, 2)), N'kilogram', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (52, N'Bakalie', CAST(6.00 AS Decimal(18, 2)), N'kilogram', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (53, N'Owoce jagodowe', CAST(5.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (54, N'Banany', CAST(3.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (55, N'Jabłka', CAST(2.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (56, N'Pomarańcze', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (58, N'Maliny', CAST(8.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (59, N'Kiwi', CAST(6.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (60, N'Gruszki', CAST(4.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (61, N'Ananas', CAST(9.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (62, N'Awokado', CAST(7.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (63, N'Figi', CAST(11.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (64, N'Winogrona', CAST(5.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (65, N'Brzoskwinie', CAST(8.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (66, N'Nektarynki', CAST(7.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (67, N'Śliwki', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (68, N'Melon', CAST(6.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (69, N'Cantaloupe', CAST(5.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (70, N'Arbuz', CAST(3.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (71, N'Cytryny', CAST(4.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (72, N'Mandarynki', CAST(3.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (73, N'Kokos', CAST(7.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (74, N'Pistacje', CAST(14.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (75, N'Orzechy włoskie', CAST(8.50 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (76, N'Orzechy laskowe', CAST(9.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (77, N'Migdały', CAST(12.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (79, N'Sezam', CAST(5.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (80, N'Płatki owsiane', CAST(2.00 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (81, N'Kasza jaglana', CAST(3.00 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (82, N'Ryż biały', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (83, N'Makaron', CAST(5.00 AS Decimal(18, 2)), N'kilogram', N'Produkty zbozowe')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (84, N'Fasola biała', CAST(3.50 AS Decimal(18, 2)), N'kilogram', N'Rośliny strączkowe')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (85, N'Groch', CAST(2.80 AS Decimal(18, 2)), N'kilogram', N'Rośliny strączkowe')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (87, N'Tofu', CAST(8.00 AS Decimal(18, 2)), N'kilogram', N'Produkty wegetariańskie')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (88, N'Tempeh', CAST(10.00 AS Decimal(18, 2)), N'kilogram', N'Produkty wegetariańskie')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (89, N'Seitan', CAST(7.50 AS Decimal(18, 2)), N'kilogram', N'Produkty wegetariańskie')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (90, N'Algi nori', CAST(4.50 AS Decimal(18, 2)), N'opakowanie', N'Produkty azjatyckie')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (91, N'Algi wakame', CAST(5.00 AS Decimal(18, 2)), N'opakowanie', N'Produkty azjatyckie')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (92, N'Sos rybny', CAST(6.00 AS Decimal(18, 2)), N'litr', N'Produkty azjatyckie')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (93, N'Woda kokosowa', CAST(3.50 AS Decimal(18, 2)), N'litr', N'Napoje')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (94, N'Syrop klonowy', CAST(7.00 AS Decimal(18, 2)), N'kilogram', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (95, N'Rabarbar', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (96, N'Kale', CAST(5.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (97, N'Cukinia', CAST(3.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (98, N'Brokuł', CAST(3.50 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (99, N'Kalafior', CAST(4.50 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (100, N'Szpinak', CAST(5.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (101, N'Sałata', CAST(2.50 AS Decimal(18, 2)), N'sztuka', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (102, N'Papryka zielona', CAST(5.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (103, N'Bakłazan', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (104, N'Pomidor cherry', CAST(6.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (108, N'Morele', CAST(7.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
GO
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (109, N'Mandarynki japońskie', CAST(4.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (110, N'Jagody', CAST(8.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (111, N'Papaja', CAST(7.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (112, N'Mango', CAST(6.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (113, N'Truskawki', CAST(9.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (114, N'Owoce leśne', CAST(9.50 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (115, N'Marakuja', CAST(8.00 AS Decimal(18, 2)), N'kilogram', N'Owoce')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (116, N'Chili', CAST(0.50 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (117, N'Szałwia', CAST(0.12 AS Decimal(18, 2)), N'gram', N'Zioła')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (118, N'Kolendra', CAST(0.10 AS Decimal(18, 2)), N'gram', N'Zioła')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (119, N'Curry', CAST(0.03 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (120, N'Kurkuma', CAST(0.05 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (121, N'Gorczyca', CAST(0.12 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (122, N'Kardamon', CAST(0.70 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (123, N'Sos Worcestershire', CAST(4.00 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (124, N'Sos tabasco', CAST(3.50 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (128, N'Rózowa sól Himalajska', CAST(7.00 AS Decimal(18, 2)), N'kilogram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (129, N'Aloes', CAST(8.50 AS Decimal(18, 2)), N'sztuka', N'Zioła')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (130, N'Słonecznik', CAST(5.00 AS Decimal(18, 2)), N'kilogram', N'Nasiona')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (131, N'Dynia', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (132, N'Bataty', CAST(4.50 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (133, N'Chili w proszku', CAST(2.50 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (134, N'Papryka słodka', CAST(3.00 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (135, N'Goździki mielone', CAST(3.00 AS Decimal(18, 2)), N'gram', N'Przyprawy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (136, N'Pistacje solone', CAST(12.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (137, N'Migdały prazone', CAST(13.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (138, N'Ziarna sezamu', CAST(5.50 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (139, N'Żurawina suszona', CAST(6.00 AS Decimal(18, 2)), N'kilogram', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (140, N'Brązowy cukier', CAST(3.80 AS Decimal(18, 2)), N'kilogram', N'Cukier')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (141, N'Biały cukier', CAST(3.00 AS Decimal(18, 2)), N'kilogram', N'Cukier')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (142, N'Gorzka czekolada', CAST(15.00 AS Decimal(18, 2)), N'kilogram', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (143, N'Rzodkiewka', CAST(1.80 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (144, N'Salata lodowa', CAST(2.50 AS Decimal(18, 2)), N'sztuka', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (145, N'Kukurydza', CAST(3.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (146, N'Ocet jabłkowy', CAST(5.00 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (147, N'Oliwa z oliwek', CAST(15.00 AS Decimal(18, 2)), N'kilogram', N'Tłuszcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (148, N'Mleko kokosowe', CAST(6.00 AS Decimal(18, 2)), N'litr', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (149, N'Płatki jaglane', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (150, N'Płatki kukurydziane', CAST(3.50 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (151, N'Ciasteczka', CAST(8.00 AS Decimal(18, 2)), N'kilogram', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (152, N'Pieczarki', CAST(4.50 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (153, N'Lukier', CAST(6.00 AS Decimal(18, 2)), N'gram', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (154, N'Sos beszamelowy', CAST(5.50 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (155, N'Płatki migdałowe', CAST(7.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (156, N'Mąka kukurydziana', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Mąka')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (158, N'Gorgonzola', CAST(15.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (159, N'Ser pleśniowy', CAST(14.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (160, N'Bakłażan czarny', CAST(5.50 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (161, N'Kasza gryczana', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (162, N'Bulgur', CAST(4.50 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (163, N'Quinoa', CAST(8.50 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (164, N'Fasolki szparagowe', CAST(3.50 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (165, N'Czarnuszka', CAST(6.00 AS Decimal(18, 2)), N'kilogram', N'Nasiona')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (166, N'Wędzona makrela', CAST(9.00 AS Decimal(18, 2)), N'kilogram', N'Ryby')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (167, N'Łosoś', CAST(25.00 AS Decimal(18, 2)), N'kilogram', N'Ryby')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (168, N'Makaron spaghetti', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (169, N'Pasta penne', CAST(4.50 AS Decimal(18, 2)), N'kilogram', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (170, N'Ryż basmati', CAST(7.00 AS Decimal(18, 2)), N'kilogram', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (171, N'Ryż jasminowy', CAST(6.00 AS Decimal(18, 2)), N'kilogram', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (172, N'Kasza jeczmienna', CAST(3.50 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (173, N'Mąka pszenna', CAST(2.00 AS Decimal(18, 2)), N'kilogram', N'Mąka')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (176, N'Masło klarowane', CAST(18.00 AS Decimal(18, 2)), N'litr', N'Tłuszcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (177, N'Miód', CAST(12.00 AS Decimal(18, 2)), N'kilogram', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (178, N'Dżem truskawkowy', CAST(8.00 AS Decimal(18, 2)), N'słoik', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (179, N'Dżem malinowy', CAST(9.00 AS Decimal(18, 2)), N'słoik', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (184, N'Zielona cebulka', CAST(1.50 AS Decimal(18, 2)), N'sztuka', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (185, N'Kefir', CAST(3.00 AS Decimal(18, 2)), N'litr', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (187, N'Ser twarogowy', CAST(8.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (188, N'Ser mozzarella', CAST(12.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (189, N'Ser gouda', CAST(15.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (190, N'Ser cheddar', CAST(16.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (191, N'Ser feta', CAST(14.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (192, N'Ser parmezan', CAST(18.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (194, N'Twaróg', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Nabiał')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (196, N'Płatki ryzowe', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (199, N'Kasza bulgur', CAST(5.50 AS Decimal(18, 2)), N'kilogram', N'Zboża')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (200, N'Mąka ryzowa', CAST(5.00 AS Decimal(18, 2)), N'kilogram', N'Mąka')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (201, N'Ciecierzyca', CAST(4.50 AS Decimal(18, 2)), N'kilogram', N'Rośliny strączkowe')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (202, N'Soczewica', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Rośliny strączkowe')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (205, N'Fasola czerwona', CAST(4.00 AS Decimal(18, 2)), N'kilogram', N'Rośliny strączkowe')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (207, N'Orzechy włoskie', CAST(16.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (208, N'Orzechy brazylijskie', CAST(18.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (209, N'Orzechy nerkowca', CAST(20.00 AS Decimal(18, 2)), N'kilogram', N'Orzechy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (210, N'Masło orzechowe', CAST(12.00 AS Decimal(18, 2)), N'słoik', N'Produkty spożywcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (212, N'Dynia', CAST(6.00 AS Decimal(18, 2)), N'kilogram', N'Warzywa')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (213, N'Figi suszone', CAST(10.00 AS Decimal(18, 2)), N'kilogram', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (214, N'Rodzynki', CAST(6.00 AS Decimal(18, 2)), N'kilogram', N'Słodycze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (217, N'Lentils czerwone', CAST(3.50 AS Decimal(18, 2)), N'kilogram', N'Rośliny strączkowe')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (218, N'Lentils zielone', CAST(3.50 AS Decimal(18, 2)), N'kilogram', N'Rośliny strączkowe')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (221, N'Chleb pelnoziarnisty', CAST(3.50 AS Decimal(18, 2)), N'sztuka', N'Pieczywo')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (222, N'Bułki pszenne', CAST(1.50 AS Decimal(18, 2)), N'sztuka', N'Pieczywo')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (223, N'Bułki razowe', CAST(1.80 AS Decimal(18, 2)), N'sztuka', N'Pieczywo')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (224, N'Bagietka', CAST(2.00 AS Decimal(18, 2)), N'sztuka', N'Pieczywo')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (225, N'Chleb tostowy', CAST(2.50 AS Decimal(18, 2)), N'sztuka', N'Pieczywo')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (226, N'Tortille', CAST(4.50 AS Decimal(18, 2)), N'opakowanie', N'Pieczywo')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (228, N'Paluszki', CAST(5.00 AS Decimal(18, 2)), N'opakowanie', N'Przekąski')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (229, N'Popcorn', CAST(6.00 AS Decimal(18, 2)), N'opakowanie', N'Przekąski')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (230, N'Czipsy tortilla', CAST(8.00 AS Decimal(18, 2)), N'opakowanie', N'Przekąski')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (231, N'Oliwki', CAST(10.00 AS Decimal(18, 2)), N'słoik', N'Przekąski')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (234, N'Majonez', CAST(4.00 AS Decimal(18, 2)), N'słoik', N'Sosy')
GO
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (235, N'Sos czosnkowy', CAST(5.00 AS Decimal(18, 2)), N'słoik', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (236, N'Sos barbecue', CAST(6.00 AS Decimal(18, 2)), N'słoik', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (237, N'Sos pomidorowy', CAST(4.50 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (238, N'Sos sojowy', CAST(6.00 AS Decimal(18, 2)), N'litr', N'Sosy')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (239, N'Olej słonecznikowy', CAST(5.00 AS Decimal(18, 2)), N'litr', N'Tłuszcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (240, N'Olej rzepakowy', CAST(4.00 AS Decimal(18, 2)), N'litr', N'Tłuszcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (241, N'Olej kokosowy', CAST(10.00 AS Decimal(18, 2)), N'litr', N'Tłuszcze')
INSERT [dbo].[Ingredients] ([Id], [Name], [Price], [WeightUnit], [Category]) VALUES (242, N'Makaron ryżowy', CAST(15.00 AS Decimal(18, 2)), N'kilogram', N'Makaron')
SET IDENTITY_INSERT [dbo].[Ingredients] OFF
SET IDENTITY_INSERT [dbo].[Recipes] ON 

INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (1, N'Curry z ciecierzyca i warzywami', N'Wegetarianskie curry z ciecierzyca, ziemniakami i marchewka, popularne w kuchni indyjskiej', N'Ciecierzyca 200 gram, Ziemniaki 300 gram, Marchew 2 sztuki, Cebula 1 sztuka, Czosnek 2 ząbki, Olej rzepakowy 2 łyżki, Tymianek 1 łyżeczka, Curry 1 łyżeczka, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Pomidory w puszce 400 gram', N'1. Podsmaż cebule i czosnek na oleju rzepakowym. 2. Dodaj pokrojone ziemniaki i marchew, smaż przez kilka minut. 3. Dodaj ciecierzyce i pomidory w puszce. 4. Dopraw curry, tymiankiem, solą i pieprzem. 5. Duś na malym ogniu, az warzywa beda miekkie. 6. Podawaj na ciepło z ryżem lub chlebem naan.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (2, N'Pieczony kurczak z warzywami', N'Kurczak pieczony z warzywami, klasyczne danie obiadowe', N'Kurczak 1 kg, Ziemniaki 500 gram, Marchew 2 sztuki, Cebula 1 sztuka, Czosnek 3 ząbki, Olej rzepakowy 3 łyżki, Rozmaryn 1 łyżeczka, Sól 1 łyżeczka, Pieprz 1/2 łyżeczki', N'1. Natrzyj kurczaka solą, pieprzem i rozmarynem. 2. Ułóż pokrojone ziemniaki, marchew, cebule i czosnek w naczyniu zaroodpornym. 3. Skrop olejem rzepakowym i piecz w 180°C przez 45 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (3, N'Makaron z brokułami i sosem śmietanowym', N'Makaron z brokułami i sosem śmietanowym z serem parmezan', N'Makaron 300 gram, Brokuł 200 gram, Smietana 200 ml, Ser parmezan 50 gram, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 1 łyżka', N'1. Ugotuj makaron wedlug instrukcji na opakowaniu. 2. Ugotuj brokul na póltwardo. 3. Przygotuj sos ze smietany i parmezanu, dopraw solą i pieprzem. 4. Wymieszaj makaron z sosem i brokułem, podawaj na ciepło.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (4, N'Sałatka z awokado, pomidorem i feta', N'Lekka Sałatka z awokado, pomidorem i serem feta, idealna na lato', N'Awokado 1 sztuka, Pomidor 2 sztuki, Ser feta 100 gram, Oliwa z oliwek 2 łyżki, Sok z cytryny 1 łyżka, Sałata 100 gram, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Pokrój awokado, pomidora i ser feta. 2. Wymieszaj składniki w misce z sałatą. 3. Skrop oliwa z oliwek i sokiem z cytryny, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (5, N'Zupa jarzynowa z soczewica', N'Zupa na bazie soczewicy i warzyw, sycaca i rozgrzewajaca', N'Soczewica 150 gram, Ziemniaki 200 gram, Marchew 2 sztuki, Cebula 1 sztuka, Czosnek 2 ząbki, Pomidory w puszce 400 gram, Tymianek 1 łyżeczka, liść laurowy 1 sztuka, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. podsmaż cebule i czosnek, dodaj ziemniaki i marchew. 2. Dodaj soczewice i pomidory w puszce. 3. Dopraw tymiankiem, lisciem laurowym, solą i pieprzem. 4. Gotuj na średnim ogniu, az warzywa beda miekkie.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (6, N'Łosoś pieczony z cukinia', N'Łosoś pieczony z cukinia i koperkiem, danie glówne', N'Łosoś 500 gram, Cukinia 1 sztuka, Koperek 2 łyżki, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Natrzyj łososia solą i pieprzem. 2. Ułóż plastry cukinii na blasze, polóz na nich łososia. 3. Posyp koperkiem i skropl oliwa z oliwek. 4. Piecz w 180°C przez 20 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (7, N'Frittata z warzywami i serem', N'Pieczona frittata z mieszanka warzyw i serem gouda', N'Jajka 4 sztuki, Cebula 1 sztuka, Papryka czerwona 1 sztuka, Brokuł 100 gram, Ser gouda 50 gram, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki', N'1. Podsmaż cebule i papryke na oliwie. 2. Dodaj brokul i smaż przez kilka minut. 3. Wlej roztrzepane jajka, dodaj ser gouda. 4. Piecz w piekarniku nagrzanym do 180°C przez 15 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (8, N'Pieczone bataty z hummusem', N'Pieczone bataty podawane z hummusem, idealne na przystawke', N'Bataty 400 gram, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Ciecierzyca 150 gram, Cytryna 1 sztuka, Czosnek 2 ząbki, Tahini 2 łyżki', N'1. Pokrój bataty na kawalki, skropl oliwa, posyp solą i pieprzem, piecz w 200°C przez 25 minut. 2. Przygotuj hummus: zmiksuj ciecierzyce z czosnkiem, tahini, sokiem z cytryny, solą i pieprzem. 3. Podawaj bataty z hummusem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (9, N'Sałatka z quinoa i warzywami', N'Zdrowa Sałatka z quinoa, ogórkiem, pomidorem i orzechami', N'Quinoa 100 gram, Ogórek 1 sztuka, Pomidor 2 sztuki, Orzechy nerkowca 50 gram, Sok z cytryny 1 łyżka, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj quinoa zgodnie z instrukcja na opakowaniu. 2. Pokrój ogórka i pomidora, wymieszaj z quinoa. 3. Dodaj orzechy, skropl sokiem z cytryny i oliwa. 4. Dopraw solą i pieprzem, podawaj schlodzona.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (10, N'Spaghetti z sosem pomidorowym i bazylia', N'Klasyczne spaghetti z sosem pomidorowym i swieza bazylia', N'Makaron spaghetti 300 gram, Pomidory w puszce 400 gram, Czosnek 2 ząbki, Oliwa z oliwek 2 łyżki, Bazylia 10 liści, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Ser parmezan 30 gram', N'1. Ugotuj makaron spaghetti. 2. podsmaż czosnek na oliwie, dodaj pomidory w puszce. 3. Dopraw solą i pieprzem, gotuj przez 10 minut. 4. Wymieszaj z ugotowanym makaronem, posyp bazylia i parmezanem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (11, N'Chili con carne', N'Klasyczne meksykanskie danie z mielona Wołowina i fasola', N'Wołowina mielona 400 gram, Fasola czerwona 200 gram, Pomidory w puszce 400 gram, Cebula 1 sztuka, Czosnek 2 ząbki, Papryka czerwona 1 sztuka, Olej rzepakowy 2 łyżki, Chili 1 łyżeczka, Kumin 1/2 łyżeczki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Podsmaż cebule i czosnek na oleju. 2. Dodaj wołowinę i smaż do zarumienienia. 3. Dodaj papryke, pomidory i fasole. 4. Dopraw chili, kuminem, solą i pieprzem. 5. Gotuj na malym ogniu przez 30 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (12, N'Pieczona wieprzowina z ziemniakami i rozmarynem', N'Pieczona wieprzowina z ziemniakami, aromatyzowana rozmarynem', N'Wieprzowina 500 gram, Ziemniaki 400 gram, Czosnek 3 ząbki, Oliwa z oliwek 2 łyżki, Rozmaryn 1 łyżeczka, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Natrzyj wieprzowine solą, pieprzem i czosnkiem. 2. Ułóż na blasze z ziemniakami i posyp rozmarynem. 3. Piecz w 200°C przez 1 godzine.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (13, N'Risotto z grzybami', N'Kremowe risotto z dodatkiem pieczarek i parmezanu', N'Ryż arborio 200 gram, Pieczarki 150 gram, Cebula 1 sztuka, Czosnek 2 ząbki, Bulion warzywny 500 ml, Parmezan 50 gram, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Podsmaż cebule i czosnek na oliwie, dodaj ryż i smaż przez 2 minuty. 2. Stopniowo dodawaj bulion, ciagle mieszajac. 3. Dodaj pokrojone pieczarki. 4. Gotuj, az ryż bedzie kremowy, dodaj parmezan. 5. Dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (14, N'Zapiekanka ziemniaczana z serem i boczkiem', N'Zapiekanka warstwowa z ziemniakami, boczkiem i serem', N'Ziemniaki 500 gram, Boczek 150 gram, Ser żółty 100 gram, Cebula 1 sztuka, Smietana 200 ml, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Pokrój ziemniaki i cebule w cienkie plastry. 2. Ułóż warstwy ziemniaków, cebuli, boczku i sera w naczyniu. 3. Skrop śmietaną i dopraw. 4. Piecz w 180°C przez 40 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (15, N'Tortilla z kurczakiem i warzywami', N'Tortilla z grillowanym kurczakiem, papryka i sosem czosnkowym', N'Tortille 4 sztuki, Kurczak 300 gram, Papryka czerwona 1 sztuka, Cebula 1 sztuka, Sałata 100 gram, Sos czosnkowy 50 ml, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Grilluj kurczaka i pokrój w paski. 2. podsmaż papryke i cebule na oliwie. 3. Posmaruj tortille sosem czosnkowym. 4. Nalóz warzywa, kurczaka i salate. 5. Zwiń i podawaj.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (16, N'Lasagne z miesem mielonym', N'Klasyczna lasagne z miesem mielonym, serem i beszamelem', N'Makaron lasagne 250 gram, Wołowina mielona 400 gram, Pomidory w puszce 400 gram, Cebula 1 sztuka, Czosnek 2 ząbki, Ser mozzarella 150 gram, Sos beszamelowy 200 ml, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oregano 1 łyżeczka', N'1. podsmaż cebule, czosnek i mięso. 2. Dodaj pomidory i oregano, gotuj 15 minut. 3. Ukladaj warstwy makaronu, miesa, beszamelu i sera. 4. Piecz w 180°C przez 30 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (17, N'Grillowane warzywa z feta i ziolami', N'Letnie danie z grillowanymi warzywami i serem feta', N'Papryka czerwona 1 sztuka, Cukinia 1 sztuka, bakłażan 1 sztuka, Feta 100 gram, Oliwa z oliwek 2 łyżki, Zioła prowansalskie 1 łyżeczka, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Pokrój warzywa i grilluj na patelni. 2. Posyp feta i ziolami. 3. Skrop oliwa i dopraw do smaku. 4. Podawaj na ciepło lub zimno.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (18, N'Sałatka z brokułem i jajkiem', N'Sałatka z brokułem, jajkiem i sosem jogurtowym', N'Brokuł 200 gram, Jajka 3 sztuki, Jogurt naturalny 100 ml, Czosnek 1 ząbek, Natka pietruszki 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj brokul i jajka na twardo. 2. Pokrój jajka i wymieszaj z brokułem. 3. Przygotuj sos z jogurtu i czosnku, dopraw solą i pieprzem. 4. Polej sałatkę sosem i posyp natka.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (19, N'Pasta z awokado i jajkiem', N'Zdrowa pasta na bazie awokado i jajka, idealna na kanapki', N'Awokado 2 sztuki, Jajka 3 sztuki, Czosnek 1 ząbek, Sok z cytryny 1 łyżka, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Rozgniec awokado i ugotowane jajka. 2. Dodaj przecisniety czosnek i sok z cytryny. 3. Dopraw solą i pieprzem, wymieszaj.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (20, N'Bolognese z makaronem penne', N'Penne z sosem bolognese, aromatyczne i sycace', N'Makaron penne 300 gram, Wołowina mielona 400 gram, Pomidory w puszce 400 gram, Cebula 1 sztuka, Czosnek 2 ząbki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oregano 1 łyżeczka, Ser parmezan 30 gram', N'1. Podsmaż cebule i czosnek, dodaj mięso. 2. Dodaj pomidory i oregano, gotuj 20 minut. 3. Ugotuj makaron. 4. Podawaj makaron z sosem i posyp parmezanem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (21, N'Zupa krem z dyni', N'Delikatna zupa krem z dyni z nuta imbiru', N'Dynia 500 gram, Cebula 1 sztuka, Imbir 1 cm, Bulion warzywny 500 ml, Smietana 100 ml, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki', N'1. Podsmaż cebule i imbir na oliwie. 2. Dodaj dynie i bulion, gotuj do miekkosci. 3. Zmiksuj zupe na gładki krem, dodaj śmietane. 4. Dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (22, N'Kotlety z ciecierzycy i szpinaku', N'Zdrowe kotlety z ciecierzycy i szpinaku, idealne na obiad', N'Ciecierzyca 200 gram, Szpinak 100 gram, Cebula 1 sztuka, Czosnek 1 ząbek, Jajka 2 sztuki, Bulka tarta 50 gram, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Olej rzepakowy 2 łyżki', N'1. Zblenduj ciecierzyce z cebula i czosnkiem. 2. Dodaj posiekany szpinak, jajka i bulke tarta, dopraw. 3. Formuj kotlety i smaż na oleju rzepakowym.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (23, N'Krewetki w sosie czosnkowym', N'Krewetki smażone w sosie czosnkowym z natka pietruszki', N'Krewetki 300 gram, Czosnek 2 ząbki, Natka pietruszki 2 łyżki, Oliwa z oliwek 2 łyżki, Sok z cytryny 1 łyżka, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Podsmaż czosnek na oliwie. 2. Dodaj krewetki i smaż przez 3-4 minuty. 3. Skrop sokiem z cytryny, posyp natka pietruszki, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (24, N'Sałatka z kasza jaglana i pomarancza', N'Lekka Sałatka z kasza jaglana, pomarancza i mieta', N'Kasza jaglana 150 gram, Pomarancza 2 sztuki, Mieta 2 łyżki, Sok z cytryny 1 łyżka, Oliwa z oliwek 2 łyżki, Miód 1 łyżeczka, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj kasze jaglana i ostudz. 2. Obierz pomarancze i pokrój w kawalki. 3. Wymieszaj kasze z pomarancza, dodaj miete, miód i sok z cytryny. 4. Dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (25, N'Zapiekanka makaronowa z szynka i serem', N'Zapiekanka makaronowa z dodatkiem szynki i sera', N'Makaron 300 gram, Szynka 150 gram, Ser żółty 100 gram, Smietana 200 ml, Cebula 1 sztuka, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj makaron al dente. 2. podsmaż cebule, dodaj szynke i śmietane, dopraw solą i pieprzem. 3. Wymieszaj z makaronem, przełóż do naczynia, posyp serem. 4. Piecz w 180°C przez 25 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (26, N'Tarta z pomidorami i serem pleśniowym', N'Delikatna tarta na ciescie francuskim z pomidorami i serem pleśniowym', N'Ciasto francuskie 1 arkusz, Pomidory 2 sztuki, Ser pleśniowy 100 gram, Bazylia 1 łyżeczka, Oliwa z oliwek 2 łyżki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Rozlóz ciasto francuskie na blasze i nakluj widelcem. 2. Ułóż pokrojone pomidory i ser pleśniowy na ciescie. 3. Posyp bazylia, skropl oliwa, dopraw solą i pieprzem. 4. Piecz w 180°C przez 20 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (27, N'Smażona kapusta z ziemniakami i boczkiem', N'Proste i sycące danie z kapustą, ziemniakami i boczkiem', N'Kapusta 500 gram, Ziemniaki 300 gram, Boczek 150 gram, Cebula 1 sztuka, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Olej rzepakowy 2 łyżki', N'1. Podsmaż boczek na patelni. 2. Dodaj pokrojona cebule i smaż do zeszklenia. 3. Dodaj kapuste i ziemniaki, dopraw solą i pieprzem. 4. smaż na średnim ogniu przez 15 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (28, N'Sałatka z Łosośiem i awokado', N'Lekka Sałatka z wedzonym Łosośiem, awokado i sałatą', N'Łosoś wedzony 100 gram, Awokado 1 sztuka, Sałata 100 gram, Sok z cytryny 1 łyżka, Oliwa z oliwek 2 łyżki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Pokrój awokado i łososia. 2. Wymieszaj salate z awokado i Łosośiem. 3. Skrop sokiem z cytryny i oliwa, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (29, N'Gulasz wolowy z papryka', N'Aromatyczny gulasz z wolowiny i papryki, idealny na chlodne dni', N'Wołowina 500 gram, Papryka czerwona 2 sztuki, Cebula 1 sztuka, Czosnek 2 ząbki, Papryka slodka 1 łyżeczka, liść laurowy 1 sztuka, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki', N'1. Podsmaż cebule i czosnek na oliwie. 2. Dodaj wołowinę i smaż do zarumienienia. 3. Dodaj pokrojona papryke, liść laurowy, papryke slodka, sól i pieprz. 4. Duś pod przykryciem przez 1,5 godziny.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (30, N'Zupa pomidorowa z ryżem', N'Klasyczna zupa pomidorowa podawana z ryżem', N'Pomidory w puszce 400 gram, Ryż biały 100 gram, Cebula 1 sztuka, Bulion warzywny 500 ml, Smietana 100 ml, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Cukier 1 łyżeczka, Oliwa z oliwek 1 łyżka', N'1. Podsmaż cebule na oliwie. 2. Dodaj pomidory i bulion, gotuj przez 15 minut. 3. Ugotuj ryż. 4. Dodaj śmietane do zupy, dopraw solą, pieprzem i cukrem. 5. Podawaj z ryżem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (31, N'Kotlety z kalafiora', N'Wegetarianskie kotlety na bazie kalafiora i bułki tartej', N'Kalafior 500 gram, Jajka 2 sztuki, Bulka tarta 100 gram, Cebula 1 sztuka, Natka pietruszki 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Olej rzepakowy 2 łyżki', N'1. Ugotuj kalafior i rozgniec widelcem. 2. Dodaj jajka, bulke tarta, posiekana cebule i pietruszke, dopraw solą i pieprzem. 3. Formuj kotlety i smaż na oleju z obu stron.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (32, N'Makaron z pieczarkami i śmietaną', N'Szybkie danie makaronowe z pieczarkami w sosie śmietanowym', N'Makaron 300 gram, Pieczarki 200 gram, Smietana 200 ml, Czosnek 1 ząbek, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki, Parmezan 30 gram', N'1. Ugotuj makaron al dente. 2. podsmaż pieczarki i czosnek na oliwie. 3. Dodaj śmietane i gotuj przez 5 minut. 4. Dopraw solą i pieprzem. 5. Wymieszaj z makaronem i posyp parmezanem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (33, N'Zapiekanka ryzowa z kurczakiem i warzywami', N'Pozywna zapiekanka ryzowa z kurczakiem i warzywami', N'Ryż biały 200 gram, Kurczak 300 gram, Papryka czerwona 1 sztuka, Cukinia 1 sztuka, Cebula 1 sztuka, Ser żółty 100 gram, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki', N'1. Ugotuj ryż. 2. podsmaż kurczaka z cebula, dodaj papryke i cukinie, dopraw solą i pieprzem. 3. Wymieszaj ryż z kurczakiem i warzywami. 4. Przełóż do naczynia, posyp serem i piecz w 180°C przez 20 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (34, N'Sałatka grecka', N'Klasyczna Sałatka grecka z feta, oliwkami i ogórkiem', N'Pomidor 2 sztuki, Ogórek 1 sztuka, Ser feta 100 gram, Cebula czerwona 1/2 sztuki, Oliwki 50 gram, Oliwa z oliwek 2 łyżki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki, Oregano 1/2 łyżeczki', N'1. Pokrój warzywa i fete, wymieszaj z oliwkami. 2. Skrop oliwa, dopraw solą, pieprzem i oregano. 3. Podawaj schlodzona.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (35, N'Zupa krem z brokula', N'Kremowa zupa brokulowa podawana z grzankami', N'Brokuł 500 gram, Cebula 1 sztuka, Bulion warzywny 500 ml, Smietana 100 ml, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Grzanki 50 gram, Oliwa z oliwek 1 łyżka', N'1. Podsmaż cebule na oliwie, dodaj brokula i bulion. 2. Gotuj do miekkosci brokula, zmiksuj zupe na krem. 3. Dodaj śmietane i dopraw. 4. Podawaj z grzankami.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (36, N'Kotlety mielone z ziemniakami i marchewka', N'Tradycyjne kotlety mielone podawane z ziemniakami i gotowana marchewka', N'mięso mielone 400 gram, Cebula 1 sztuka, Jajka 1 sztuka, Bulka tarta 50 gram, Ziemniaki 500 gram, Marchew 2 sztuki, Sól 1 łyżeczka, Pieprz 1/2 łyżeczki, Olej rzepakowy 2 łyżki', N'1. Wymieszaj mięso mielone z posiekana cebula, jajkiem, bułką tartą, solą i pieprzem. 2. Formuj kotlety i smaż na oleju. 3. Ugotuj ziemniaki i marchew. 4. Podawaj kotlety z ziemniakami i marchewka.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (37, N'Makaron z pesto i pomidorami cherry', N'Szybki makaron z domowym pesto i pomidorami cherry', N'Makaron 300 gram, Bazylia swieza 30 gram, Czosnek 2 ząbki, Oliwa z oliwek 4 łyżki, Ser parmezan 50 gram, Pomidory cherry 200 gram, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj makaron al dente. 2. Zmiksuj bazylie, czosnek, parmezan i oliwe na pesto. 3. Wymieszaj makaron z pesto i pokrojonymi pomidorami cherry. 4. Dopraw solą i pieprzem, podawaj od razu.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (38, N'Smażone tofu z warzywami i ryżem', N'Tofu smażone z mieszanka warzyw i podawane z ryżem', N'Tofu 200 gram, Papryka czerwona 1 sztuka, Cukinia 1 sztuka, Cebula 1 sztuka, Czosnek 2 ząbki, Sos sojowy 2 łyżki, Ryż biały 150 gram, Oliwa z oliwek 2 łyżki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj ryż. 2. podsmaż tofu na oliwie, dodaj warzywa i smaż przez 5 minut. 3. Dodaj sos sojowy i czosnek, dopraw solą i pieprzem. 4. Podawaj z ryżem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (39, N'Pieczona ryba z warzywami i cytryna', N'Delikatna pieczona ryba z warzywami i sokiem z cytryny', N'Ryba 400 gram, Brokuł 200 gram, Marchew 2 sztuki, Cytryna 1 sztuka, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ułóż rybe na blasze, posyp solą i pieprzem. 2. Ułóż pokrojone warzywa obok, skropl oliwa i sokiem z cytryny. 3. Piecz w 180°C przez 20 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (40, N'Zupa krem z cukinii i bazylii', N'Kremowa zupa z cukinii z dodatkiem swiezej bazylii', N'Cukinia 500 gram, Cebula 1 sztuka, Bulion warzywny 500 ml, Smietana 100 ml, Bazylia 10 liści, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki', N'1. Podsmaż cebule na oliwie, dodaj cukinie i bulion. 2. Gotuj do miekkosci, zmiksuj na gładki krem. 3. Dodaj śmietane, bazylie i dopraw. 4. Podawaj na ciepło.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (41, N'Zapiekanka z makaronem i szpinakiem', N'Pozywna zapiekanka makaronowa ze szpinakiem i serem', N'Makaron 300 gram, Szpinak 200 gram, Ser feta 100 gram, Cebula 1 sztuka, Smietana 200 ml, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki', N'1. Ugotuj makaron al dente. 2. podsmaż cebule i szpinak na oliwie. 3. Wymieszaj z makaronem, śmietaną i serem feta. 4. Przełóż do naczynia, piecz w 180°C przez 20 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (42, N'Kuskus z warzywami i kurczakiem', N'Lekkie danie z kuskusu, kurczaka i warzyw', N'Kuskus 150 gram, Kurczak 200 gram, Papryka czerwona 1 sztuka, Cebula 1 sztuka, Cukinia 1 sztuka, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Sok z cytryny 1 łyżka', N'1. Ugotuj kuskus wedlug instrukcji. 2. podsmaż kurczaka z cebula, dodaj warzywa i smaż przez 5 minut. 3. Wymieszaj z kuskusem, dopraw solą, pieprzem i sokiem z cytryny.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (43, N'Sałatka z rukola, gruszka i serem pleśniowym', N'Wykwintna Sałatka z rukola, gruszka i serem pleśniowym', N'Rukola 100 gram, Gruszka 1 sztuka, Ser pleśniowy 50 gram, Orzechy wloskie 30 gram, Oliwa z oliwek 2 łyżki, Sok z cytryny 1 łyżeczka, Miód 1 łyżeczka, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Pokrój gruszke i ser pleśniowy. 2. Wymieszaj rukole z gruszka, serem i orzechami. 3. Skrop oliwa, sokiem z cytryny i miodem, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (44, N'Zupa fasolowa z kielbasa', N'Tradycyjna zupa fasolowa z dodatkiem kielbasy', N'Fasola biala 200 gram, Kielbasa 200 gram, Cebula 1 sztuka, Czosnek 2 ząbki, Bulion warzywny 500 ml, liść laurowy 1 sztuka, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Podsmaż cebule i czosnek, dodaj pokrojona kielbase. 2. Dodaj fasole, bulion i liść laurowy, gotuj przez 20 minut. 3. Dopraw solą i pieprzem, podawaj goraca.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (45, N'Nalesniki z serem i owocami', N'Slodkie nalesniki z serem i swieżymi owocami', N'Mąka pszenna 200 gram, Mleko 300 ml, Jajka 2 sztuki, Serek waniliowy 200 gram, Truskawki 100 gram, Borówki 100 gram, Cukier puder 1 łyżka, Olej rzepakowy 2 łyżki', N'1. Wymieszaj make, mleko i jajka, usmaz nalesniki. 2. Nalóz serek na nalesniki, dodaj pokrojone owoce. 3. Złóż nalesniki i posyp cukrem pudrem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (46, N'Szaszlyki drobiowe z warzywami', N'Grillowane szaszłyki z kurczakiem i kolorowymi warzywami', N'Kurczak 300 gram, Papryka czerwona 1 sztuka, Cukinia 1 sztuka, Cebula 1 sztuka, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Zioła prowansalskie 1 łyżeczka', N'1. Pokrój kurczaka i warzywa, nadziej na patyczki. 2. Skrop oliwa, dopraw solą, pieprzem i ziolami. 3. Grilluj przez 10-15 minut, obracajac szaszłyki.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (47, N'Zupa krem z kalafiora i ziemniaków', N'Delikatna zupa krem z kalafiora i ziemniaków z dodatkiem imbiru', N'Kalafior 500 gram, Ziemniaki 300 gram, Cebula 1 sztuka, Bulion warzywny 500 ml, Imbir 1 cm, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki', N'1. Podsmaż cebule z imbirem na oliwie. 2. Dodaj kalafior, ziemniaki i bulion, gotuj do miekkosci. 3. Zmiksuj na gładki krem, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (48, N'Pieczona papryka nadziewana ryżem i warzywami', N'Papryka faszerowana ryżem, marchewka i cukinia', N'Papryka czerwona 2 sztuki, Ryż biały 150 gram, Cukinia 1/2 sztuki, Marchew 1 sztuka, Cebula 1 sztuka, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj ryż. 2. podsmaż cebule z marchewka i cukinia, dodaj do ryżu. 3. Napelnij papryki mieszanka ryzowa. 4. Piecz w 180°C przez 20-25 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (49, N'Tosty francuskie z bananami i cynamonem', N'Slodkie tosty francuskie z bananami i cynamonem', N'Chleb tostowy 4 kromki, Jajka 2 sztuki, Mleko 100 ml, Banan 2 sztuki, Cynamon 1/2 łyżeczki, Cukier puder 1 łyżka, Masło 2 łyżki', N'1. Wymieszaj jajka z mlekiem i cynamonem. 2. Maczaj chleb w mieszance i smaż na masle. 3. Podawaj z pokrojonymi bananami i posyp cukrem pudrem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (50, N'Placuszki z cukinii i marchewki', N'Delikatne placuszki z cukinii i marchewki, idealne na przekaske', N'Cukinia 1 sztuka, Marchew 2 sztuki, Jajka 2 sztuki, Mąka pszenna 100 gram, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki', N'1. Zetrzyj cukinie i marchew, odcisnij nadmiar wody. 2. Wymieszaj z jajkami, mąka, solą i pieprzem. 3. Formuj placuszki i smaż na oliwie z obu stron.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (51, N'Omlet z pieczarkami i serem', N'Omlet z dodatkiem pieczarek i zóltego sera', N'Jajka 4 sztuki, Pieczarki 150 gram, Ser żółty 50 gram, Cebula 1/2 sztuki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki, Oliwa z oliwek 2 łyżki', N'1. Podsmaż pieczarki i cebule na oliwie. 2. Roztrzep jajka z solą i pieprzem, wlej na patelnie. 3. Dodaj pieczarki i ser, smaż do sciecia omletu. 4. Złóż omlet na pól i podawaj.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (52, N'Pesto z bazylii z makaronem', N'Swiezy makaron z domowym pesto z bazylii, czosnkiem i orzechami nerkowca', N'Makaron 300 gram, Bazylia 30 gram, Czosnek 2 ząbki, Orzechy nerkowca 50 gram, Oliwa z oliwek 4 łyżki, Ser parmezan 30 gram, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj makaron al dente. 2. Zmiksuj bazylie, czosnek, orzechy nerkowca, oliwe i parmezan, dopraw solą i pieprzem. 3. Wymieszaj makaron z pesto i podawaj.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (53, N'Zupa krem z batatów i imbiru', N'Kremowa zupa z batatów z nuta imbiru i mlekiem kokosowym', N'Bataty 500 gram, Imbir 1 cm, Mleko kokosowe 200 ml, Cebula 1 sztuka, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Podsmaż cebule na oliwie, dodaj starty imbir i pokrojone bataty. 2. Zalej woda i gotuj do miekkosci. 3. Zmiksuj na krem, dodaj mleko kokosowe i dopraw. 4. Podawaj na ciepło.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (54, N'Tarta z gruszka i gorgonzola', N'Delikatna tarta z ciasta francuskiego z kawalkami gruszki i gorgonzola', N'Mąka pszenna 250 gram, Gruszki 2 sztuki, Gorgonzola 100 gram, Olej rzepakowy 2 łyżki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Przygotuj ciasto z maki i oleju. 2. Pokrój gruszki i gorgonzole. 3. Ułóż na ciescie, posyp solą i pieprzem. 4. Piecz w 180°C przez 20 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (55, N'Pieczony bakłażan z sosem pomidorowym', N'bakłażan zapiekany z aromatycznym sosem pomidorowym i ziolami', N'bakłażan 2 sztuki, Pomidory w puszce 400 gram, Cebula 1 sztuka, Bazylia 1 łyżka, Olej rzepakowy 2 łyżki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Pokrój bakłażana i posól. 2. podsmaż cebule, dodaj pomidory i bazylie, gotuj 10 minut. 3. Ułóż bakłażana w naczyniu, polej sosem. 4. Piecz w 180°C przez 25 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (56, N'Krem z zielonego groszku z mieta', N'Orzezwiajacy krem z groszku z dodatkiem swiezej miety', N'Groch 300 gram, Bazylia 10 liści, Mleko kokosowe 200 ml, Czosnek 1 ząbek, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj groszek do miekkosci. 2. Dodaj zmiksowany czosnek, mleko kokosowe i miete. 3. Dopraw solą i pieprzem, zmiksuj na gładko.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (57, N'Placuszki z cukinii i serem feta', N'Delikatne placuszki z cukinii z dodatkiem sera feta', N'Cukinia 1 sztuka, Ser feta 100 gram, Jajka 2 sztuki, Mąka pszenna 100 gram, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Zetrzyj cukinie, odsacz nadmiar wody. 2. Wymieszaj z jajkami, mąka i pokruszona feta. 3. Formuj placuszki i smaż na rozgrzanym oleju.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (58, N'Kaszotto z dynia i szpinakiem', N'Pozywne kaszotto z dynia, szpinakiem i nuta imbiru', N'Kasza jaglana 200 gram, Dynia 300 gram, Szpinak 100 gram, Imbir 1 cm, Cebula 1 sztuka, Oliwa z oliwek 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Podsmaż cebule na oliwie, dodaj starty imbir i dynie. 2. Dodaj kasze i wode, gotuj do miekkosci. 3. Dodaj szpinak, dopraw i podawaj.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (59, N'Pasztet z soczewicy z marchewka', N'Aromatyczny pasztet z soczewicy z dodatkiem marchewki i ziól', N'Soczewica 200 gram, Marchew 2 sztuki, Czosnek 2 ząbki, Cebula 1 sztuka, Oliwa z oliwek 2 łyżki, Tymianek 1 łyżeczka, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Podsmaż cebule i czosnek, dodaj starta marchewke. 2. Ugotuj soczewice, zmiksuj z warzywami. 3. Przełóż do formy i piecz w 180°C przez 30 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (60, N'Ryż z warzywami i kurczakiem', N'Pozywne danie z ryżu, kurczaka i mieszanki warzyw', N'Ryż basmati 200 gram, Kurczak 300 gram, Cukinia 1 sztuka, Marchew 2 sztuki, Cebula 1 sztuka, Olej rzepakowy 2 łyżki, Sól 1/2 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj ryż. 2. podsmaż kurczaka na oleju, dodaj cebule, marchew i cukinie. 3. Wymieszaj z ryżem, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (61, N'Spaghetti z krewetkami i cytryna', N'Delikatne spaghetti z krewetkami, oliwa i cytryna', N'Makaron spaghetti 300 gram, Krewetki 200 gram, Cytryna 1 sztuka, Czosnek 2 ząbki, Oliwa z oliwek 4 łyżki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Ugotuj makaron al dente. 2. podsmaż czosnek i krewetki na oliwie. 3. Dodaj sok z cytryny, wymieszaj z makaronem i podawaj.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (62, N'Sałatka z papryka i serem feta', N'Lekka Sałatka z kolorowa papryka i serem feta, idealna na lato', N'Papryka czerwona 300 gram, Ser feta 150 gram, Bazylia 10 liści, Cebula 1 sztuka, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Pokrój papryke i cebule w cienkie paski. 2. Wymieszaj z pokruszonym serem feta i listkami bazylii. 3. Skrop oliwa, dopraw solą i pieprzem. 4. Podawaj schlodzona.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (63, N'Grillowane warzywa z feta i oregano', N'Grillowane warzywa podane z feta i świeżym oregano', N'Cukinia 200 gram, Ser feta 100 gram, Papryka czerwona 1 sztuka, Cebula 1 sztuka, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Pokrój warzywa w plastry i grilluj z obu stron. 2. Podawaj z pokruszonym serem feta i posyp świeżym oregano. 3. Skrop oliwa i dopraw solą oraz pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (64, N'Gulasz warzywny z soczewica', N'Sycacy gulasz warzywny z dodatkiem soczewicy, idealny na zimne dni', N'Wołowina 400 gram, Cebula 1 sztuka, Czosnek 2 ząbek, Bazylia 1 łyżeczka, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Podsmaż cebule i czosnek na oliwie. 2. Dodaj pokrojona wołowinę i smaż na rumiano. 3. Dodaj przyprawy i dusz przez 1,5 godziny. 4. Podawaj na ciepło.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (65, N'Kotleciki z soczewicy i warzyw', N'Wegetarianskie kotleciki z soczewicy i warzyw, idealne na obiad', N'Soczewica 200 gram, Tymianek 1 łyżeczka, Imbir 1 cm, Mąka pszenna 200 gram, Cebula 1 sztuka, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Ugotuj soczewice i odcedz. 2. Zmieszaj z przyprawami i mąka, formujac kotleciki. 3. smaż na rozgrzanej patelni po kilka minut z kazdej strony.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (66, N'Łosoś z cytryna i czosnkiem', N'Aromatyczny Łosoś z cytryna i czosnkiem, pieczony w piekarniku', N'Łosoś 300 gram, Cytryna 1 sztuka, Czosnek 2 ząbek, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Skrop łososia sokiem z cytryny i dodaj posiekany czosnek. 2. Dopraw solą i pieprzem, piecz w piekarniku przez 20 minut. 3. Podawaj z oliwa i świeżym koperkiem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (67, N'Makaron penne z sosem pomidorowym', N'Makaron penne w aromatycznym sosie pomidorowym z bazylia', N'Makaron penne 200 gram, Pomidory w puszce 400 gram, Cebula 1 sztuka, Czosnek 2 ząbek, Bazylia 1 łyżeczka, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Podsmaż cebule i czosnek na oliwie. 2. Dodaj pomidory i gotuj przez 15 minut. 3. Wymieszaj z ugotowanym makaronem i bazylia. 4. Podawaj na ciepło.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (68, N'Wołowina duszona z warzywami', N'Aromatyczna Wołowina duszona z dodatkiem warzyw i ziól', N'Wołowina 400 gram, Oregano 1 łyżeczka, Imbir 1 cm, Cebula 1 sztuka, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Podsmaż wołowinę na rozgrzanej oliwie. 2. Dodaj cebule i przyprawy, smaż przez kilka minut. 3. Duś przez 1,5 godziny na wolnym ogniu. 4. Podawaj z ryżem lub ziemniakami.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (69, N'Zupa kalafiorowa z mlekiem kokosowym', N'Delikatna zupa z kalafiora z dodatkiem mleka kokosowego', N'Kalafior 500 gram, Imbir 1 cm, Mleko kokosowe 200 ml, Cebula 1 sztuka, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Podsmaż cebule i imbir na oliwie. 2. Dodaj kalafiora i mleko kokosowe, gotuj do miekkosci. 3. Dopraw solą i pieprzem, zmiksuj na krem. 4. Podawaj z grzankami.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (70, N'Pieczone placki z cukinii i sera feta', N'Delikatne placki z cukinii z serem feta, pieczone w piekarniku', N'Cukinia 1 sztuka, Ser feta 100 gram, Jajka 2 sztuka, Mąka pszenna 100 gram, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka, Oliwa z oliwek 2 łyżka', N'1. Zetrzyj cukinie na tarce i odcisnij nadmiar wody. 2. Wymieszaj z serem feta, jajkami i mąka. 3. Formuj placki i piecz w piekarniku przez 15 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (71, N'Kasza jaglana z warzywami i ziolami', N'Zdrowe danie z kaszy jaglanej z dodatkiem warzyw i swiezych ziól', N'Kasza jaglana 200 gram, Dynia 300 gram, Szpinak 100 gram, Imbir 1 cm, Cebula 1 sztuka, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Ugotuj kasze jaglana wedlug instrukcji na opakowaniu. 2. podsmaż cebule, dynie i imbir. 3. Dodaj szpinak i kasze, wymieszaj. 4. Dopraw i podawaj na ciepło.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (72, N'Zupa krem z papryki i pomidorów', N'Aromatyczna zupa krem z pieczonej papryki i pomidorów', N'Papryka czerwona 500 gram, Pomidory 400 gram, Cebula 1 sztuka, Czosnek 2 ząbek, Bulion warzywny 500 ml, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka, Bazylia 5 liści', N'1. Upiecz papryke i pomidory w piekarniku. 2. podsmaż cebule i czosnek na oliwie. 3. Dodaj warzywa i bulion, gotuj przez 15 minut. 4. Zmiksuj na krem, dopraw solą i pieprzem, podawaj z bazylia.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (73, N'Sałatka z grillowanego kurczaka i mango', N'Orzezwiajaca Sałatka z grillowanym kurczakiem, mango i sałatą', N'Kurczak 300 gram, Mango 1 sztuka, Sałata 100 gram, Cebula czerwona 1/2 sztuka, Sok z cytryny 1 łyżka, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Grilluj kurczaka i pokrój w plasterki. 2. Pokrój mango i cebule, wymieszaj z sałatą. 3. Skrop oliwa i sokiem z cytryny, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (74, N'Placuszki z twarogu i bananów', N'Slodkie placuszki z twarogu i bananów, idealne na sniadanie', N'Twaróg 200 gram, Banany 2 sztuka, Jajka 2 sztuka, Mąka pszenna 100 gram, Cukier 1 łyżka, Oliwa z oliwek 1 łyżka', N'1. Rozgniec twaróg i banany, wymieszaj z jajkami i mąka. 2. Dodaj cukier i wymieszaj. 3. smaż placuszki na oliwie, az beda zlociste.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (75, N'Makaron z warzywami i krewetkami', N'Delikatny makaron z warzywami i krewetkami w sosie sojowym', N'Makaron 300 gram, Krewetki 200 gram, Cukinia 1 sztuka, Papryka czerwona 1 sztuka, Sos sojowy 2 łyżka, Czosnek 2 ząbek, Oliwa z oliwek 2 łyżka, Sól 1/4 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Ugotuj makaron al dente. 2. Smaż krewetki na oliwie z czosnkiem. 3. Dodaj pokrojona cukinie i papryke, smaż przez kilka minut. 4. Wymieszaj z makaronem i sosem sojowym, dopraw.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (76, N'Pieczone buraki z serem kozim', N'Pieczone buraki podawane z serem kozim i orzechami wloskimi', N'Buraki 400 gram, Ser kozi 100 gram, Orzechy wloskie 50 gram, Miód 1 łyżka, Oliwa z oliwek 1 łyżka, Sól 1/4 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Upiecz buraki w piekarniku. 2. Pokrój buraki i ser kozi, Ułóż na talerzu. 3. Posyp orzechami, skropl miodem i oliwa, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (77, N'Gulasz z ciecierzycy i batatów', N'Rozgrzewajacy gulasz z ciecierzycy, batatów i szpinaku', N'Ciecierzyca 200 gram, Bataty 300 gram, Szpinak 100 gram, Pomidory w puszce 400 gram, Cebula 1 sztuka, Czosnek 2 ząbek, Oliwa z oliwek 2 łyżka, Kumin 1/2 łyżeczka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Podsmaż cebule i czosnek na oliwie. 2. Dodaj pokrojone bataty, smaż przez kilka minut. 3. Dodaj ciecierzyce, pomidory i przyprawy, gotuj 20 minut. 4. Dodaj szpinak i podawaj.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (78, N'Tortilla z warzywami i hummusem', N'Tortilla z warzywami i hummusem, idealna na szybki obiad', N'Tortilla 2 sztuka, Hummus 100 gram, Papryka czerwona 1 sztuka, Ogórek 1/2 sztuka, Sałata 50 gram, Sok z cytryny 1 łyżka, Oliwa z oliwek 1 łyżka', N'1. Posmaruj tortille hummusem. 2. Dodaj pokrojone warzywa i salate. 3. Skrop sokiem z cytryny i oliwa, zawin i podawaj.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (79, N'Zupa krem z marchewki i imbiru', N'Delikatna zupa krem z marchewki z dodatkiem imbiru', N'Marchew 500 gram, Imbir 1 cm, Cebula 1 sztuka, Bulion warzywny 500 ml, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Podsmaż cebule i imbir na oliwie. 2. Dodaj pokrojona marchew i bulion, gotuj do miekkosci. 3. Zmiksuj na krem, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (80, N'Pieczony kurczak z cytryna i rozmarynem', N'Soczysty kurczak pieczony z cytryna i rozmarynem', N'Kurczak 1 kg, Cytryna 1 sztuka, Rozmaryn 1 łyżeczka, Czosnek 3 ząbek, Oliwa z oliwek 2 łyżka, Sól 1/2 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Natrzyj kurczaka oliwa, czosnkiem, solą i pieprzem. 2. Dodaj cytryne pokrojona w plasterki i rozmaryn. 3. Piecz w piekarniku przez 1,5 godziny w 180°C.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (81, N'Sałatka z rukola, truskawkami i serem pleśniowym', N'Wykwintna Sałatka z rukola, swieżymi truskawkami i serem pleśniowym', N'Rukola 100 gram, Truskawki 150 gram, Ser pleśniowy 50 gram, Orzechy wloskie 30 gram, Miód 1 łyżka, Oliwa z oliwek 1 łyżka, Sól 1/4 łyżeczka, Pieprz 1/4 łyżeczka', N'1. Pokrój truskawki i ser pleśniowy. 2. Wymieszaj z rukola i posyp orzechami. 3. Skrop miodem i oliwa, dopraw solą i pieprzem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (82, N'Pizza Capriciosa', N'Klasyczna pizza z szynką, pieczarkami i mozzarellą', N'Mąka pszenna 500 gram, Sos pomidorowy 100 ml, Mozzarella 200 gram, Szynka 100 gram, Pieczarki 100 gram, Oliwa z oliwek 1 łyżka, Oregano 1/2 łyżeczki, Bazylia 1/2 łyżeczki', N'1. Przygotuj ciasto na pizzę i rozwałkuj na okrągły placek. 2. Posmaruj sosem pomidorowym. 3. Dodaj startą mozzarellę, pokrojoną szynkę i pieczarki. 4. Skrop oliwą i posyp oregano oraz bazylią. 5. Piecz w temperaturze 220°C przez 12-15 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (83, N'Spaghetti Carbonara', N'Tradycyjne włoskie spaghetti z jajkiem, boczkiem i parmezanem', N'Spaghetti 200 gram, Boczek wędzony 100 gram, Jajko 2 szt., Parmezan 50 gram, Czosnek 1 ząbek, Pieprz 1/4 łyżeczki, Sól 1/4 łyżeczki', N'1. Ugotuj spaghetti al dente. 2. Podsmaż boczek z drobno posiekanym czosnkiem. 3. Wymieszaj jajka z startym parmezanem, pieprzem i solą. 4. Połącz ugotowane spaghetti z boczkiem, zdejmij z ognia i dodaj masę jajeczną. 5. Szybko wymieszaj, aby uzyskać kremowy sos.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (84, N'Spaghetti Bolognese', N'Aromatyczne spaghetti z sosem pomidorowo-mięsnym', N'Spaghetti 200 gram, Mięso mielone wołowe 200 gram, Sos pomidorowy 200 ml, Cebula 1 szt., Czosnek 2 ząbki, Oliwa z oliwek 1 łyżka, Bazylia 1/2 łyżeczki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Podsmaż posiekaną cebulę i czosnek na oliwie. 2. Dodaj mięso mielone i smaż, aż się zarumieni. 3. Wlej sos pomidorowy i dopraw bazylią, solą i pieprzem. 4. Duś przez 15 minut na małym ogniu. 5. Ugotuj spaghetti i wymieszaj z sosem.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (85, N'Spaghetti Napoli', N'Proste i lekkie spaghetti z sosem pomidorowym', N'Spaghetti 200 gram, Sos pomidorowy 200 ml, Czosnek 2 ząbki, Oliwa z oliwek 1 łyżka, Bazylia 1/2 łyżeczki, Sól 1/4 łyżeczki, Pieprz 1/4 łyżeczki', N'1. Podsmaż czosnek na oliwie, aż lekko się zarumieni. 2. Dodaj sos pomidorowy i przyprawy. 3. Duś na małym ogniu przez 10 minut. 4. Ugotuj spaghetti al dente. 5. Wymieszaj makaron z sosem i udekoruj bazylią.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (86, N'Burrito', N'Wyśmienite burrito z kurczakiem, ryżem i fasolą', N'Tortilla 2 szt., Kurczak 150 gram, Ryż 100 gram, Fasola czerwona 100 gram, Ser żółty 50 gram, Salsa pomidorowa 100 ml, Papryka 1 szt., Cebula 1 szt., Przyprawa meksykańska 1 łyżeczka', N'1. Podsmaż kurczaka z przyprawą meksykańską. 2. Ugotuj ryż i wymieszaj z fasolą oraz salsą. 3. Dodaj pokrojoną paprykę i cebulę. 4. Na tortillach umieść farsz, posyp serem i zawiń. 5. Podpiecz burrito w piekarniku przez 5 minut.', NULL)
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [IngredientsString], [PreparationInstructions], [ImagePath]) VALUES (87, N'Pad Thai', N'Tradycyjne tajskie danie z makaronem ryżowym i orzechami', N'Makaron ryżowy 400 gram, Kurczak 300 gram, Jajko 1 szt., Orzechy ziemne 50 gram, Sos sojowy 3 łyżki, Sos rybny 1 łyżka, Cukier trzcinowy 1 łyżeczka, Szczypiorek 1 pęczek, Sok z limonki 1 łyżka', N'1. Ugotuj makaron ryżowy według instrukcji. 2. Podsmaż kurczaka, dodaj rozbełtane jajko i wymieszaj. 3. Dodaj makaron, sosy, cukier i sok z limonki. 4. Smaż na dużym ogniu przez 3 minuty. 5. Posyp posiekanym szczypiorkiem i orzechami.', NULL)
SET IDENTITY_INSERT [dbo].[Recipes] OFF
GO
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 9, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 21, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 22, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 28, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 119, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 201, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (1, 240, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (2, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (2, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (2, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (2, 9, CAST(3.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (2, 12, CAST(1000.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (2, 21, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (2, 22, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (2, 29, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (2, 240, CAST(45.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (3, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (3, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (3, 19, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (3, 83, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (3, 98, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (3, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (3, 192, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (4, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (4, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (4, 10, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (4, 62, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (4, 71, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (4, 101, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (4, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (4, 191, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 9, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 21, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 22, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 28, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 31, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (5, 202, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (6, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (6, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (6, 25, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (6, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (6, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (6, 167, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (7, 3, CAST(4.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (7, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (7, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (7, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (7, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (7, 98, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (7, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (7, 189, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (8, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (8, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (8, 9, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (8, 71, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (8, 132, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (8, 138, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (8, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (8, 201, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (9, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (9, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (9, 10, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (9, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (9, 71, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (9, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (9, 163, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (9, 209, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (10, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (10, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (10, 9, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (10, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (10, 27, CAST(10.00 AS Decimal(10, 2)), N'liść')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (10, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (10, 168, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (10, 192, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 9, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 14, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 34, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 116, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 205, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (11, 240, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (12, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (12, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (12, 9, CAST(3.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (12, 13, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (12, 21, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (12, 29, CAST(5.00 AS Decimal(10, 2)), N'gram')
GO
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (12, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (13, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (13, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (13, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (13, 9, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (13, 82, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (13, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (13, 152, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (13, 192, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (13, 237, CAST(500.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (14, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (14, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (14, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (14, 11, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (14, 16, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (14, 19, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (14, 21, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (15, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (15, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (15, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (15, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (15, 12, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (15, 101, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (15, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (15, 226, CAST(4.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (15, 235, CAST(50.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 9, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 14, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 26, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 154, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 188, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (16, 226, CAST(250.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (17, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (17, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (17, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (17, 32, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (17, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (17, 103, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (17, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (17, 191, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (18, 3, CAST(3.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (18, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (18, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (18, 9, CAST(1.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (18, 20, CAST(100.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (18, 24, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (18, 98, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (19, 3, CAST(3.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (19, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (19, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (19, 9, CAST(1.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (19, 62, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (19, 71, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (20, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (20, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (20, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (20, 9, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (20, 14, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (20, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (20, 26, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (20, 169, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (20, 192, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (21, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (21, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (21, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (21, 19, CAST(100.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (21, 37, CAST(1.00 AS Decimal(10, 2)), N'cm')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (21, 131, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (21, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (21, 237, CAST(500.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (22, 3, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (22, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (22, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (22, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (22, 9, CAST(1.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (22, 100, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (22, 156, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (22, 201, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (22, 240, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (23, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (23, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (23, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (23, 24, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (23, 71, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (23, 87, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (23, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (24, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (24, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (24, 27, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (24, 38, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (24, 56, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (24, 71, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (24, 81, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (24, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (25, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
GO
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (25, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (25, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (25, 16, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (25, 17, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (25, 19, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (25, 83, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (26, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (26, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (26, 10, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (26, 27, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (26, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (26, 156, CAST(1.00 AS Decimal(10, 2)), N'arkusz')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (26, 159, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (27, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (27, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (27, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (27, 11, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (27, 21, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (27, 96, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (27, 240, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (28, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (28, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (28, 62, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (28, 71, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (28, 101, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (28, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (28, 167, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (29, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (29, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (29, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (29, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (29, 11, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (29, 14, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (29, 31, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (29, 134, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (29, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (30, 2, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (30, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (30, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (30, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (30, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (30, 19, CAST(100.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (30, 82, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (30, 147, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (30, 237, CAST(500.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (31, 3, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (31, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (31, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (31, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (31, 24, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (31, 99, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (31, 100, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (31, 240, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (32, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (32, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (32, 9, CAST(1.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (32, 19, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (32, 83, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (32, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (32, 152, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (32, 192, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (33, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (33, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (33, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (33, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (33, 12, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (33, 16, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (33, 82, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (33, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (33, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (34, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (34, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (34, 8, CAST(0.50 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (34, 10, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (34, 26, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (34, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (34, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (34, 191, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (34, 231, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (35, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (35, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (35, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (35, 19, CAST(100.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (35, 98, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (35, 147, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (35, 237, CAST(500.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (35, 238, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (36, 3, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (36, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (36, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (36, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (36, 14, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (36, 21, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (36, 22, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (36, 58, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (36, 240, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (37, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (37, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (37, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (37, 27, CAST(30.00 AS Decimal(10, 2)), N'gram')
GO
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (37, 83, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (37, 104, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (37, 147, CAST(60.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (37, 192, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 82, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 87, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (38, 238, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (39, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (39, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (39, 22, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (39, 71, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (39, 98, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (39, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (39, 167, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (40, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (40, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (40, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (40, 19, CAST(100.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (40, 27, CAST(10.00 AS Decimal(10, 2)), N'liść')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (40, 97, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (40, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (40, 237, CAST(500.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (41, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (41, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (41, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (41, 19, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (41, 83, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (41, 100, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (41, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (41, 191, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (42, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (42, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (42, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (42, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (42, 12, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (42, 71, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (42, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (42, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (42, 163, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (43, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (43, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (43, 60, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (43, 71, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (43, 75, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (43, 129, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (43, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (43, 177, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (43, 191, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (44, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (44, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (44, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (44, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (44, 31, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (44, 48, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (44, 84, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (44, 237, CAST(500.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (45, 1, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (45, 3, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (45, 17, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (45, 19, CAST(300.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (45, 113, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (45, 140, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (45, 240, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (46, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (46, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (46, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (46, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (46, 12, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (46, 32, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (46, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (46, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (47, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (47, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (47, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (47, 21, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (47, 37, CAST(1.00 AS Decimal(10, 2)), N'cm')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (47, 99, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (47, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (47, 237, CAST(500.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (48, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (48, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (48, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (48, 22, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (48, 82, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (48, 97, CAST(0.50 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (48, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (49, 3, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (49, 19, CAST(100.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (49, 32, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (49, 56, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (49, 85, CAST(4.00 AS Decimal(10, 2)), N'kromka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (49, 140, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (49, 241, CAST(30.00 AS Decimal(10, 2)), N'gram')
GO
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (50, 1, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (50, 3, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (50, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (50, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (50, 22, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (50, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (50, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (51, 3, CAST(4.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (51, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (51, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (51, 8, CAST(0.50 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (51, 16, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (51, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (51, 152, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (52, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (52, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (52, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (52, 27, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (52, 83, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (52, 147, CAST(60.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (52, 192, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (52, 209, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (53, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (53, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (53, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (53, 37, CAST(10.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (53, 132, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (53, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (53, 148, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (54, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (54, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (54, 60, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (54, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (54, 158, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (54, 173, CAST(250.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (55, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (55, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (55, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (55, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (55, 27, CAST(10.00 AS Decimal(10, 2)), N'liść')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (55, 103, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (55, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (56, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (56, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (56, 9, CAST(1.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (56, 27, CAST(10.00 AS Decimal(10, 2)), N'liść')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (56, 148, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (56, 202, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (57, 3, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (57, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (57, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (57, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (57, 173, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (57, 191, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (58, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (58, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (58, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (58, 37, CAST(10.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (58, 81, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (58, 100, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (58, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (58, 212, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (59, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (59, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (59, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (59, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (59, 22, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (59, 28, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (59, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (59, 202, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (60, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (60, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (60, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (60, 12, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (60, 22, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (60, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (60, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (60, 170, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (61, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (61, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (61, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (61, 71, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (61, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (61, 168, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (62, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (62, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (62, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (62, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (62, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (62, 27, CAST(10.00 AS Decimal(10, 2)), N'liść')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (62, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (62, 169, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (63, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (63, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (63, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (63, 14, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (63, 26, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (63, 37, CAST(10.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (63, 147, CAST(30.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (64, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
GO
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (64, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (64, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (64, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (64, 14, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (64, 27, CAST(10.00 AS Decimal(10, 2)), N'liść')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (64, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (64, 202, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (65, 1, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (65, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (65, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (65, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (65, 28, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (65, 37, CAST(10.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (65, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (65, 202, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (66, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (66, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (66, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (66, 71, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (66, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (66, 167, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (67, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (67, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (67, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (67, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (67, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (67, 27, CAST(10.00 AS Decimal(10, 2)), N'liść')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (67, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (67, 169, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (68, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (68, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (68, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (68, 14, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (68, 26, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (68, 37, CAST(10.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (68, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (69, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (69, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (69, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (69, 37, CAST(10.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (69, 99, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (69, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (69, 148, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (70, 1, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (70, 3, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (70, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (70, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (70, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (70, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (70, 191, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (71, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (71, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (71, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (71, 37, CAST(10.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (71, 81, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (71, 100, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (71, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (71, 212, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (72, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (72, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (72, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (72, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (72, 10, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (72, 11, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (72, 27, CAST(5.00 AS Decimal(10, 2)), N'liść')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (72, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (72, 237, CAST(500.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (73, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (73, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (73, 8, CAST(0.50 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (73, 12, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (73, 71, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (73, 101, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (73, 112, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (73, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (74, 1, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (74, 2, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (74, 3, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (74, 54, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (74, 147, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (74, 194, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (75, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (75, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (75, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (75, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (75, 83, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (75, 88, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (75, 97, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (75, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (75, 238, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (76, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (76, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (76, 23, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (76, 38, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (76, 147, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (76, 207, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 9, CAST(2.00 AS Decimal(10, 2)), N'ząbek')
GO
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 18, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 34, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 100, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 132, CAST(300.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (77, 201, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (78, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (78, 71, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (78, 77, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (78, 87, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (78, 96, CAST(0.50 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (78, 101, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (78, 147, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (79, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (79, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (79, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (79, 22, CAST(500.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (79, 37, CAST(10.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (79, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (79, 237, CAST(500.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (80, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (80, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (80, 9, CAST(3.00 AS Decimal(10, 2)), N'ząbek')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (80, 12, CAST(1000.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (80, 29, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (80, 71, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (80, 147, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (81, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (81, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (81, 38, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (81, 113, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (81, 143, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (81, 147, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (81, 159, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (81, 207, CAST(30.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (82, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (82, 26, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (82, 147, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (82, 152, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (82, 173, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (82, 176, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (82, 188, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (83, 3, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (83, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (83, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (83, 14, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (83, 168, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (83, 192, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (84, 5, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (84, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (84, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (84, 9, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (84, 14, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (84, 168, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (84, 237, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (85, 6, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (85, 9, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (85, 27, CAST(5.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (85, 147, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (85, 168, CAST(200.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (85, 237, CAST(200.00 AS Decimal(10, 2)), N'ml')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (86, 8, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (86, 11, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (86, 12, CAST(150.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (86, 16, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (86, 205, CAST(100.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (86, 226, CAST(2.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (87, 3, CAST(1.00 AS Decimal(10, 2)), N'sztuka')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (87, 12, CAST(400.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (87, 38, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (87, 77, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (87, 92, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (87, 147, CAST(15.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (87, 238, CAST(50.00 AS Decimal(10, 2)), N'gram')
INSERT [dbo].[RecipeIngredients] ([RecipeId], [IngredientId], [Quantity], [Unit]) VALUES (87, 242, CAST(300.00 AS Decimal(10, 2)), N'gram')
GO

GO
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 1, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 3, CAST(22.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 5, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 6, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 8, CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 9, CAST(4.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 14, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 18, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 21, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 22, CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 28, CAST(105.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 31, CAST(1.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 38, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 119, CAST(600.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 131, CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 201, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[UserIngredients] ([UserId], [IngredientId], [Quantity]) VALUES (N'848f8372-9086-4026-9713-1abed443e54e', 240, CAST(555.00 AS Decimal(10, 2)))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 05.01.2025 19:53:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 05.01.2025 19:53:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 05.01.2025 19:53:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 05.01.2025 19:53:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 05.01.2025 19:53:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 05.01.2025 19:53:08 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 05.01.2025 19:53:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecipeIngredients_IngredientId]    Script Date: 05.01.2025 19:53:08 ******/
CREATE NONCLUSTERED INDEX [IX_RecipeIngredients_IngredientId] ON [dbo].[RecipeIngredients]
(
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserIngredients_IngredientId]    Script Date: 05.01.2025 19:53:08 ******/
CREATE NONCLUSTERED INDEX [IX_UserIngredients_IngredientId] ON [dbo].[UserIngredients]
(
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0.0)) FOR [Budget]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[RecipeIngredients]  WITH CHECK ADD  CONSTRAINT [FK_RecipeIngredients_Ingredients_IngredientId] FOREIGN KEY([IngredientId])
REFERENCES [dbo].[Ingredients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecipeIngredients] CHECK CONSTRAINT [FK_RecipeIngredients_Ingredients_IngredientId]
GO
ALTER TABLE [dbo].[RecipeIngredients]  WITH CHECK ADD  CONSTRAINT [FK_RecipeIngredients_Recipes_RecipeId] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecipeIngredients] CHECK CONSTRAINT [FK_RecipeIngredients_Recipes_RecipeId]
GO
ALTER TABLE [dbo].[UserIngredients]  WITH CHECK ADD  CONSTRAINT [FK_UserIngredients_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserIngredients] CHECK CONSTRAINT [FK_UserIngredients_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserIngredients]  WITH CHECK ADD  CONSTRAINT [FK_UserIngredients_Ingredients_IngredientId] FOREIGN KEY([IngredientId])
REFERENCES [dbo].[Ingredients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserIngredients] CHECK CONSTRAINT [FK_UserIngredients_Ingredients_IngredientId]
GO
USE [master]
GO
ALTER DATABASE [AplikacjaKulinarnaDb] SET  READ_WRITE 
GO
