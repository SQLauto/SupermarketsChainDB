USE [master]
GO
/****** Object:  Database [SupermarketsChainDB]    Script Date: 22.2.2015 г. 20:05:08 ч. ******/
CREATE DATABASE [SupermarketsChainDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SupermarketsChainDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SupermarketsChainDB.mdf' , SIZE = 51200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SupermarketsChainDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SupermarketsChainDB_log.ldf' , SIZE = 5120KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SupermarketsChainDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SupermarketsChainDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SupermarketsChainDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SupermarketsChainDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SupermarketsChainDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SupermarketsChainDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SupermarketsChainDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SupermarketsChainDB] SET  MULTI_USER 
GO
ALTER DATABASE [SupermarketsChainDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SupermarketsChainDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SupermarketsChainDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SupermarketsChainDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SupermarketsChainDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SupermarketsChainDB]
GO
/****** Object:  User [Yavor]    Script Date: 22.2.2015 г. 20:05:08 ч. ******/
CREATE USER [Yavor] FOR LOGIN [Yavor] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Measures]    Script Date: 22.2.2015 г. 20:05:09 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measures](
	[Id] [int] IDENTITY(100,100) NOT NULL,
	[MeasureName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Measures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 22.2.2015 г. 20:05:09 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorId] [int] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[MeasureId] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuperMarkets]    Script Date: 22.2.2015 г. 20:05:09 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperMarkets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SuperMarkets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuperMarketsStore]    Script Date: 22.2.2015 г. 20:05:09 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperMarketsStore](
	[SuperMarketId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[LoadingDate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 22.2.2015 г. 20:05:09 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[Id] [int] IDENTITY(10,10) NOT NULL,
	[VendorName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Measures] ON 

INSERT [dbo].[Measures] ([Id], [MeasureName]) VALUES (100, N'liters')
INSERT [dbo].[Measures] ([Id], [MeasureName]) VALUES (200, N'pieces')
INSERT [dbo].[Measures] ([Id], [MeasureName]) VALUES (300, N'kg')
SET IDENTITY_INSERT [dbo].[Measures] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [VendorId], [ProductName], [MeasureId], [Price]) VALUES (7, 20, N'Beer "Zagorka"', 100, 0.8600)
INSERT [dbo].[Products] ([Id], [VendorId], [ProductName], [MeasureId], [Price]) VALUES (8, 30, N'Vodka “Targovishte”', 100, 7.5600)
INSERT [dbo].[Products] ([Id], [VendorId], [ProductName], [MeasureId], [Price]) VALUES (9, 20, N'Beer “Beck’s”', 100, 1.0300)
INSERT [dbo].[Products] ([Id], [VendorId], [ProductName], [MeasureId], [Price]) VALUES (10, 10, N'Chocolate “Milka”', 200, 2.8000)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[SuperMarkets] ON 

INSERT [dbo].[SuperMarkets] ([Id], [Name]) VALUES (1, N'Supermarket “Kaspichan – Center”')
INSERT [dbo].[SuperMarkets] ([Id], [Name]) VALUES (2, N'Supermarket “Bourgas – Plaza”')
INSERT [dbo].[SuperMarkets] ([Id], [Name]) VALUES (3, N'Supermarket “Bay Ivan” – Zmeyovo')
SET IDENTITY_INSERT [dbo].[SuperMarkets] OFF
INSERT [dbo].[SuperMarketsStore] ([SuperMarketId], [ProductId], [Quantity], [LoadingDate]) VALUES (1, 7, 40, CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[SuperMarketsStore] ([SuperMarketId], [ProductId], [Quantity], [LoadingDate]) VALUES (2, 8, 8, CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[SuperMarketsStore] ([SuperMarketId], [ProductId], [Quantity], [LoadingDate]) VALUES (3, 8, 115, CAST(N'2014-07-22 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Vendors] ON 

INSERT [dbo].[Vendors] ([Id], [VendorName]) VALUES (10, N'Nestle Sofia Corp.')
INSERT [dbo].[Vendors] ([Id], [VendorName]) VALUES (20, N'Zagorka Corp.')
INSERT [dbo].[Vendors] ([Id], [VendorName]) VALUES (30, N'Targovishte Bottling Company Ltd.')
SET IDENTITY_INSERT [dbo].[Vendors] OFF
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Measures] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[Measures] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Measures]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Vendors] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Vendors]
GO
ALTER TABLE [dbo].[SuperMarketsStore]  WITH CHECK ADD  CONSTRAINT [FK_SuperMarketsStore_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[SuperMarketsStore] CHECK CONSTRAINT [FK_SuperMarketsStore_Products]
GO
ALTER TABLE [dbo].[SuperMarketsStore]  WITH CHECK ADD  CONSTRAINT [FK_SuperMarketsStore_SuperMarkets] FOREIGN KEY([SuperMarketId])
REFERENCES [dbo].[SuperMarkets] ([Id])
GO
ALTER TABLE [dbo].[SuperMarketsStore] CHECK CONSTRAINT [FK_SuperMarketsStore_SuperMarkets]
GO
/****** Object:  StoredProcedure [dbo].[usp_get_procducts_total_period]    Script Date: 22.2.2015 г. 20:05:09 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_get_procducts_total_period] 
 @p_date_from datetime,
 @p_date_to datetime
AS
BEGIN

	SET NOCOUNT ON;
SELECT
	convert(varchar,t.loadingdate,112) as loadingdate,
	t.Product,
	t.Quantity,
	t.Unit_price,
	t.Location,
	t.Summ,
	SUM(Summ) OVER (PARTITION BY loadingdate ORDER BY loadingdate) AS Total
FROM (SELECT
	sms.loadingdate,
	p.ProductName Product,
	sms.Quantity,
	p.Price AS Unit_price,
	s.Name AS Location,
	SUM(sms.Quantity * p.Price) AS Summ
FROM dbo.SuperMarketsStore AS sms
INNER JOIN dbo.Products AS p
	ON p.Id = sms.ProductId
INNER JOIN dbo.SuperMarkets AS s
	ON s.Id = sms.SuperMarketId
INNER JOIN dbo.Measures AS m
	ON m.Id = p.MeasureId
where sms.loadingdate BETWEEN @p_date_from and @p_date_to
GROUP BY	sms.loadingdate,
			p.ProductName,
			sms.Quantity,
			p.Price,
			s.Name) t;

END

GO
USE [master]
GO
ALTER DATABASE [SupermarketsChainDB] SET  READ_WRITE 
GO
