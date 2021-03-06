USE [SupermarketSystem]
GO
ALTER TABLE [dbo].[StoreProducts] DROP CONSTRAINT [FK_dbo.StoreProducts_dbo.Stores_Store_Id]
GO
ALTER TABLE [dbo].[StoreProducts] DROP CONSTRAINT [FK_dbo.StoreProducts_dbo.Products_Product_Id]
GO
ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_dbo.Sales_dbo.Stores_StoreId]
GO
ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_dbo.Sales_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_dbo.Products_dbo.Vendors_VendorId]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_dbo.Products_dbo.Measures_MeasureId]
GO
ALTER TABLE [dbo].[Expenses] DROP CONSTRAINT [FK_dbo.Expenses_dbo.Vendors_VendorId]
GO
/****** Object:  Index [IX_Store_Id]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP INDEX [IX_Store_Id] ON [dbo].[StoreProducts]
GO
/****** Object:  Index [IX_Product_Id]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP INDEX [IX_Product_Id] ON [dbo].[StoreProducts]
GO
/****** Object:  Index [IX_StoreId]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP INDEX [IX_StoreId] ON [dbo].[Sales]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP INDEX [IX_ProductId] ON [dbo].[Sales]
GO
/****** Object:  Index [IX_VendorId]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP INDEX [IX_VendorId] ON [dbo].[Products]
GO
/****** Object:  Index [IX_MeasureId]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP INDEX [IX_MeasureId] ON [dbo].[Products]
GO
/****** Object:  Index [IX_VendorId]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP INDEX [IX_VendorId] ON [dbo].[Expenses]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP TABLE [dbo].[Vendors]
GO
/****** Object:  Table [dbo].[Stores]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP TABLE [dbo].[Stores]
GO
/****** Object:  Table [dbo].[StoreProducts]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP TABLE [dbo].[StoreProducts]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP TABLE [dbo].[Sales]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Measures]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP TABLE [dbo].[Measures]
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP TABLE [dbo].[Expenses]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/17/2015 8:19:31 PM ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
USE [master]
GO
/****** Object:  Database [SupermarketSystem]    Script Date: 3/17/2015 8:19:32 PM ******/
DROP DATABASE [SupermarketSystem]
GO
/****** Object:  Database [SupermarketSystem]    Script Date: 3/17/2015 8:19:32 PM ******/
CREATE DATABASE [SupermarketSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SupermarketSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SupermarketSystem.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SupermarketSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SupermarketSystem_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SupermarketSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SupermarketSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SupermarketSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SupermarketSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SupermarketSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SupermarketSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [SupermarketSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SupermarketSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SupermarketSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SupermarketSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SupermarketSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SupermarketSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SupermarketSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SupermarketSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SupermarketSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SupermarketSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SupermarketSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SupermarketSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SupermarketSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SupermarketSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SupermarketSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SupermarketSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SupermarketSystem] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SupermarketSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SupermarketSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SupermarketSystem] SET  MULTI_USER 
GO
ALTER DATABASE [SupermarketSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SupermarketSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SupermarketSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SupermarketSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SupermarketSystem]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/17/2015 8:19:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 3/17/2015 8:19:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Expenses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Measures]    Script Date: 3/17/2015 8:19:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measures](
	[Id] [int] NOT NULL,
	[Measure Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Measures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/17/2015 8:19:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] NOT NULL,
	[VendorId] [int] NOT NULL,
	[Product Name] [nvarchar](max) NOT NULL,
	[MeasureId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ProductType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales]    Script Date: 3/17/2015 8:19:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SinglePrice] [decimal](18, 2) NOT NULL,
	[Sum] [decimal](18, 2) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Sales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StoreProducts]    Script Date: 3/17/2015 8:19:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreProducts](
	[Store_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.StoreProducts] PRIMARY KEY CLUSTERED 
(
	[Store_Id] ASC,
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stores]    Script Date: 3/17/2015 8:19:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Stores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 3/17/2015 8:19:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[Id] [int] NOT NULL,
	[Vendor Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201503151819243_AutomaticMigration', N'SupermarketsChainDB.Data.Migrations.Configuration', 0x1F8B0800000000000400ED5D5F6FE3B8117F2FD0EF20E8A92D7271926D816B60DF21EB24457097CD769D5DF42D6024C61156A25C890A1C14FD64F7701FA95FA1A44451FC2B51B2FC27778BBCD8A2663833FC919C21679CFFFDF2EBF4C775127B2F30CBA314CDFCD3E313DF832848C3082D677E819FBEFBDEFFF1873FFE617A15266BEF4BFDDE3BFA1EA144F9CC7FC678753E99E4C1334C407E9C444196E6E9133E0ED26402C274727672F2F7C9E9E90412163EE1E579D34F05C25102CB2FE4EB3C45015CE102C4B76908E39C3D272D8B92ABF70124305F8100CEFC45B1825902B2AF10E7F36710A1CBF7C7970003DFBB882340E459C0F8C9F70042290698487BFE39870B9CA568B958910720BE7F5D41F2DE138873C8B4386F5E7755E8E48C2A3469086B564191E334E9C9F0F41DB3D044251F64679F5B90D8F08AD81ABF52AD4B3BCEFCABF50A22AABBDAD7F93CCEE87B662B576373CCA88F3CFB3B471C290450F4EFC89B17312E323843B0C019888FBC8FC5631C053FC1D7FBF42B443354C4B12835919BB4490FC8A38F594AFAC4AF9FE013D3E526F4BD894C37510939994053A97983F0BB33DFFB403A078F31E4A0104CB2C06906FF0111CC0086E1478031CC10E5014BB36ABD2B7D7D81284CB3EE1EDBB91080C39A03FD7C4F264F6F26F744A59873814194D0AF1F33F289CDFEEF7D6F1100CAD041C40FE0255A963632AAEC7B9F605C36E7CFD1AA9A9635761EEA57AEB334F994C60D2659CBC3222DB280AA9C1A9BEF41B6845816693A6980DE0AFFBAF341E8AF887FE7E0FF90A24EB45586A29FEBFEC8224C7615DFBB05EB9F215AE2E7994F3E1210446B18D64F980C9F514436214284B3A207F4184CF2CDC057A3CB02BE1A9BAE4291AF611160B350ACD12094DCA209A5349B84729E118CD7C029C1A8BFCD09C739B1E966C0EC3DD2D4EAD9F92D043919B6CD75880238DE5E64B610E5CE2D244CB6EAF9E0FD8D99A0753AF377F4F9CC9AB42D4E6D37ED716D622D88B1CC6B0C6D79E073BC91487CAEAD2F5263DF25AF9C23166168D343B3260AE2482DBA4072735F915ABC12E735D836646378251C3183D66046FD6D0D765DC076EC9838F9000E8B86CD0B5017954110A4537E20FE28E9EF1C7CAE1161493E920FB0299B7F1680C9BC099705993D31DCEE96BE2892ADF11E165D77CDF5E15BB1BACD18F7E95E5B71CB4ECCDC06751B2E1F5BF6E0AA6DB3A5A6926AD85A4369BF2D364E8BCD216D73CE9E9F867FB363388263DC3D03CCB2C8B3C36D0614891E715791C84D7E1D83657324BD49144EDFDBC6DC2088086116BF120489D89587E016268F30632A5EA72901FA171017E4CB89365CD2BBF3143DC180EA0AB3574E74DA4E741107E9731A5F12547FCD39D1593B117111CD74EFDAE9DEA7E1EB1CD0358BBDFFD7F6F7EFF033CCF8CB7FD34152C1417C7891E7691095232EA3843B86727F5728F43A424B2DF425B39F8C76B422E34B403AF3FFA26961E7CA3783862BF75865AEA7BEBA72DEA14B18430CBD8BA0BA1399833C00A1BEB410CB84F213B2D8C28CAE76202630C909442384F595394241B40271BBEC0A99E3924EC5E21DA82D977045A23F225FFB58B8F42C9CADE802F07E147B7599673A1170D50E37C939B1A1C2ECA93490A882087794990F213A81BB7F889904DF01BE4CF677E9568818F6032E79F7B7C2C1E20A0800AB5CC71E08B39C2BF55D1C7B2B5B3916ED62295E46879AA3A2DE2C8AC13C6E537AD824D28DB08B39A4EBEBD22B8FDCF732819453CAAE5D5B3DB21CC51550EFA21AA6F5D9E9A1ADD266C977E807C8E3E0D271734BB4179C29D7A43648D82EEC1B48F03413779CD92E620F1F6766C9778033F3381C1CCEAAA898D06042C1A324214E5DBCE61826978FF415B836DD457FCE210B8473762EA1C28876B180584B06684272159A1A12651695894C1C6A1C7630684E3B340E7C19EE60C1A202130B1E7E75B060271C1A7DB5B17711B3BB3C9DBAF250147261FC353334371CC25B964B101592DDD12E175C34BB06EDEEF856E0D3D85E5D3564351D4C209FFCEAFADB83AFEEF04B90980D758BDAC680CBC1764374564EFC0C5AB744052E7181A839C3699BEAE648609BCAB3F1B0696E08113A8384213ACBBE7D175E0668ABDEA1DB27B8C9AF70F160874E6FC59710D8F0D57D63EDD5D4325DFB36AFCAC5AF12C46EF6B516ED2D9ED446DAD767DB7C17E76DD34995A8CD1E4C27968CEEE92D58AD22B41432BCD9136F51A577CFBF5BF4CF784E2A1E93409A4AAACFC17B2233022CA1D24A0FA143781D6539A6E9E48F80BA07F330D15E6BF1592C1B69DDB1E296E883576FB03501FDAC394A52D63BF76474878F31B926BA26D45D2C17021D463AA547D3EE410C32C3BDD53C8D8B04D91D573B75E36D8A3CEC3EA89D53755D2B72A99EB8736099D0220BF648E7319D2886D47C656DDCB40043C681134AEAD9390A48CC8B8E03466C84DB84487565A983C4AB1A0E66845A9C96014364F1FC1CC6C84A79E8F358CA631599B106EB80DB180AF72722BB966B9536E1CA6C1659AC484F387450B0BAE4352858351C0CA079B0330AA02D719C03A0AD94DB01B4941068C0CDA1AD3BB69061C01895F17FFF0132936D6774F899BBC8C27A106FE7235C7F1966623F5E4DD69CC8AA79DA433B31734ED2506CE8C18F66C9497CE8836DB856FB027F15F08E83FEF2FC6A00FCCD74DBC1BFBE2CED6B3992C342C3B008073DAED617488C566E390F33AD13DAF9906E24A721AA98994FC685AE7B4B65BD157092AA3ED0E827971ACFEB63AB85F5EA2B1C593CBC57C2F8290BA9BBABB7B518BB7A85E6F2A62F5158C6D76550CD40F2EF781E4704CBCD0BB700454F30C7556E9A7F76727AA6947E1F4E19F624CFC3D8702461A8C596C76C07B9A711356A677669CF4C6AB5C0ADEC44BBC8B941215CCFFCFF9444E7DECDBF1E6ABA23EF2E23637CEE9D78FFDD288D3B249FF1C645D2E16699E67D2B92F783814143EC8989C5E80564C133C8FE9480F59F45867AF270EF92D43764933DC15E8E963B4664588DA7AB3E9C7043858442920DA7A0D55C626D68F790F7AEE27B13B09503DCEDCD653D5E7CB31B9C52BCE53A3118D918F3BC7FE79C70A3EED552B1218033148A8D3EBF8542B1D1790FF0307A5644FD3666C9D617146B6CE866B296F8CE9A386D78BDDBCE4D4703D68B8771168C01DD37943D04B08DDEF0B2169E2DB4E38A132D876058FAECA03C42FBB1F9B632547F3BA5293D466B5B89F46542DD6E52E7FB0CDF0835276FB0C8C4780AA8A646EDB7E8C20459B9617B65173BABB4E883D4B6A3D7DD03C874607B580BCE1E41B4CB05A82F8CDACFCA770624870AB0FDAD3F3BDCAB76B7DEB8EE546FA296AB4E27DD6DFDCB3EDD5F6BA6DA5EBDDFB75191B56FB4F0A29A213560078E167B9AED9ED162AEABD25399D54133964AB5554A5517B5333F7C4CC90857A700B64C744B1D554B199589BB2D41DD5263D556626562DFA41EB81560B5D55F99F85B6B874CD559D6E22C136773CD86B16ECB5EB665646C2C273173B65B5D6EB6F663B5FFF62BC8941195B20E1D4A4A4CB528875321D64348833FA8A6F98D5D04C60B5ABA6AC12C293CBAFBAC6566755643992C24378CAD745D7ED3A9B43943688CD1DDA9E26354BDF51DD92DC15771D537296C937741B1C0627F8BCE88956BC3D4535C0FA934692BA5697AAE1A71BF84FF47427CBF3C5A362CE87F2741D58F93354CEB776ED0535A7B808A44F52BDAA53B0621F1CA2E321C3D810093E600E679F9CB7CECD7C2AE924718DEA0BB02AF0A4C5486C9632CA515533FB2ADFFB2FE4E96797AB72A7FFC6E0C15889811BDFEBC43EF8B286E7EE4EDDA70296461411D5476E148C712D38BC765F3CB6FFA0FF9DA1831F371BFFA1E26AB9830CBEFD002BCC021B27DCEE1CF700982D73AE5D0CEA47B2064B34F2F23B0CC4092331E0D3DF94A301C26EB1FFE0FDE09CBAF96670000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Expenses] ON 

INSERT [dbo].[Expenses] ([Id], [VendorId], [Date], [Total]) VALUES (1, 10, CAST(N'2013-07-01 00:00:00.000' AS DateTime), CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[Expenses] ([Id], [VendorId], [Date], [Total]) VALUES (2, 10, CAST(N'2013-08-01 00:00:00.000' AS DateTime), CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[Expenses] ([Id], [VendorId], [Date], [Total]) VALUES (3, 30, CAST(N'2013-07-01 00:00:00.000' AS DateTime), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Expenses] ([Id], [VendorId], [Date], [Total]) VALUES (4, 30, CAST(N'2013-08-01 00:00:00.000' AS DateTime), CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[Expenses] ([Id], [VendorId], [Date], [Total]) VALUES (5, 20, CAST(N'2013-07-01 00:00:00.000' AS DateTime), CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[Expenses] ([Id], [VendorId], [Date], [Total]) VALUES (6, 20, CAST(N'2013-08-01 00:00:00.000' AS DateTime), CAST(180.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Expenses] OFF
INSERT [dbo].[Measures] ([Id], [Measure Name]) VALUES (100, N'liters')
INSERT [dbo].[Measures] ([Id], [Measure Name]) VALUES (200, N'pieces')
INSERT [dbo].[Measures] ([Id], [Measure Name]) VALUES (300, N'kg')
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (1, 20, N'Beer “Zagorka”', 100, CAST(0.86 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (2, 30, N'Vodka “Targovishte”', 100, CAST(7.56 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (3, 20, N'Beer “Beck’s”', 100, CAST(1.03 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (4, 10, N'Chocolate “Milka”', 200, CAST(2.80 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (5, 40, N'Coca-Cola 2l', 100, CAST(2.50 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (6, 50, N'Jim Beam', 100, CAST(20.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (7, 70, N'Kamenitza', 100, CAST(1.25 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (8, 10, N'Nesquik 200g', 300, CAST(4.15 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (9, 10, N'Kit-Kat 90g', 300, CAST(1.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (10, 10, N'Nescafe 250g', 300, CAST(9.50 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (11, 80, N'Cereal with chocolate', 300, CAST(2.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (12, 80, N'Oatmeal cereal', 300, CAST(2.10 AS Decimal(18, 2)), 0)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (13, 80, N'Cereal with apple and walnut', 300, CAST(2.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (14, 90, N'Rodopsko Chudo cheese', 300, CAST(8.60 AS Decimal(18, 2)), 0)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (15, 90, N'Ovcho Narodno cheese', 300, CAST(8.40 AS Decimal(18, 2)), 0)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (16, 180, N'Aroma Vital Exfoliating soap 100g', 200, CAST(0.99 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (17, 170, N'Devin Mineral Water 10l', 100, CAST(3.99 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (18, 170, N'Devin Mineral Water 1.5l', 100, CAST(0.85 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (19, 110, N'JOHNSON’S baby HEAD-TO-TOE wash shampoo 444ml', 200, CAST(3.15 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (20, 110, N'JOHNSON’S baby moisture wash with honey apple shampoo 444ml', 200, CAST(3.15 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (21, 210, N'Costa d`Oro 1l', 200, CAST(13.59 AS Decimal(18, 2)), 0)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (22, 100, N'Yoghurt 2% 500g', 200, CAST(0.85 AS Decimal(18, 2)), 0)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (23, 100, N'Yoghurt 0.1% 450g', 200, CAST(0.90 AS Decimal(18, 2)), 0)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (24, 190, N'Head & Shoulders', 200, CAST(5.35 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (25, 140, N'Happy Day 100% Orange 1l', 200, CAST(2.30 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (26, 10, N'Heinz Tomato Ketchup', 200, CAST(4.80 AS Decimal(18, 2)), 0)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (27, 200, N'NIVEA honey & oil soap', 200, CAST(0.90 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [VendorId], [Product Name], [MeasureId], [Price], [ProductType]) VALUES (28, 180, N'Natural Elements Red Fruits soap 100g', 200, CAST(0.99 AS Decimal(18, 2)), 4)
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (1, 1, 1, 37, CAST(1.00 AS Decimal(18, 2)), CAST(37.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (2, 1, 2, 14, CAST(8.50 AS Decimal(18, 2)), CAST(119.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (3, 2, 3, 40, CAST(1.20 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (4, 2, 1, 65, CAST(0.92 AS Decimal(18, 2)), CAST(59.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (5, 2, 4, 12, CAST(2.90 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (6, 3, 4, 7, CAST(2.85 AS Decimal(18, 2)), CAST(19.95 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (7, 3, 2, 4, CAST(7.80 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (8, 1, 1, 11, CAST(1.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (9, 1, 2, 20, CAST(8.50 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (10, 2, 4, 9, CAST(2.90 AS Decimal(18, 2)), CAST(26.10 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (11, 2, 3, 43, CAST(1.20 AS Decimal(18, 2)), CAST(51.60 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (12, 2, 1, 78, CAST(0.92 AS Decimal(18, 2)), CAST(71.76 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (13, 4, 3, 75, CAST(1.05 AS Decimal(18, 2)), CAST(78.75 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (14, 4, 1, 146, CAST(0.88 AS Decimal(18, 2)), CAST(128.48 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (15, 4, 2, 67, CAST(7.70 AS Decimal(18, 2)), CAST(515.90 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (16, 3, 4, 5, CAST(2.85 AS Decimal(18, 2)), CAST(14.25 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (17, 3, 2, 3, CAST(7.80 AS Decimal(18, 2)), CAST(23.40 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (18, 1, 2, 24, CAST(8.50 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (19, 1, 1, 16, CAST(1.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (20, 2, 3, 18, CAST(1.20 AS Decimal(18, 2)), CAST(21.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (21, 2, 1, 90, CAST(0.92 AS Decimal(18, 2)), CAST(82.80 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (22, 2, 4, 14, CAST(2.90 AS Decimal(18, 2)), CAST(40.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (23, 4, 2, 12, CAST(7.70 AS Decimal(18, 2)), CAST(92.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (24, 4, 3, 60, CAST(1.05 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (25, 4, 1, 230, CAST(0.88 AS Decimal(18, 2)), CAST(202.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (26, 1, 1, 37, CAST(1.00 AS Decimal(18, 2)), CAST(37.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (27, 1, 2, 14, CAST(8.50 AS Decimal(18, 2)), CAST(119.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (28, 2, 3, 40, CAST(1.20 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (29, 2, 1, 65, CAST(0.92 AS Decimal(18, 2)), CAST(59.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (30, 2, 4, 12, CAST(2.90 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (31, 3, 4, 7, CAST(2.85 AS Decimal(18, 2)), CAST(19.95 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (32, 3, 2, 4, CAST(7.80 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (33, 1, 1, 11, CAST(1.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (34, 1, 2, 20, CAST(8.50 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (35, 2, 4, 9, CAST(2.90 AS Decimal(18, 2)), CAST(26.10 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (36, 2, 3, 43, CAST(1.20 AS Decimal(18, 2)), CAST(51.60 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (37, 2, 1, 78, CAST(0.92 AS Decimal(18, 2)), CAST(71.76 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (38, 4, 3, 75, CAST(1.05 AS Decimal(18, 2)), CAST(78.75 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (39, 4, 1, 146, CAST(0.88 AS Decimal(18, 2)), CAST(128.48 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (40, 4, 2, 67, CAST(7.70 AS Decimal(18, 2)), CAST(515.90 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (41, 3, 4, 5, CAST(2.85 AS Decimal(18, 2)), CAST(14.25 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (42, 3, 2, 3, CAST(7.80 AS Decimal(18, 2)), CAST(23.40 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (43, 1, 2, 24, CAST(8.50 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (44, 1, 1, 16, CAST(1.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (45, 2, 3, 18, CAST(1.20 AS Decimal(18, 2)), CAST(21.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (46, 2, 1, 90, CAST(0.92 AS Decimal(18, 2)), CAST(82.80 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (47, 2, 4, 14, CAST(2.90 AS Decimal(18, 2)), CAST(40.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (48, 4, 2, 12, CAST(7.70 AS Decimal(18, 2)), CAST(92.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (49, 4, 3, 60, CAST(1.05 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (50, 4, 1, 230, CAST(0.88 AS Decimal(18, 2)), CAST(202.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (51, 1, 1, 37, CAST(1.00 AS Decimal(18, 2)), CAST(37.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (52, 1, 2, 14, CAST(8.50 AS Decimal(18, 2)), CAST(119.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (53, 2, 3, 40, CAST(1.20 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (54, 2, 1, 65, CAST(0.92 AS Decimal(18, 2)), CAST(59.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (55, 2, 4, 12, CAST(2.90 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (56, 3, 4, 7, CAST(2.85 AS Decimal(18, 2)), CAST(19.95 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (57, 3, 2, 4, CAST(7.80 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (58, 1, 1, 11, CAST(1.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (59, 1, 2, 20, CAST(8.50 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (60, 2, 4, 9, CAST(2.90 AS Decimal(18, 2)), CAST(26.10 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (61, 2, 3, 43, CAST(1.20 AS Decimal(18, 2)), CAST(51.60 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (62, 2, 1, 78, CAST(0.92 AS Decimal(18, 2)), CAST(71.76 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (63, 4, 3, 75, CAST(1.05 AS Decimal(18, 2)), CAST(78.75 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (64, 4, 1, 146, CAST(0.88 AS Decimal(18, 2)), CAST(128.48 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (65, 4, 2, 67, CAST(7.70 AS Decimal(18, 2)), CAST(515.90 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (66, 3, 4, 5, CAST(2.85 AS Decimal(18, 2)), CAST(14.25 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (67, 3, 2, 3, CAST(7.80 AS Decimal(18, 2)), CAST(23.40 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (68, 1, 2, 24, CAST(8.50 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (69, 1, 1, 16, CAST(1.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (70, 2, 3, 18, CAST(1.20 AS Decimal(18, 2)), CAST(21.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (71, 2, 1, 90, CAST(0.92 AS Decimal(18, 2)), CAST(82.80 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (72, 2, 4, 14, CAST(2.90 AS Decimal(18, 2)), CAST(40.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (73, 4, 2, 12, CAST(7.70 AS Decimal(18, 2)), CAST(92.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (74, 4, 3, 60, CAST(1.05 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (75, 4, 1, 230, CAST(0.88 AS Decimal(18, 2)), CAST(202.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (76, 1, 1, 37, CAST(1.00 AS Decimal(18, 2)), CAST(37.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (77, 1, 2, 14, CAST(8.50 AS Decimal(18, 2)), CAST(119.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (78, 2, 3, 40, CAST(1.20 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (79, 2, 1, 65, CAST(0.92 AS Decimal(18, 2)), CAST(59.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (80, 2, 4, 12, CAST(2.90 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (81, 3, 4, 7, CAST(2.85 AS Decimal(18, 2)), CAST(19.95 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (82, 3, 2, 4, CAST(7.80 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (83, 1, 1, 11, CAST(1.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (84, 1, 2, 20, CAST(8.50 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (85, 2, 4, 9, CAST(2.90 AS Decimal(18, 2)), CAST(26.10 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (86, 2, 3, 43, CAST(1.20 AS Decimal(18, 2)), CAST(51.60 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (87, 2, 1, 78, CAST(0.92 AS Decimal(18, 2)), CAST(71.76 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (88, 4, 3, 75, CAST(1.05 AS Decimal(18, 2)), CAST(78.75 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (89, 4, 1, 146, CAST(0.88 AS Decimal(18, 2)), CAST(128.48 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (90, 4, 2, 67, CAST(7.70 AS Decimal(18, 2)), CAST(515.90 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (91, 3, 4, 5, CAST(2.85 AS Decimal(18, 2)), CAST(14.25 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (92, 3, 2, 3, CAST(7.80 AS Decimal(18, 2)), CAST(23.40 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (93, 1, 2, 24, CAST(8.50 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (94, 1, 1, 16, CAST(1.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (95, 2, 3, 18, CAST(1.20 AS Decimal(18, 2)), CAST(21.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (96, 2, 1, 90, CAST(0.92 AS Decimal(18, 2)), CAST(82.80 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (97, 2, 4, 14, CAST(2.90 AS Decimal(18, 2)), CAST(40.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (98, 4, 2, 12, CAST(7.70 AS Decimal(18, 2)), CAST(92.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (99, 4, 3, 60, CAST(1.05 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (100, 4, 1, 230, CAST(0.88 AS Decimal(18, 2)), CAST(202.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (101, 1, 1, 37, CAST(1.00 AS Decimal(18, 2)), CAST(37.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (102, 1, 2, 14, CAST(8.50 AS Decimal(18, 2)), CAST(119.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (103, 2, 3, 40, CAST(1.20 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (104, 2, 1, 65, CAST(0.92 AS Decimal(18, 2)), CAST(59.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (105, 2, 4, 12, CAST(2.90 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (106, 3, 4, 7, CAST(2.85 AS Decimal(18, 2)), CAST(19.95 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (107, 3, 2, 4, CAST(7.80 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (108, 1, 1, 11, CAST(1.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (109, 1, 2, 20, CAST(8.50 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (110, 2, 4, 9, CAST(2.90 AS Decimal(18, 2)), CAST(26.10 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (111, 2, 3, 43, CAST(1.20 AS Decimal(18, 2)), CAST(51.60 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (112, 2, 1, 78, CAST(0.92 AS Decimal(18, 2)), CAST(71.76 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (113, 4, 3, 75, CAST(1.05 AS Decimal(18, 2)), CAST(78.75 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (114, 4, 1, 146, CAST(0.88 AS Decimal(18, 2)), CAST(128.48 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (115, 4, 2, 67, CAST(7.70 AS Decimal(18, 2)), CAST(515.90 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (116, 3, 4, 5, CAST(2.85 AS Decimal(18, 2)), CAST(14.25 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (117, 3, 2, 3, CAST(7.80 AS Decimal(18, 2)), CAST(23.40 AS Decimal(18, 2)), CAST(N'2014-07-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (118, 1, 2, 24, CAST(8.50 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (119, 1, 1, 16, CAST(1.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (120, 2, 3, 18, CAST(1.20 AS Decimal(18, 2)), CAST(21.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (121, 2, 1, 90, CAST(0.92 AS Decimal(18, 2)), CAST(82.80 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (122, 2, 4, 14, CAST(2.90 AS Decimal(18, 2)), CAST(40.60 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (123, 4, 2, 12, CAST(7.70 AS Decimal(18, 2)), CAST(92.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (124, 4, 3, 60, CAST(1.05 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([Id], [StoreId], [ProductId], [Quantity], [SinglePrice], [Sum], [Date]) VALUES (125, 4, 1, 230, CAST(0.88 AS Decimal(18, 2)), CAST(202.40 AS Decimal(18, 2)), CAST(N'2014-07-22 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sales] OFF
SET IDENTITY_INSERT [dbo].[Stores] ON 

INSERT [dbo].[Stores] ([Id], [Name]) VALUES (1, N'Supermarket “Bourgas – Plaza”')
INSERT [dbo].[Stores] ([Id], [Name]) VALUES (2, N'Supermarket “Kaspichan – Center”')
INSERT [dbo].[Stores] ([Id], [Name]) VALUES (3, N'Supermarket “Bay Ivan” – Zmeyovo')
INSERT [dbo].[Stores] ([Id], [Name]) VALUES (4, N'Supermarket “Plovdiv – Stolipinovo”')
SET IDENTITY_INSERT [dbo].[Stores] OFF
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (10, N'Nestle Sofia Corp.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (20, N'Zagorka Corp.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (30, N'Targovishte Bottling Company Ltd.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (40, N'Coca-Cola Company')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (50, N'James B. Beam Distilling Co.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (60, N'John Walker and Sons 2015')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (70, N'Kamenitza Ltd.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (80, N'Prestige 96 Ltd.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (90, N'Mekler Ltd.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (100, N'Vereya Corp.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (110, N'Johnson and Johnson Services, Inc.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (120, N'LOreal Paris, Inc.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (130, N'Rauch Fruchtsafte GmbH and Co OG')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (140, N'H.J. Heinz Co. (HNZ)')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (150, N'SuiCo EOOD')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (160, N'Frito-Lay North America, Inc.')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (170, N'DEVIN JSC')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (180, N'Aroma PLC')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (190, N'The Procter and Gamble Company')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (200, N'Beiersdorf Inc (NIVEA)')
INSERT [dbo].[Vendors] ([Id], [Vendor Name]) VALUES (210, N'Costa dOro S.p.A.')
/****** Object:  Index [IX_VendorId]    Script Date: 3/17/2015 8:19:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_VendorId] ON [dbo].[Expenses]
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureId]    Script Date: 3/17/2015 8:19:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_MeasureId] ON [dbo].[Products]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorId]    Script Date: 3/17/2015 8:19:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_VendorId] ON [dbo].[Products]
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 3/17/2015 8:19:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[Sales]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StoreId]    Script Date: 3/17/2015 8:19:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_StoreId] ON [dbo].[Sales]
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_Id]    Script Date: 3/17/2015 8:19:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_Id] ON [dbo].[StoreProducts]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Store_Id]    Script Date: 3/17/2015 8:19:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_Store_Id] ON [dbo].[StoreProducts]
(
	[Store_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Expenses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Expenses_dbo.Vendors_VendorId] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Expenses] CHECK CONSTRAINT [FK_dbo.Expenses_dbo.Vendors_VendorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Measures_MeasureId] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[Measures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Measures_MeasureId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Vendors_VendorId] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Vendors_VendorId]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sales_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_dbo.Sales_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sales_dbo.Stores_StoreId] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Stores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_dbo.Sales_dbo.Stores_StoreId]
GO
ALTER TABLE [dbo].[StoreProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StoreProducts_dbo.Products_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StoreProducts] CHECK CONSTRAINT [FK_dbo.StoreProducts_dbo.Products_Product_Id]
GO
ALTER TABLE [dbo].[StoreProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StoreProducts_dbo.Stores_Store_Id] FOREIGN KEY([Store_Id])
REFERENCES [dbo].[Stores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StoreProducts] CHECK CONSTRAINT [FK_dbo.StoreProducts_dbo.Stores_Store_Id]
GO
USE [master]
GO
ALTER DATABASE [SupermarketSystem] SET  READ_WRITE 
GO
