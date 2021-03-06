USE [master]
GO
/****** Object:  Database [EasyPos]    Script Date: 18/03/2022 10:51:15 م ******/
CREATE DATABASE [EasyPos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EasyPos', FILENAME = N'E:\workss\Easy_Sales\db\EasyPos.mdf' , SIZE = 8192KB , MAXSIZE = 1024000KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EasyPos_log', FILENAME = N'E:\workss\Easy_Sales\db\EasyPos_log.ldf' , SIZE = 4288KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EasyPos] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EasyPos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EasyPos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EasyPos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EasyPos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EasyPos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EasyPos] SET ARITHABORT OFF 
GO
ALTER DATABASE [EasyPos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EasyPos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EasyPos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EasyPos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EasyPos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EasyPos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EasyPos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EasyPos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EasyPos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EasyPos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EasyPos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EasyPos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EasyPos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EasyPos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EasyPos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EasyPos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EasyPos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EasyPos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EasyPos] SET  MULTI_USER 
GO
ALTER DATABASE [EasyPos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EasyPos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EasyPos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EasyPos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EasyPos] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EasyPos', N'ON'
GO
USE [EasyPos]
GO
/****** Object:  Table [dbo].[asol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Asl] [nvarchar](150) NULL,
	[Value] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_asol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Balance_Adjutment]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Balance_Adjutment](
	[ID_Product] [int] NULL,
	[Quantity] [decimal](18, 2) NULL,
	[date] [datetime] NULL,
	[note] [nvarchar](400) NULL,
	[Sales_man] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](150) NULL,
	[show] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID_Cust] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Addres] [nvarchar](100) NULL,
	[Phone] [varchar](20) NULL,
 CONSTRAINT [PK__Customer__5697AEEF971353D0] PRIMARY KEY CLUSTERED 
(
	[ID_Cust] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_TotalMoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_TotalMoney](
	[Id_Cust] [int] NULL,
	[Total_Balance] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerStatmentAccount]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerStatmentAccount](
	[Id_AccountStatment] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cast] [int] NULL,
	[Da2n] [decimal](18, 2) NULL,
	[MADEN] [decimal](18, 2) NULL,
	[ELBYAN] [nvarchar](150) NULL,
	[DATA] [datetime] NULL,
	[BALANCE] [decimal](18, 2) NULL,
	[SalesMan] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustomerStatmentAccount] PRIMARY KEY CLUSTERED 
(
	[Id_AccountStatment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EhalaktAsol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EhalaktAsol](
	[ID_Ehlak] [int] IDENTITY(1,1) NOT NULL,
	[Asl_ID] [int] NULL,
	[Ehalak_Value] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_EhalaktAsol] PRIMARY KEY CLUSTERED 
(
	[ID_Ehlak] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemsFirstTerm]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsFirstTerm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Prod] [int] NULL,
	[Name_Prod] [nvarchar](150) NULL,
	[Id_Category] [int] NULL,
	[Quantity] [decimal](18, 1) NULL,
	[Sales_price] [decimal](18, 2) NULL,
	[Buy_Price] [decimal](18, 2) NULL,
	[incomeDate] [date] NULL,
 CONSTRAINT [PK_Items first term] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID_User] [nvarchar](50) NULL,
	[LogIn] [varchar](50) NULL,
	[ID_Login] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID_Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogOut]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogOut](
	[ID_Login] [int] NULL,
	[ID_User] [nvarchar](50) NULL,
	[LogOut] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Masrofat]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Masrofat](
	[Id_CountPk] [int] IDENTITY(1,1) NOT NULL,
	[ID_Masrof] [int] NOT NULL,
	[amount] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
	[descrpsion] [nvarchar](100) NULL,
	[Id_Stock] [int] NULL,
	[Sales_man] [nvarchar](100) NULL,
 CONSTRAINT [PK_Masrofat] PRIMARY KEY CLUSTERED 
(
	[Id_CountPk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mastrofat_Category]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mastrofat_Category](
	[Id_MAsrof] [int] IDENTITY(1,1) NOT NULL,
	[Mastof_Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Mastrofat_Category] PRIMARY KEY CLUSTERED 
(
	[Id_MAsrof] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[money]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[money](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Money] [decimal](18, 2) NULL,
 CONSTRAINT [PK_money] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoveProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoveProduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Product] [int] NULL,
	[InComeQty] [int] NULL,
	[InComePrice] [decimal](18, 2) NULL,
	[OutComeQty] [int] NULL,
	[OutComePrice] [decimal](18, 2) NULL,
	[lastQty] [decimal](18, 2) NULL,
	[LastIncomePrice] [decimal](18, 2) NULL,
	[LastOutComePrice] [decimal](18, 2) NULL,
	[Bayan] [nvarchar](500) NULL,
	[MoveDate] [datetime] NULL,
	[SalesMan] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_MoveProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoveUser]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoveUser](
	[id_MoveUser] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[ScreenName] [nvarchar](50) NULL,
	[TypeMove] [nvarchar](500) NULL,
	[MoveDate] [datetime] NULL,
 CONSTRAINT [PK_MoveUser] PRIMARY KEY CLUSTERED 
(
	[id_MoveUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Openingbalance]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Openingbalance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Cust] [int] NULL,
	[date] [date] NULL,
	[Moneydiscount] [decimal](18, 2) NULL,
	[Moneyadd] [decimal](18, 2) NULL,
	[bayan] [nvarchar](100) NULL,
	[Type] [nvarchar](100) NULL,
	[id_Supp] [int] NULL,
 CONSTRAINT [PK_Openingbalance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID_Order] [int] NULL,
	[ID_Prod] [int] NULL,
	[Prod_Name] [nvarchar](50) NULL,
	[Quntity] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderMony]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderMony](
	[ID_Order] [int] NULL,
	[rent] [decimal](18, 2) NULL,
	[ID_Cast] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderReturn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Id_Order] [int] NULL,
	[Id_Cust] [int] NULL,
	[ID_Prou] [int] NULL,
	[quantity_Return] [decimal](18, 2) NULL,
	[date_Return] [datetime] NULL,
	[Price] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[sales_Man] [nvarchar](50) NULL,
 CONSTRAINT [PK__OrderRet__3214EC27E4FE979B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID_Order] [int] IDENTITY(1,1) NOT NULL,
	[Date_Order] [datetime] NULL,
	[ID_Cust] [int] NULL,
	[Discraption] [nvarchar](250) NULL,
	[SalesMan] [nvarchar](50) NULL,
	[Total_Invoic] [decimal](18, 2) NULL,
	[pay] [decimal](18, 2) NULL,
	[rent] [decimal](18, 2) NULL,
	[Id_Stock] [int] NULL,
	[AddService] [decimal](18, 2) NULL,
	[AddNa2l] [decimal](18, 2) NULL,
	[total_Discount] [decimal](18, 2) NULL,
	[total_AfterDisc] [decimal](18, 2) NULL,
	[Show] [nvarchar](50) NULL,
	[Update_User] [nvarchar](50) NULL,
	[Update_Date] [datetime] NULL,
 CONSTRAINT [PK__Orders__EC9FA955CF3D420A] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayCustomer](
	[pay] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
	[ID_Cast] [int] NULL,
	[Sale_Man] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaySuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaySuppliers](
	[id_suppliers] [int] NULL,
	[Pay] [decimal](18, 2) NULL,
	[date] [datetime] NULL,
	[Sales_Man] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_BuyPrice]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_BuyPrice](
	[ID_Product] [int] NULL,
	[Buy_price] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Unit]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Unit](
	[Id_Product] [int] NOT NULL,
	[Id_LargeUnit] [int] NULL,
	[LargeUnitName] [nvarchar](50) NULL,
	[Price_Unit] [decimal](18, 2) NULL,
	[numInLargeUnit] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proudects]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proudects](
	[ID_Prod] [int] IDENTITY(1,1) NOT NULL,
	[Name_Prod] [nvarchar](150) NULL,
	[Id_Category] [int] NOT NULL,
	[Quantity] [decimal](18, 1) NULL,
	[Sales_price] [decimal](18, 2) NULL,
	[Buy_Price] [decimal](18, 2) NULL,
	[minimum] [decimal](18, 1) NULL,
	[Color] [nvarchar](50) NULL,
	[Barcode] [nvarchar](max) NULL,
	[Image] [image] NULL,
	[show] [nvarchar](50) NULL,
 CONSTRAINT [PK__proudect__B247ED70B6D9160C] PRIMARY KEY CLUSTERED 
(
	[ID_Prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Random_Barcode]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Random_Barcode](
	[BarCode] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remove_ProductINOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remove_ProductINOrder](
	[ID_Remove] [int] IDENTITY(1,1) NOT NULL,
	[ID_Order] [int] NULL,
	[ID_Prod] [int] NULL,
	[quantity] [decimal](18, 2) NULL,
	[prise] [decimal](18, 2) NULL,
	[amount] [decimal](18, 2) NULL,
	[userName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Remove_ProductINOrder] PRIMARY KEY CLUSTERED 
(
	[ID_Remove] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnOrderUnUsed]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnOrderUnUsed](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Order] [int] NULL,
	[ID_Prou] [int] NULL,
	[quantity] [int] NULL,
	[date] [datetime] NULL,
	[Price] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ReturnOrderUnUsed] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnSuppliersUnUsed]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnSuppliersUnUsed](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Information] [int] NULL,
	[ID_Prou] [int] NULL,
	[quantity] [int] NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_ReturnSuppliersUnUsed] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanad]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanad](
	[ID_Sanad] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Money] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
	[elbayan] [nvarchar](150) NULL,
 CONSTRAINT [PK_Sanad] PRIMARY KEY CLUSTERED 
(
	[ID_Sanad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting_PrintOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting_PrintOrder](
	[Name_Company] [nvarchar](200) NULL,
	[Addres] [nvarchar](200) NULL,
	[Bottom_Note] [nvarchar](250) NULL,
	[Phone1] [nvarchar](50) NULL,
	[Phone2] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock_Pull]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Pull](
	[pull_ID] [int] IDENTITY(1,1) NOT NULL,
	[id_Treasury] [int] NOT NULL,
	[Money] [real] NULL,
	[Date] [datetime] NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Stock_Pull] PRIMARY KEY CLUSTERED 
(
	[pull_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock_tansfair]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_tansfair](
	[transfair_ID] [int] IDENTITY(1,1) NOT NULL,
	[Money] [real] NULL,
	[Date] [datetime] NULL,
	[From_] [nvarchar](50) NULL,
	[To_] [nvarchar](50) NULL,
	[Name] [nvarchar](75) NULL,
	[Reason] [nvarchar](150) NULL,
 CONSTRAINT [PK_Stock_tansfair] PRIMARY KEY CLUSTERED 
(
	[transfair_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockMove]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockMove](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Prise] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
	[Type] [nvarchar](max) NULL,
	[Bean] [nvarchar](max) NULL,
	[IDOrder] [int] NULL,
	[StockID] [int] NULL,
	[userName] [nvarchar](100) NULL,
	[moveStock] [nvarchar](50) NULL,
 CONSTRAINT [PK_StockMove] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Store_Id] [int] IDENTITY(1,1) NOT NULL,
	[Store_Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Store_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoreValue]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreValue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoreValue] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_StoreValue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Totalmoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Totalmoney](
	[Id_Supplier] [int] NULL,
	[Total_Balance] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Sup_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[phone] [varchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Sup_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers_Details]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers_Details](
	[ID] [int] NULL,
	[ID_Prod] [int] NULL,
	[Quntity] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[Prod_Name] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suppliersInformation]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suppliersInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[sup_id] [int] NULL,
	[date] [datetime] NULL,
	[note] [nvarchar](350) NULL,
	[SalesMan] [nvarchar](50) NULL,
	[Total_Invoic] [decimal](18, 2) NULL,
	[pay] [decimal](18, 2) NULL,
	[rent] [decimal](18, 2) NULL,
	[id_stock] [int] NULL,
	[totalDiscount] [decimal](18, 2) NULL,
	[totalAfterDicscount] [decimal](18, 2) NULL,
	[show] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUser] [nvarchar](50) NULL,
 CONSTRAINT [PK_suppliersInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuppliersMony]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuppliersMony](
	[ID_Information] [int] NULL,
	[ID_Supp] [int] NULL,
	[rent] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuppliersReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuppliersReturn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Information] [int] NULL,
	[Id_Suppliers] [int] NULL,
	[ID_Prou] [int] NULL,
	[Return_Quantity] [decimal](18, 2) NULL,
	[date_Return] [datetime] NULL,
	[Price] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Sales_man] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReturnSuppliers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierStatmentAccount]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierStatmentAccount](
	[ID_Statment] [int] IDENTITY(1,1) NOT NULL,
	[Id_Supplier] [int] NULL,
	[Da2n] [decimal](18, 2) NULL,
	[maden] [decimal](18, 2) NULL,
	[elbyan] [nvarchar](150) NULL,
	[date] [datetime] NULL,
	[Balance] [decimal](18, 2) NULL,
 CONSTRAINT [PK_SupplierStatmentAccount] PRIMARY KEY CLUSTERED 
(
	[ID_Statment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transfair_ProductDetails]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transfair_ProductDetails](
	[Id_Transfair] [int] NULL,
	[Id_Product] [int] NULL,
	[unit_name] [nvarchar](50) NULL,
	[Quantity] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransfairProductInformation]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransfairProductInformation](
	[Id_Transfair] [int] IDENTITY(1,1) NOT NULL,
	[Id_StoreFrom] [int] NULL,
	[From_StoreNAme] [nvarchar](50) NULL,
	[Id_StoreTo] [int] NULL,
	[To_StoreNAme] [nvarchar](50) NULL,
	[Sales_man] [nvarchar](50) NULL,
	[date_Transfair] [datetime] NULL,
	[note] [nvarchar](250) NULL,
 CONSTRAINT [PK_TransfairProductInformation] PRIMARY KEY CLUSTERED 
(
	[Id_Transfair] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Treasury]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treasury](
	[id_Treasury] [int] NOT NULL,
	[Treasury_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Treasury] PRIMARY KEY CLUSTERED 
(
	[id_Treasury] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Treasury_Data]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treasury_Data](
	[id_Treasury] [int] NOT NULL,
	[Money] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Treasury_Insert]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treasury_Insert](
	[Insert_ID] [int] IDENTITY(1,1) NOT NULL,
	[id_Treasury] [int] NOT NULL,
	[Money] [real] NULL,
	[Date] [datetime] NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Treasury_Insert] PRIMARY KEY CLUSTERED 
(
	[Insert_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Unit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Unit_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_File]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_File](
	[User_Name] [nvarchar](50) NULL,
	[BackUp] [int] NULL,
	[Restore] [int] NULL,
	[Setting] [int] NULL,
	[Managment_User] [int] NULL,
	[Managment_Employee] [int] NULL,
	[DeleteAllData] [int] NULL,
	[MoveUsers] [int] NULL,
	[UserSales] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Order]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Order](
	[User_Name] [nvarchar](50) NULL,
	[Add_Order] [int] NULL,
	[ReturnOrder] [int] NULL,
	[ManagmentOrder] [int] NULL,
	[ReportReturnOrder] [int] NULL,
	[Report_Reb7Order] [int] NULL,
	[updateOrder] [int] NULL,
	[Return_AllProduct] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Product]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Product](
	[User_Name] [nvarchar](50) NULL,
	[Add_Prod] [int] NULL,
	[Report_minItem] [int] NULL,
	[check_Balance] [int] NULL,
	[Report_checkBalance] [int] NULL,
	[Gard_Products] [int] NULL,
	[harkt_Seeling] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Stock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Stock](
	[User_Name] [nvarchar](50) NULL,
	[Add_Stock] [int] NULL,
	[Add_Masrof] [int] NULL,
	[Transfer_Stock] [int] NULL,
	[Ms7obatSh5sya] [int] NULL,
	[eradat] [int] NULL,
	[elsol] [int] NULL,
	[EhlakatElasol] [int] NULL,
	[Report_Money] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Suppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Suppliers](
	[User_Name] [nvarchar](50) NULL,
	[Add_Suppliers] [int] NULL,
	[Report_DataSuppliers] [int] NULL,
	[Check_DiscountSuppliers] [int] NULL,
	[Pay_Suppliers] [int] NULL,
	[Account_Suppliers] [int] NULL,
	[Depit_Suppliers] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[ID] [nvarchar](50) NOT NULL,
	[PASS] [varchar](50) NOT NULL,
	[FullName] [nvarchar](100) NULL,
 CONSTRAINT [PK__users__3214EC276E4A1458] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_Clients]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Clients](
	[User_Name] [nvarchar](50) NULL,
	[add_Client] [int] NULL,
	[check_Discount] [int] NULL,
	[client_Pay] [int] NULL,
	[Depit_Client] [int] NULL,
	[Account_Client] [int] NULL,
	[Sarf_Pay] [int] NULL,
	[Client_Data] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_Purshise]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Purshise](
	[User_Name] [nvarchar](50) NULL,
	[Add_OrderSuppliers] [int] NULL,
	[ReturnSuppliers] [int] NULL,
	[ManagmentSuppliers] [int] NULL,
	[Report_ReturnSuppliers] [int] NULL,
	[Report_ReturnAllProduct] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MoveProduct] ADD  CONSTRAINT [DF_MoveProduct_InComeQty]  DEFAULT ((0)) FOR [InComeQty]
GO
ALTER TABLE [dbo].[MoveProduct] ADD  CONSTRAINT [DF_MoveProduct_InComePrice]  DEFAULT ((0)) FOR [InComePrice]
GO
ALTER TABLE [dbo].[MoveProduct] ADD  CONSTRAINT [DF_MoveProduct_OutComeQty]  DEFAULT ((0)) FOR [OutComeQty]
GO
ALTER TABLE [dbo].[MoveProduct] ADD  CONSTRAINT [DF_MoveProduct_OutComePrice]  DEFAULT ((0)) FOR [OutComePrice]
GO
ALTER TABLE [dbo].[MoveProduct] ADD  CONSTRAINT [DF_MoveProduct_lastQty]  DEFAULT ((0)) FOR [lastQty]
GO
ALTER TABLE [dbo].[MoveProduct] ADD  CONSTRAINT [DF_MoveProduct_LastIncomePrice]  DEFAULT ((0)) FOR [LastIncomePrice]
GO
ALTER TABLE [dbo].[MoveProduct] ADD  CONSTRAINT [DF_MoveProduct_LastOutComePrice]  DEFAULT ((0)) FOR [LastOutComePrice]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Discraption]  DEFAULT (N'.') FOR [Discraption]
GO
ALTER TABLE [dbo].[proudects] ADD  CONSTRAINT [DF_proudects_Sales_price]  DEFAULT ((0)) FOR [Sales_price]
GO
ALTER TABLE [dbo].[proudects] ADD  CONSTRAINT [DF_proudects_Buy_Price]  DEFAULT ((0)) FOR [Buy_Price]
GO
ALTER TABLE [dbo].[proudects] ADD  CONSTRAINT [DF_proudects_minimum]  DEFAULT ((0)) FOR [minimum]
GO
ALTER TABLE [dbo].[proudects] ADD  CONSTRAINT [DF_proudects_Barcode]  DEFAULT ((0)) FOR [Barcode]
GO
ALTER TABLE [dbo].[Stock_Pull] ADD  CONSTRAINT [DF_Stock_Pull_Name]  DEFAULT (N'.') FOR [Name]
GO
ALTER TABLE [dbo].[Stock_Pull] ADD  CONSTRAINT [DF_Stock_Pull_Type]  DEFAULT (N'.') FOR [Type]
GO
ALTER TABLE [dbo].[Stock_Pull] ADD  CONSTRAINT [DF_Stock_Pull_Reason]  DEFAULT (N'.') FOR [Reason]
GO
ALTER TABLE [dbo].[Stock_tansfair] ADD  CONSTRAINT [DF_Stock_tansfair_Name]  DEFAULT (N'.') FOR [Name]
GO
ALTER TABLE [dbo].[Stock_tansfair] ADD  CONSTRAINT [DF_Stock_tansfair_Reason]  DEFAULT (N'.') FOR [Reason]
GO
ALTER TABLE [dbo].[TransfairProductInformation] ADD  CONSTRAINT [DF_TransfairProductInformation_note]  DEFAULT (N'.') FOR [note]
GO
ALTER TABLE [dbo].[Treasury_Insert] ADD  CONSTRAINT [DF_Treasury_Insert_Name]  DEFAULT (N'.') FOR [Name]
GO
ALTER TABLE [dbo].[Treasury_Insert] ADD  CONSTRAINT [DF_Treasury_Insert_Type]  DEFAULT (N'.') FOR [Type]
GO
ALTER TABLE [dbo].[Treasury_Insert] ADD  CONSTRAINT [DF_Treasury_Insert_Reason]  DEFAULT (N'.') FOR [Reason]
GO
ALTER TABLE [dbo].[Balance_Adjutment]  WITH CHECK ADD  CONSTRAINT [FK_Balance_Adjutment_proudects] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[proudects] ([ID_Prod])
GO
ALTER TABLE [dbo].[Balance_Adjutment] CHECK CONSTRAINT [FK_Balance_Adjutment_proudects]
GO
ALTER TABLE [dbo].[Customer_TotalMoney]  WITH CHECK ADD  CONSTRAINT [FK_Customer_TotalMoney_Customer] FOREIGN KEY([Id_Cust])
REFERENCES [dbo].[Customer] ([ID_Cust])
GO
ALTER TABLE [dbo].[Customer_TotalMoney] CHECK CONSTRAINT [FK_Customer_TotalMoney_Customer]
GO
ALTER TABLE [dbo].[CustomerStatmentAccount]  WITH CHECK ADD  CONSTRAINT [FK_OrderMony_Customer] FOREIGN KEY([ID_Cast])
REFERENCES [dbo].[Customer] ([ID_Cust])
GO
ALTER TABLE [dbo].[CustomerStatmentAccount] CHECK CONSTRAINT [FK_OrderMony_Customer]
GO
ALTER TABLE [dbo].[EhalaktAsol]  WITH CHECK ADD  CONSTRAINT [FK_EhalaktAsol_asol] FOREIGN KEY([Asl_ID])
REFERENCES [dbo].[asol] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EhalaktAsol] CHECK CONSTRAINT [FK_EhalaktAsol_asol]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_users] FOREIGN KEY([ID_User])
REFERENCES [dbo].[users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_users]
GO
ALTER TABLE [dbo].[LogOut]  WITH CHECK ADD  CONSTRAINT [FK_LogOut_Login] FOREIGN KEY([ID_Login])
REFERENCES [dbo].[Login] ([ID_Login])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LogOut] CHECK CONSTRAINT [FK_LogOut_Login]
GO
ALTER TABLE [dbo].[LogOut]  WITH CHECK ADD  CONSTRAINT [FK_LogOut_users] FOREIGN KEY([ID_User])
REFERENCES [dbo].[users] ([ID])
GO
ALTER TABLE [dbo].[LogOut] CHECK CONSTRAINT [FK_LogOut_users]
GO
ALTER TABLE [dbo].[Masrofat]  WITH CHECK ADD  CONSTRAINT [FK_Masrofat_Mastrofat_Category1] FOREIGN KEY([ID_Masrof])
REFERENCES [dbo].[Mastrofat_Category] ([Id_MAsrof])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Masrofat] CHECK CONSTRAINT [FK_Masrofat_Mastrofat_Category1]
GO
ALTER TABLE [dbo].[MoveProduct]  WITH CHECK ADD  CONSTRAINT [FK_MoveProduct_proudects] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[proudects] ([ID_Prod])
GO
ALTER TABLE [dbo].[MoveProduct] CHECK CONSTRAINT [FK_MoveProduct_proudects]
GO
ALTER TABLE [dbo].[Openingbalance]  WITH CHECK ADD  CONSTRAINT [FK_Openingbalance_Customer] FOREIGN KEY([id_Cust])
REFERENCES [dbo].[Customer] ([ID_Cust])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Openingbalance] CHECK CONSTRAINT [FK_Openingbalance_Customer]
GO
ALTER TABLE [dbo].[Openingbalance]  WITH CHECK ADD  CONSTRAINT [FK_Openingbalance_Suppliers] FOREIGN KEY([id_Supp])
REFERENCES [dbo].[Suppliers] ([Sup_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Openingbalance] CHECK CONSTRAINT [FK_Openingbalance_Suppliers]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([ID_Order])
REFERENCES [dbo].[Orders] ([ID_Order])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_proudects] FOREIGN KEY([ID_Prod])
REFERENCES [dbo].[proudects] ([ID_Prod])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_proudects]
GO
ALTER TABLE [dbo].[OrderReturn]  WITH CHECK ADD  CONSTRAINT [FK_OrderReturn_Customer] FOREIGN KEY([Id_Cust])
REFERENCES [dbo].[Customer] ([ID_Cust])
GO
ALTER TABLE [dbo].[OrderReturn] CHECK CONSTRAINT [FK_OrderReturn_Customer]
GO
ALTER TABLE [dbo].[OrderReturn]  WITH CHECK ADD  CONSTRAINT [FK_OrderReturn_Orders] FOREIGN KEY([Id_Order])
REFERENCES [dbo].[Orders] ([ID_Order])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderReturn] CHECK CONSTRAINT [FK_OrderReturn_Orders]
GO
ALTER TABLE [dbo].[OrderReturn]  WITH CHECK ADD  CONSTRAINT [FK_OrderReturn_proudects] FOREIGN KEY([ID_Prou])
REFERENCES [dbo].[proudects] ([ID_Prod])
GO
ALTER TABLE [dbo].[OrderReturn] CHECK CONSTRAINT [FK_OrderReturn_proudects]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([ID_Cust])
REFERENCES [dbo].[Customer] ([ID_Cust])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
ALTER TABLE [dbo].[PayCustomer]  WITH CHECK ADD  CONSTRAINT [FK_PayCustomer_Customer1] FOREIGN KEY([ID_Cast])
REFERENCES [dbo].[Customer] ([ID_Cust])
GO
ALTER TABLE [dbo].[PayCustomer] CHECK CONSTRAINT [FK_PayCustomer_Customer1]
GO
ALTER TABLE [dbo].[PaySuppliers]  WITH CHECK ADD  CONSTRAINT [FK_PaySuppliers_Suppliers1] FOREIGN KEY([id_suppliers])
REFERENCES [dbo].[Suppliers] ([Sup_id])
GO
ALTER TABLE [dbo].[PaySuppliers] CHECK CONSTRAINT [FK_PaySuppliers_Suppliers1]
GO
ALTER TABLE [dbo].[Product_BuyPrice]  WITH CHECK ADD  CONSTRAINT [FK_Product_BuyPrice_proudects] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[proudects] ([ID_Prod])
GO
ALTER TABLE [dbo].[Product_BuyPrice] CHECK CONSTRAINT [FK_Product_BuyPrice_proudects]
GO
ALTER TABLE [dbo].[proudects]  WITH CHECK ADD  CONSTRAINT [FK_proudects_Category] FOREIGN KEY([Id_Category])
REFERENCES [dbo].[Category] ([Category_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[proudects] CHECK CONSTRAINT [FK_proudects_Category]
GO
ALTER TABLE [dbo].[Stock_Pull]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Pull_Treasury] FOREIGN KEY([id_Treasury])
REFERENCES [dbo].[Treasury] ([id_Treasury])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stock_Pull] CHECK CONSTRAINT [FK_Stock_Pull_Treasury]
GO
ALTER TABLE [dbo].[StockMove]  WITH CHECK ADD  CONSTRAINT [FK_StockMove_Treasury] FOREIGN KEY([StockID])
REFERENCES [dbo].[Treasury] ([id_Treasury])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[StockMove] CHECK CONSTRAINT [FK_StockMove_Treasury]
GO
ALTER TABLE [dbo].[Supplier_Totalmoney]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Totalmoney_Suppliers] FOREIGN KEY([Id_Supplier])
REFERENCES [dbo].[Suppliers] ([Sup_id])
GO
ALTER TABLE [dbo].[Supplier_Totalmoney] CHECK CONSTRAINT [FK_Supplier_Totalmoney_Suppliers]
GO
ALTER TABLE [dbo].[Suppliers_Details]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Details_proudects] FOREIGN KEY([ID_Prod])
REFERENCES [dbo].[proudects] ([ID_Prod])
GO
ALTER TABLE [dbo].[Suppliers_Details] CHECK CONSTRAINT [FK_Suppliers_Details_proudects]
GO
ALTER TABLE [dbo].[Suppliers_Details]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Details_suppliersInformation] FOREIGN KEY([ID])
REFERENCES [dbo].[suppliersInformation] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Suppliers_Details] CHECK CONSTRAINT [FK_Suppliers_Details_suppliersInformation]
GO
ALTER TABLE [dbo].[suppliersInformation]  WITH CHECK ADD  CONSTRAINT [FK_suppliersInformation_Suppliers] FOREIGN KEY([sup_id])
REFERENCES [dbo].[Suppliers] ([Sup_id])
GO
ALTER TABLE [dbo].[suppliersInformation] CHECK CONSTRAINT [FK_suppliersInformation_Suppliers]
GO
ALTER TABLE [dbo].[suppliersInformation]  WITH CHECK ADD  CONSTRAINT [FK_suppliersInformation_Treasury] FOREIGN KEY([id_stock])
REFERENCES [dbo].[Treasury] ([id_Treasury])
GO
ALTER TABLE [dbo].[suppliersInformation] CHECK CONSTRAINT [FK_suppliersInformation_Treasury]
GO
ALTER TABLE [dbo].[SuppliersMony]  WITH CHECK ADD  CONSTRAINT [FK_SuppliersMony_Suppliers] FOREIGN KEY([ID_Supp])
REFERENCES [dbo].[Suppliers] ([Sup_id])
GO
ALTER TABLE [dbo].[SuppliersMony] CHECK CONSTRAINT [FK_SuppliersMony_Suppliers]
GO
ALTER TABLE [dbo].[SuppliersMony]  WITH CHECK ADD  CONSTRAINT [FK_SuppliersMony_suppliersInformation] FOREIGN KEY([ID_Information])
REFERENCES [dbo].[suppliersInformation] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SuppliersMony] CHECK CONSTRAINT [FK_SuppliersMony_suppliersInformation]
GO
ALTER TABLE [dbo].[SuppliersReturn]  WITH CHECK ADD  CONSTRAINT [FK_ReturnSuppliers_proudects] FOREIGN KEY([ID_Prou])
REFERENCES [dbo].[proudects] ([ID_Prod])
GO
ALTER TABLE [dbo].[SuppliersReturn] CHECK CONSTRAINT [FK_ReturnSuppliers_proudects]
GO
ALTER TABLE [dbo].[SuppliersReturn]  WITH CHECK ADD  CONSTRAINT [FK_ReturnSuppliers_suppliersInformation] FOREIGN KEY([ID_Information])
REFERENCES [dbo].[suppliersInformation] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SuppliersReturn] CHECK CONSTRAINT [FK_ReturnSuppliers_suppliersInformation]
GO
ALTER TABLE [dbo].[SuppliersReturn]  WITH CHECK ADD  CONSTRAINT [FK_SuppliersReturn_Suppliers] FOREIGN KEY([Id_Suppliers])
REFERENCES [dbo].[Suppliers] ([Sup_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SuppliersReturn] CHECK CONSTRAINT [FK_SuppliersReturn_Suppliers]
GO
ALTER TABLE [dbo].[SupplierStatmentAccount]  WITH CHECK ADD  CONSTRAINT [FK_SupplierStatmentAccount_Suppliers] FOREIGN KEY([Id_Supplier])
REFERENCES [dbo].[Suppliers] ([Sup_id])
GO
ALTER TABLE [dbo].[SupplierStatmentAccount] CHECK CONSTRAINT [FK_SupplierStatmentAccount_Suppliers]
GO
ALTER TABLE [dbo].[Transfair_ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_Transfair_ProductDetails_proudects] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[proudects] ([ID_Prod])
GO
ALTER TABLE [dbo].[Transfair_ProductDetails] CHECK CONSTRAINT [FK_Transfair_ProductDetails_proudects]
GO
ALTER TABLE [dbo].[Transfair_ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_Transfair_ProductDetails_TransfairProductInformation] FOREIGN KEY([Id_Transfair])
REFERENCES [dbo].[TransfairProductInformation] ([Id_Transfair])
GO
ALTER TABLE [dbo].[Transfair_ProductDetails] CHECK CONSTRAINT [FK_Transfair_ProductDetails_TransfairProductInformation]
GO
ALTER TABLE [dbo].[TransfairProductInformation]  WITH CHECK ADD  CONSTRAINT [FK_TransfairProductInformation_Store] FOREIGN KEY([Id_StoreFrom])
REFERENCES [dbo].[Store] ([Store_Id])
GO
ALTER TABLE [dbo].[TransfairProductInformation] CHECK CONSTRAINT [FK_TransfairProductInformation_Store]
GO
ALTER TABLE [dbo].[Treasury_Data]  WITH CHECK ADD  CONSTRAINT [FK_Treasury_Data_Treasury] FOREIGN KEY([id_Treasury])
REFERENCES [dbo].[Treasury] ([id_Treasury])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Treasury_Data] CHECK CONSTRAINT [FK_Treasury_Data_Treasury]
GO
ALTER TABLE [dbo].[Treasury_Insert]  WITH CHECK ADD  CONSTRAINT [FK_Treasury_Insert_Treasury] FOREIGN KEY([id_Treasury])
REFERENCES [dbo].[Treasury] ([id_Treasury])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Treasury_Insert] CHECK CONSTRAINT [FK_Treasury_Insert_Treasury]
GO
/****** Object:  StoredProcedure [dbo].[Add_BalanceAdjustment]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Add_BalanceAdjustment]
@ID_Product	int	,
@Quantity	decimal(18, 2)	,
@date	datetime,
@note	nvarchar(400)	,
@Sales_man	nvarchar(50),
@Status	nvarchar(50)	
as 
insert into Balance_Adjutment 
(ID_Product,Quantity,date,note,Sales_man,Status)
values
(@ID_Product,@Quantity,@date,@note,@Sales_man,@Status)
GO
/****** Object:  StoredProcedure [dbo].[Add_Category]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Add_Category] 
@Category_Name	nvarchar(150)	
as 
insert into Category
(Category_Name,show)
values (@Category_Name,'true')
GO
/****** Object:  StoredProcedure [dbo].[Add_CustomerBalanceAccount]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_CustomerBalanceAccount]
@Id_Cust int 
as 
insert into Customer_TotalMoney
(Id_Cust,Total_Balance)
values (@Id_Cust, 0)
GO
/****** Object:  StoredProcedure [dbo].[Add_CustomerStatmentAccount]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Add_CustomerStatmentAccount]
@ID_Cast	int	,
@Da2n	decimal(18, 2)	,
@MADEN	decimal(18, 2)	,
@ELBYAN	nvarchar(150)	,
@DATA	datetime	,
@BALANCE	decimal(18, 2)	,
@SalesMan  nvarchar(50)
as 
insert into CustomerStatmentAccount
(ID_Cast,Da2n,MADEN,ELBYAN,DATA,BALANCE,SalesMan)
values 
(@ID_Cast,@Da2n,@MADEN,@ELBYAN,@DATA,@BALANCE,@SalesMan)
GO
/****** Object:  StoredProcedure [dbo].[add_insertStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[add_insertStock]
@id_Treasury	int	,
@Money	real	,
@Date	datetime	,
@Name	nvarchar(250)	,
@Type	nvarchar(250)	,
@Reason	nvarchar(250)	
as
insert into Treasury_Insert(id_Treasury,Money,Date,Name,Type,Reason)
values (@id_Treasury	,
@Money	,
@Date	,
@Name	,
@Type	,
@Reason	)
update Treasury_Data
set Money=  Money + @Money
where id_Treasury=@id_Treasury
		



GO
/****** Object:  StoredProcedure [dbo].[Add_masrof]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Add_masrof]
@Masrof_Id	int	,
@amount decimal(18,2),
@date datetime ,
@descrpsion nvarchar(100),
@ID_stock int ,
@Sales_man	nvarchar(100)
as 
insert into Masrofat(
ID_Masrof,
amount,
Date,
descrpsion,
Id_Stock,
Sales_man)
values 
(
@Masrof_Id,
@amount,
@date,
@descrpsion,
@ID_stock,@Sales_man
)
GO
/****** Object:  StoredProcedure [dbo].[Add_MAsrofCategory]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Add_MAsrofCategory]
@Masrof_Name	nvarchar(150)
as 
insert into Mastrofat_Category
(Mastof_Name)
values
(@Masrof_Name)	
		
GO
/****** Object:  StoredProcedure [dbo].[Add_MoveProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Add_MoveProduct]
@Id_Product	int	,
@InComeQty	int	,
@InComePrice	decimal(18,2)	,
@OutComeQty	int	,
@OutComePrice	decimal(18,2)	,
@lastQty	decimal(18,2)	,
@LastIncomePrice	decimal(18,2)	,
@LastOutComePrice	decimal(18,2)	,
@Bayan	nvarchar(500)	,
@MoveDate	datetime	,
@SalesMan	nvarchar(50)	,
@Type	nvarchar(50)	
		
as 
insert into MoveProduct
(Id_Product,InComeQty,InComePrice,OutComeQty,OutComePrice,lastQty,LastIncomePrice,
LastOutComePrice,Bayan,MoveDate,SalesMan,Type )
values 
(@Id_Product,format(@InComeQty,'0'),@InComePrice,@OutComeQty,@OutComePrice,@lastQty,@LastIncomePrice,
@LastOutComePrice,@Bayan,@MoveDate,@SalesMan,@Type )
GO
/****** Object:  StoredProcedure [dbo].[add_randomBarcode]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_randomBarcode]
@barcode float 
as 
insert into Random_Barcode
 (BarCode)
 values 
 (@barcode)


GO
/****** Object:  StoredProcedure [dbo].[add_stock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[add_stock]
@id_treasury int ,
@Treasury_name nvarchar(100)
as
insert into Treasury
(id_Treasury,Treasury_name)
values(@id_treasury,@Treasury_name)


GO
/****** Object:  StoredProcedure [dbo].[add_stockData]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[add_stockData]
@id_Treasury int,
@Money decimal(18,2)


as
insert into Treasury_Data

(id_Treasury,Money)
values(@id_Treasury , @Money)

update Money
set Money=money+@Money
where id=1



GO
/****** Object:  StoredProcedure [dbo].[Add_StockPull]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Add_StockPull]

@id_Treasury	int	,
@Money	real,
@Date	datetime,
@Name	nvarchar(250),
@Type	nvarchar(250),
@Reason	nvarchar(250)
as
insert into Stock_Pull(id_Treasury,Money,Date,Name,Type,Reason)
values(@id_Treasury	,@Money,@Date,@Name,@Type,@Reason)
update Treasury_Data
set money = money-@Money
where id_Treasury=@id_Treasury


GO
/****** Object:  StoredProcedure [dbo].[Add_StockTransfair]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Add_StockTransfair]
@Money	real,
@Date	nvarchar(50),
@From_	nvarchar(50),
@To_	nvarchar(50),
@Name	nvarchar(75),
@Reason	nvarchar(150)
as 
insert into Stock_tansfair(Money ,Date,From_,To_,Name , Reason)
values (@Money,@Date,@From_,@To_,@Name,@Reason)

GO
/****** Object:  StoredProcedure [dbo].[Add_Store]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_Store]
@Store_Name	nvarchar(150)	
as 
insert into Store
(Store_Name)
values (@Store_Name)
GO
/****** Object:  StoredProcedure [dbo].[Add_StoreProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Add_StoreProduct]
@ID_Product	int	,
@Buy_price	decimal(18, 2)

as 
insert into Product_BuyPrice 
(ID_Product,Buy_price)	
values 
(@ID_Product,@Buy_price)
GO
/****** Object:  StoredProcedure [dbo].[Add_SuppliersStatementAccount]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_SuppliersStatementAccount]
@Id_Supplier	int	,
@Da2n	decimal(18, 2)	,
@maden	decimal(18, 2)	,
@elbyan	nvarchar(150)	,
@date	datetime	,
@Balance	decimal(18, 2)	
as
insert into SupplierStatmentAccount
(Id_Supplier,Da2n,maden,elbyan,date,Balance)
values 
(@Id_Supplier,@Da2n,@maden,@elbyan,@date,@Balance)

GO
/****** Object:  StoredProcedure [dbo].[Add_SupplierTotalMoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_SupplierTotalMoney]
@Id_Supplier  int 
as 
insert into Supplier_Totalmoney 
(Id_Supplier , Total_Balance)
values 
(@Id_Supplier , 0)
GO
/****** Object:  StoredProcedure [dbo].[Add_TranfairProductInformation]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Add_TranfairProductInformation]
@Id_StoreFrom	int	,
@From_StoreNAme	nvarchar(50),
@Id_StoreTo	int	,
@To_StoreNAme	nvarchar(50),
@Sales_man	nvarchar(50),
@date_Transfair	datetime,
@note	nvarchar(250)
as 
insert into TransfairProductInformation
(Id_StoreFrom,From_StoreNAme,Id_StoreTo,To_StoreNAme,Sales_man,date_Transfair,note)	
values
(@Id_StoreFrom,@From_StoreNAme,@Id_StoreTo,@To_StoreNAme,@Sales_man,@date_Transfair,@note)	
		
GO
/****** Object:  StoredProcedure [dbo].[Add_TRansfairProductDetails]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_TRansfairProductDetails]
@Id_Transfair	int	,
@Id_Product	int	,
@unit_name	nvarchar(50),
@Quantity	decimal(18, 2)	
as 
insert into Transfair_ProductDetails 
(Id_Transfair,Id_Product,unit_name,Quantity)
values 
(@Id_Transfair,@Id_Product,@unit_name,@Quantity)

		
GO
/****** Object:  StoredProcedure [dbo].[Add_Unit]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_Unit]
@Unit_Name	nvarchar(150)	
as 
insert into Unit
(Unit_Name)
values (@Unit_Name)
GO
/****** Object:  StoredProcedure [dbo].[AddAsol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddAsol]

@Asl nvarchar(150),
@Value decimal(18,2),
@Date date
as
INSERT INTO [dbo].[asol]
           ([Asl]
           ,[Value]
           ,[Date])
     VALUES
        ( @Asl ,
@Value ,
  @Date)
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddCustomer]
@name nvarchar(150),
@address nvarchar(100),
@phone varchar(20)
As
insert into Customer
( 
Name,
Addres,
Phone
)
values
(
  @name,
  @address,
  @phone
)



GO
/****** Object:  StoredProcedure [dbo].[AddEhlakatAsol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddEhlakatAsol]
@Asl_ID int,
@Ehalak_Value decimal(18,2),
@Date datetime
as

INSERT INTO EhalaktAsol
           ([Asl_ID]
           ,[Ehalak_Value]
           ,[Date])
     VALUES
         (
		 @Asl_ID ,
@Ehalak_Value ,
@Date )


GO
/****** Object:  StoredProcedure [dbo].[AddItemsFirstTerm]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[AddItemsFirstTerm]
@ID_Prod int,
@Name_Prod	nvarchar(150)	,
@Id_Category	int	,
@Quantity	decimal(18, 1)	,
@Sales_price	decimal(18, 2)	,
@Buy_Price	decimal(18, 2)

as
insert into ItemsFirstTerm(ID_Prod,Name_Prod,Id_Category,Quantity,Sales_price,Buy_Price,incomeDate)
values(@ID_Prod,@Name_Prod,@Id_Category,@Quantity,@Sales_price,@Buy_Price,getdate())








GO
/****** Object:  StoredProcedure [dbo].[ADDLogin]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ADDLogin]
@id nvarchar(50),
@LogIN nvarchar(50)
as
insert into Login 
(
  ID_User,
  LogIn
 )
 values
 
 (  
  @id,
  @LogIN
 
 )



GO
/****** Object:  StoredProcedure [dbo].[ADDLogOut]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ADDLogOut]
@id_Login int ,
@id_User nvarchar(50),
@Log_Out nvarchar(50)
as
insert into LogOut
(
  ID_Login,
  ID_User,
  LogOut
)
values(

    @id_Login,@id_User,@Log_Out
)



GO
/****** Object:  StoredProcedure [dbo].[addMoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[addMoney]
@id int ,


@rent decimal(18,2),
@id_cast int
as
insert into OrderMony
(
   ID_Order,

 
   rent,
   ID_Cast
   

)
values
(
      @id,
	
	
	  @rent,
	  @id_cast

)









GO
/****** Object:  StoredProcedure [dbo].[addMoneySuplliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[addMoneySuplliers]
@id_INFORMATION int ,
@rent decimal(18,2),
@sup_id int 

as
insert into SuppliersMony
(
   ID_Information,
 
   rent,
   ID_Supp

)
values
(
      @id_INFORMATION,
	
	  @rent,
	  @sup_id

)







GO
/****** Object:  StoredProcedure [dbo].[addMoveUser]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addMoveUser]
           @UserName nvarchar(50),
           @ScreenName nvarchar(50),
           @TypeMove nvarchar(500)
          

as

INSERT INTO [dbo].[MoveUser]
           ([UserName]
           ,[ScreenName]
           ,[TypeMove]
           ,[MoveDate])
     VALUES
       (@UserName ,
           @ScreenName ,
           @TypeMove ,
           GETDATE() )
GO
/****** Object:  StoredProcedure [dbo].[AddOpeningBalance]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddOpeningBalance]
    
           @date date,
           @Moneydiscount decimal(18,2),
           @Moneyadd decimal(18,2),
           @bayan nvarchar(100),
		   @Type nvarchar(100),
		   @id_Supp int =null,
		     @id_Cust int =null
       
     
        

		   as

INSERT INTO [dbo].[Openingbalance]
           (
           [date]
           ,[Moneydiscount]
           ,[Moneyadd]
           ,[bayan]
		   
		    , Type
			,id_Supp
			,[id_Cust]
			)
     VALUES
   (
           
           @date ,
           @Moneydiscount ,
           @Moneyadd ,
           @bayan ,
		   @Type,
		   @id_Supp,
		    @id_Cust 
        
   
   
   )
GO
/****** Object:  StoredProcedure [dbo].[AddOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddOrder]
@date_order datetime,
@id_cust int,
@discription nvarchar(250),
@salesMan nvarchar(50),
@Total_Invoic decimal(18,2),
@pay decimal(18,2),
@rent decimal(18,2),
@Id_Stock int ,
@AddService decimal(18,2),
@AddNa2l decimal(18,2),
@total_AfterDisc decimal(18,2),
@total_Discount decimal(18,2)
as

insert into Orders
(
  date_Order,
  ID_Cust,
  discraption,
  SalesMan,
  Total_Invoic,
  pay,
  rent,
  Id_Stock,
  AddService,
  AddNa2l,
  total_AfterDisc,
  total_Discount,
  Show
)
values
(
@date_order,
@id_cust,
@discription,
@salesMan,
@Total_Invoic,
@pay,
@rent,
@Id_Stock, @AddService,@AddNa2l ,@total_AfterDisc,@total_Discount,'true'
)	
GO
/****** Object:  StoredProcedure [dbo].[AddOrderDetails]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[AddOrderDetails]
@IDOrder int ,
@IDProudect int ,
@Prod_Name nvarchar(150),
@quntity decimal(18,2),
@Price decimal(18,2),
@Discount decimal(18,2),
@Amount decimal(18,2),
@TotalAmount decimal(18,2)
as
INSERT INTO OrderDetails
          ( ID_Order,
           ID_Prod,
		   Prod_Name,
          Quntity,
           Price,
           Discount,
           Amount,
           TotalAmount		
		   )
     VALUES
          (
@IDOrder ,
@IDProudect  ,
@Prod_Name ,
@quntity ,
@Price ,
@Discount ,
@Amount ,
@TotalAmount
		   )



GO
/****** Object:  StoredProcedure [dbo].[AddOrderReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[AddOrderReturn]
@Id_Order	int	,
@Id_Cust	int	,
@ID_Prou	int	,
@quantity_Return	decimal(18, 2)	,
@date_Return	datetime	,
@Price	decimal(18, 2)	,
@Amount	decimal(18, 2)	,
@sales_Man	nvarchar(50)	
as 
insert into OrderReturn
(
Id_Order,Id_Cust,ID_Prou,quantity_Return,date_Return,Price,Amount,sales_Man	
)
values 
(
@Id_Order,@Id_Cust,@ID_Prou,@quantity_Return,@date_Return,@Price,@Amount,@sales_Man
)




GO
/****** Object:  StoredProcedure [dbo].[AddPaySuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[AddPaySuppliers]
@id_suppliers	int	,
@Pay	decimal(18, 2)	,
@date	datetime	,
@Sales_Man	nvarchar(50)	
		
as
insert into PaySuppliers
(
id_suppliers,Pay,date,Sales_Man
)
values
(@id_suppliers,@Pay,@date,@Sales_Man)

GO
/****** Object:  StoredProcedure [dbo].[Addproudect]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Addproudect]
@Name_Prod	nvarchar(150)	,
@Id_Category	int	,
@Quantity	decimal(18, 1)	,
@Sales_price	decimal(18, 2)	,
@Buy_Price	decimal(18, 2),	
@minimum	decimal(18, 1)	,
@Color	nvarchar(50)	,
@Barcode	nvarchar(max)	,
@Image image
as
insert into proudects(Name_Prod,Id_Category,Quantity,Sales_price,Buy_Price,minimum,Color,Barcode,Image,show)
output inserted.ID_Prod
values(@Name_Prod,@Id_Category,@Quantity,@Sales_price,@Buy_Price,@minimum,@Color,@Barcode,@Image,'true')








GO
/****** Object:  StoredProcedure [dbo].[AddRemoveInProudect]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddRemoveInProudect]
@ID_Order int,
@ID_Prod int,
@quantity decimal(18,2),
@Bayan nvarchar(50)
as

-------------------------------------------------------------
update proudects
set  Quantity=Quantity+@quantity
where ID_Prod=@ID_Prod
----------------------------------------------------------------------
delete OrderDetails
where  ID_Order=@ID_Order

delete MoveProduct
where Bayan=@Bayan 
GO
/****** Object:  StoredProcedure [dbo].[AddRemovePurshasesInProudect]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[AddRemovePurshasesInProudect]
@ID_Order int,
@ID_Prod int,
@quantity decimal(18,2),
@Bayan nvarchar(50)
as

-------------------------------------------------------------
update proudects
set  Quantity=Quantity-@quantity
where ID_Prod=@ID_Prod
----------------------------------------------------------------------
delete Suppliers_Details
where  ID=@ID_Order

delete MoveProduct
where Bayan=@Bayan 
GO
/****** Object:  StoredProcedure [dbo].[AddReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[AddReturn]
@ID_Information	int	,
@Id_Suppliers	int	,
@ID_Prou	int	,
@Return_Quantity	decimal(18, 2)	,
@date_Return	datetime,
@Price	decimal(18, 2)	,
@Amount	decimal(18, 2)	,
@Sales_man	nvarchar(50)		
		
as
insert into SuppliersReturn
(ID_Information,Id_Suppliers,ID_Prou,Return_Quantity,date_Return,Price,Amount,Sales_man)
values 
(@ID_Information,@Id_Suppliers,@ID_Prou,@Return_Quantity,@date_Return,@Price,@Amount,@Sales_man)

GO
/****** Object:  StoredProcedure [dbo].[AddReturnOrderUnUsed]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[AddReturnOrderUnUsed]
@id_order int ,
@id_prod int ,
@quantity int , 
@date datetime ,
@Price	decimal(18, 2),
@Discount	decimal(18, 2),
@Amount	decimal(18, 2),
@TotalAmount	decimal(18, 2)
as 
insert into ReturnOrderUnUsed
(
ID_Order ,
ID_Prou,
quantity,
date,
Price,
Discount,
Amount	,
TotalAmount	
)
values 
(
@id_order ,
@id_prod ,
@quantity , 
@date,@Price,
@Discount,
@Amount	,
@TotalAmount	)
update proudects
set quantity = quantity +@quantity
where ID_Prod= @id_prod



GO
/****** Object:  StoredProcedure [dbo].[AddReturnSuppliersUnUseds]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[AddReturnSuppliersUnUseds]
@id int ,
@idProd int ,
@Quantity int ,
@date  datetime
as
insert into ReturnSuppliersUnUsed
(
  ID_Information,
  ID_Prou,
  quantity,
  date
)
values 
(
   @id,
   @idProd,
   @Quantity,
   @date
)
update proudects
set quantity = quantity- @quantity
where ID_Prod =@idProd




GO
/****** Object:  StoredProcedure [dbo].[addSanad]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addSanad]

@Type nvarchar(50),
@UserName nvarchar(50),
           @Name nvarchar(50),
           @Money decimal(18,2),
           @Date datetime,
           @elbayan nvarchar(150)
as

INSERT INTO [dbo].[Sanad]
           ([Type]
           ,[UserName]
           ,[Name]
           ,[Money]
           ,[Date]
           ,[elbayan])
     VALUES
          (
@Type ,
@UserName ,
           @Name ,
           @Money ,
           @Date ,
           @elbayan )
GO
/****** Object:  StoredProcedure [dbo].[AddSettingPrint]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddSettingPrint]
    @Name_Company nvarchar(200),
    @Addres nvarchar(200),
           @Bottom_Note nvarchar(250),
           @Phone1 nvarchar(50),
          @Phone2 nvarchar(50)
		   as
INSERT INTO [dbo].[Setting_PrintOrder]
           ([Name_Company]
           ,[Addres]
           ,[Bottom_Note]
           ,[Phone1]
           ,[Phone2])
     VALUES
           (  

		    @Name_Company ,
    @Addres ,
           @Bottom_Note ,
           @Phone1 ,
          @Phone2 
		  )
	



GO
/****** Object:  StoredProcedure [dbo].[AddStoreValue]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[AddStoreValue]
@StoreValue decimal(18,2) ,@Date datetime
as
INSERT INTO StoreValue
                      (StoreValue, Date)
VALUES     (@StoreValue,@Date)

GO
/****** Object:  StoredProcedure [dbo].[addSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[addSuppliers]

@name nvarchar(50),
@address nvarchar(50),
@phone varchar(50)
as
insert into Suppliers
( 

  Name,
  Address,
  phone
  
)
values
(

   @name,
   @address,
   @phone
)



GO
/****** Object:  StoredProcedure [dbo].[addSuppliersDetails]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addSuppliersDetails]
@ID INT,
@idProd int ,
@quantity int ,
@price decimal(18,2),
@amount decimal(18,2),
@discount decimal(18,2),
@TotalAmount decimal(18,2),
@Prod_Name nvarchar(150)
as
INSERT INTO Suppliers_Details
( 
ID,ID_Prod,Quntity,Price,Amount,Discount,TotalAmount,Prod_Name
)
VALUES
(
@ID,@idProd  ,@quantity  ,@price ,@amount ,@discount ,@TotalAmount ,@Prod_Name
)
GO
/****** Object:  StoredProcedure [dbo].[ADDSuppliersINFORMARION]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ADDSuppliersINFORMARION]
@sup_id int ,
@date datetime ,
@note nvarchar(350),
@salesMan nvarchar(50),
@Total_Invoic decimal(18,2),
@pay decimal(18,2),
@rent decimal(18,2),
@id_stock int ,
@totalDiscount decimal(18,2),
@totalAfterDicscount  decimal(18,2)
as
insert into suppliersInformation 
( 
  sup_id,
  date,
  note,
  SalesMan,
  Total_Invoic,
  pay,
  rent,
  id_stock,
  totalDiscount,
  totalAfterDicscount ,
  show
)
values
(  
  @sup_id,
  @date,
  @note,
  @salesMan,
  @Total_Invoic,
  @pay,
  @rent,
  @id_stock,
  @totalDiscount,
  @totalAfterDicscount,
  'true'
)

GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddUser]
@id nvarchar(50),
@pass varchar(50),

@FullName nvarchar(100)
as
insert into users
(
   ID,
   PASS,
   
   FullName
)
values
(
    @id,
	@pass,
	
	@FullName

)



GO
/****** Object:  StoredProcedure [dbo].[addUserClient]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addUserClient]
 @User_Name nvarchar(50),
           @add_Client int,
           @check_Discount int,
           @client_Pay int,
           @Depit_Client int,
           @Account_Client int,
		   @Sarf_Pay int,
		   @Client_Data int
		   as
INSERT INTO [dbo].[Users_Clients]
           (
		   User_Name,
           add_Client,
           check_Discount,
           client_Pay,
           Depit_Client,
           Account_Client,
		     Sarf_Pay,
			 Client_Data
			 )
     VALUES
          (
		     @User_Name ,
           @add_Client ,
           @check_Discount ,
           @client_Pay ,
           @Depit_Client ,
           @Account_Client ,
		    @Sarf_Pay,
			@Client_Data
		  
		  )




GO
/****** Object:  StoredProcedure [dbo].[AddUserFile]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddUserFile]
@User_Name nvarchar(50),
           @BackUp int,
           @Restore int,
           @Setting int,
           @Managment_User int,
           @Managment_Employee int,
		   @DeleteAllData int ,
		   @MoveUsers	int	,
           @UserSales	int	
		   as

INSERT INTO [dbo].[User_File]
           ([User_Name]
           ,[BackUp]
           ,[Restore]
           ,[Setting]
           ,[Managment_User]
           ,[Managment_Employee]
		   ,DeleteAllData,MoveUsers,UserSales)
     VALUES
           (		       
		   @User_Name ,
           @BackUp ,
           @Restore ,
           @Setting ,
           @Managment_User ,
           @Managment_Employee ,
		   @DeleteAllData,
		   @MoveUsers,
		   @UserSales		   
		   )

GO
/****** Object:  StoredProcedure [dbo].[AddUserOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddUserOrder]
  @User_Name nvarchar(50),
           @Add_Order int,
           @ReturnOrder int,
           @ManagmentOrder int,
           @ReportReturnOrder int,
           @Report_Reb7Order int,
		   @updateOrder int,
		   @Return_AllProduct int 

		   as

INSERT INTO [dbo].[User_Order]
           ([User_Name]
           ,[Add_Order]
           ,[ReturnOrder]
           ,[ManagmentOrder]
           ,[ReportReturnOrder]
           ,[Report_Reb7Order]
		   ,[updateOrder]
		   ,Return_AllProduct)
     VALUES
         (
		     @User_Name ,
           @Add_Order ,
           @ReturnOrder ,
           @ManagmentOrder ,
           @ReportReturnOrder ,
           @Report_Reb7Order ,
		   @updateOrder,
		   @Return_AllProduct
		 )




GO
/****** Object:  StoredProcedure [dbo].[AddUserProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddUserProduct]

          @User_Name nvarchar(50),
           @Add_Prod int,
           @Report_minItem int,
           @check_Balance int,
           @Report_checkBalance int,
		   @Gard_Products int ,
		   @harkt_Seeling int
		   as
INSERT INTO [dbo].[User_Product]
           ([User_Name]
           ,[Add_Prod]
           ,[Report_minItem]
           ,[check_Balance]
           ,[Report_checkBalance]
		   ,[Gard_Products]
		   ,[harkt_Seeling])
     VALUES
         
(

 @User_Name ,
           @Add_Prod ,
           @Report_minItem ,
           @check_Balance ,
           @Report_checkBalance ,
		    @Gard_Products  ,
		   @harkt_Seeling 
)



GO
/****** Object:  StoredProcedure [dbo].[AddUserPurshise]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddUserPurshise]

  @User_Name nvarchar(50),
          @Add_OrderSuppliers int,
           @ReturnSuppliers int,
           @ManagmentSuppliers int,
           @Report_ReturnSuppliers int,
		   @Report_ReturnAllProduct int
		   as

INSERT INTO [dbo].[Users_Purshise]
           ([User_Name]
           ,[Add_OrderSuppliers]
           ,[ReturnSuppliers]
           ,[ManagmentSuppliers]
           ,[Report_ReturnSuppliers]
		   ,Report_ReturnAllProduct)

     VALUES
           (
 @User_Name ,
          @Add_OrderSuppliers ,
           @ReturnSuppliers ,
           @ManagmentSuppliers ,
           @Report_ReturnSuppliers ,
		   @Report_ReturnAllProduct
		   )


GO
/****** Object:  StoredProcedure [dbo].[AddUserStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddUserStock]
@User_Name	nvarchar(50)	,
@Add_Stock	int	,
@Add_Masrof	int	,
@Transfer_Stock	int	,
@Ms7obatSh5sya	int	,
@eradat	int	,
@elsol	int	,
@EhlakatElasol	int	,
@Report_Money	int	
		
		   as

INSERT INTO [dbo].[User_Stock]
           (User_Name,
Add_Stock,
Add_Masrof,
Transfer_Stock,
Ms7obatSh5sya,
   eradat,
    elsol,
   EhlakatElasol,
   Report_Money
)
     VALUES
           (@User_Name,
@Add_Stock,
@Add_Masrof,
@Transfer_Stock,
@Ms7obatSh5sya,
   @eradat,
    @elsol,
   @EhlakatElasol,
  @Report_Money
)




GO
/****** Object:  StoredProcedure [dbo].[AddUserSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddUserSuppliers]
    @User_Name nvarchar(50),
           @Add_Suppliers int,
           @Report_DataSuppliers int,
           @Check_DiscountSuppliers int,
           @Pay_Suppliers int,
           @Account_Suppliers int,
           @Depit_Suppliers int
as

INSERT INTO [dbo].[User_Suppliers]
           ([User_Name]
           ,[Add_Suppliers]
           ,[Report_DataSuppliers]
           ,[Check_DiscountSuppliers]
           ,[Pay_Suppliers]
           ,[Account_Suppliers]
           ,[Depit_Suppliers])
     VALUES
	 (
	        @User_Name ,
           @Add_Suppliers ,
           @Report_DataSuppliers ,
           @Check_DiscountSuppliers ,
           @Pay_Suppliers ,
           @Account_Suppliers ,
           @Depit_Suppliers 
	  )
       

GO
/****** Object:  StoredProcedure [dbo].[AverageBuyPriceProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AverageBuyPriceProduct] 
@Id_Prodcut int 
as 
select  avg (ps.Buy_price )
from proudects p inner join Product_Store ps
on p.ID_Prod = ps.ID_Product 
where ps.ID_Product=@Id_Prodcut
GO
/****** Object:  StoredProcedure [dbo].[ComboBox_PaySuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ComboBox_PaySuppliers]
as
select 
Sup_id,
Name
from Suppliers inner join Supplier_Totalmoney
on Suppliers.Sup_id=Supplier_Totalmoney.Id_Supplier
where Supplier_Totalmoney.Total_Balance>0
GO
/****** Object:  StoredProcedure [dbo].[Compo_Stock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Compo_Stock]
as
select 
id_Treasury,
Treasury_name  

from Treasury


GO
/****** Object:  StoredProcedure [dbo].[CompoBox]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CompoBox]
as
select 
Sup_id,
Name
from Suppliers s 


GO
/****** Object:  StoredProcedure [dbo].[CompoBoxSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[CompoBoxSuppliers]
as
select 
Sup_id,
Name,
phone
from Suppliers


GO
/****** Object:  StoredProcedure [dbo].[CountCusromerOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CountCusromerOrder]
as
select c.ID_Cust as'رقم العميل',c.Name as'اسم العميل',  count(o.ID_Cust) as'اجمالي عدد الفواتير',SUM(o.Total_Invoic) as'اجمالي الفواتير'
from Orders o inner join Customer c
on c.ID_Cust=o.ID_Cust
group by c.ID_Cust,Name
having count(o.ID_Cust)>=10

GO
/****** Object:  StoredProcedure [dbo].[Delete_masrof]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Delete_masrof]
@id_Count int 
as 
delete from Masrofat
where Id_CountPk =@id_Count 
GO
/****** Object:  StoredProcedure [dbo].[Delete_OrderDetails]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_OrderDetails]
@Id_Order int 
as 
delete from OrderDetails
where ID_Order = @Id_Order
GO
/****** Object:  StoredProcedure [dbo].[Delete_ProductUnit]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_ProductUnit] 
@Id_Product int 
as 
delete from Product_Unit
where Id_Product=@Id_Product
GO
/****** Object:  StoredProcedure [dbo].[Delete_Stock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_Stock]
@id_Treasury int 
as 
delete from Treasury
where id_Treasury = @id_Treasury


GO
/****** Object:  StoredProcedure [dbo].[Delete_StoreProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_StoreProduct]
@Id_Product int ,
@Id_Store int ,
@Quantity decimal 
as 
delete from Product_Store
where ID_Product=@Id_Product and Id_Store=@Id_Store
update proudects 
set Quantity = Quantity-@Quantity
where ID_Prod=@Id_Product
GO
/****** Object:  StoredProcedure [dbo].[deleteAllMoveTbale]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[deleteAllMoveTbale]
as




delete from Orders
delete from OrderDetails
delete from OrderReturn
delete from OrderMony
delete from ReturnOrderUnUsed
delete from CustomerStatmentAccount
delete from PayCustomer
update Customer_TotalMoney
set Total_Balance=0




delete from Masrofat
delete from Mastrofat_Category

delete from ReturnSuppliersUnUsed

delete from suppliersInformation
delete from Suppliers_Details
delete from SuppliersReturn
delete from SupplierStatmentAccount
delete from PaySuppliers
update Supplier_Totalmoney
set Total_Balance=0


delete from Stock_Pull
delete from Stock_tansfair
delete from Treasury_Insert


delete from Balance_Adjutment

truncate table Openingbalance
GO
/****** Object:  StoredProcedure [dbo].[deleteAllTable]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[deleteAllTable]
as


truncate table OrderDetails
truncate table OrderReturn
truncate table OrderMony
truncate table ReturnOrderUnUsed
delete from Orders
---------------------------------------
truncate table Customer_TotalMoney
truncate table CustomerStatmentAccount
truncate table PayCustomer
truncate table Openingbalance
delete from Customer
--------------------------------------
truncate table Masrofat
delete from Mastrofat_Category
---------------------------------------
truncate table ReturnSuppliersUnUsed
truncate table Suppliers_Details
truncate table SuppliersReturn
delete from suppliersInformation

----------------------------------------
truncate table Supplier_Totalmoney
truncate table SupplierStatmentAccount
truncate table PaySuppliers
delete from Suppliers
-------------------------------------

truncate table Stock_Pull
truncate table Stock_tansfair
truncate table Treasury_Insert
truncate table Treasury_Data
truncate table StockMove
delete from   Treasury
------------------------------------------
truncate table Product_BuyPrice
truncate table Product_Unit
--truncate table Transfair_ProductDetails
--truncate table TransfairProductInformation
truncate table Balance_Adjutment
truncate table MoveProduct
truncate table ItemsFirstTerm
delete from proudects
delete from Category
--------------------------------------
update StoreValue
set StoreValue=0
------------------------------
update money
set Money=0
-------------------------------
delete from asol
truncate table EhalaktAsol
truncate table Openingbalance
GO
/****** Object:  StoredProcedure [dbo].[DeleteAsol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteAsol]

@ID INT
as
delete from  asol
 
 WHERE ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[deletecategory]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletecategory]
@idCate int
as
update Category
set show='false'
where Category_Id=@idCate
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[DeleteCustomer]
@id int 
as
delete  from Customer
where ID_Cust=@id



GO
/****** Object:  StoredProcedure [dbo].[Deleted_Purshasing]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Deleted_Purshasing]
@DateFrom date ,
@DateTo date 
as 
select i.ID as 'رقم الفاتورة',
 s.Name as 'إسم المورد',
convert(date,i.date) as 'تاريخ الفاتورة',
i.Total_Invoic as 'إجمالى الفاتورة' ,
i.totalDiscount as'الخصم',
i.totalAfterDicscount as 'اجمالي بعد الخصم',
i.pay as 'المدفوع' ,
i.rent as 'المتبقي'
from Suppliers s inner join suppliersInformation i
on s.Sup_id=i.sup_id  
where convert(date,i.date) between convert(date,@DateFrom) and convert(date,@DateTo)
  and i.show='false'
GO
/****** Object:  StoredProcedure [dbo].[DeleteEhlakatAsol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteEhlakatAsol]

@ID_Ehlak int
as

delete from
EhalaktAsol


where   ID_Ehlak=@ID_Ehlak






GO
/****** Object:  StoredProcedure [dbo].[DeleteInsertStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[DeleteInsertStock]
@id_stock int ,
@Date datetime ,
@Money real
as 
delete from Treasury_Insert
where id_Treasury=@id_stock and Date=@Date
update Treasury_Data
set Money=  Money - @Money
where id_Treasury=@id_stock


GO
/****** Object:  StoredProcedure [dbo].[deleteOpeningBalance]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[deleteOpeningBalance]

@moneyadd decimal(18,2),
@moneydisco decimal(18,2),
@elbayan nvarchar(100),
@idCast int
as
BEGIN TRANSACTION [Tran1]

  BEGIN TRY


delete from Openingbalance 
where id_Cust=@idCast





delete from CustomerStatmentAccount 
where ID_Cast=@idCast and ELBYAN=@elbayan 
if @moneyadd>0
update Customer_TotalMoney set Total_Balance =Total_Balance - @moneyadd where Customer_TotalMoney.Id_Cust=@idCast;
else if @moneydisco >0
update Customer_TotalMoney set Total_Balance =Total_Balance + @moneydisco where Customer_TotalMoney.Id_Cust=@idCast





   COMMIT TRANSACTION [Tran1]

  END TRY

  BEGIN CATCH

      ROLLBACK TRANSACTION [Tran1]

  END CATCH  
GO
/****** Object:  StoredProcedure [dbo].[deleteOpeningBalanceSupp]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[deleteOpeningBalanceSupp]

@moneyadd decimal(18,2),
@moneydisco decimal(18,2),
@elbayan nvarchar(100),
@idsupp int
as
BEGIN TRANSACTION [Tran1]

  BEGIN TRY


delete from Openingbalance 
where id_Supp=@idsupp




delete from SupplierStatmentAccount 
where Id_Supplier=@idsupp and ELBYAN=@elbayan 


if @moneyadd>0
update Supplier_Totalmoney set Total_Balance =Total_Balance + @moneyadd where Supplier_Totalmoney.Id_Supplier=@idsupp;
else if @moneydisco >0
update Supplier_Totalmoney set Total_Balance =Total_Balance - @moneydisco where Supplier_Totalmoney.Id_Supplier=@idsupp



   COMMIT TRANSACTION [Tran1]

  END TRY

  BEGIN CATCH

      ROLLBACK TRANSACTION [Tran1]

  END CATCH  
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrderMoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[DeleteOrderMoney]
@id int

as
delete from OrderMony 
where ID_Order=@id 



GO
/****** Object:  StoredProcedure [dbo].[deleteProudect]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteProudect]
@id int 
as
delete from proudects where ID_Prod=@id



GO
/****** Object:  StoredProcedure [dbo].[deleteProudectinUpdate]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteProudectinUpdate]
@idProud int

as
update proudects
set show='false'
where ID_Prod=@idProud
GO
/****** Object:  StoredProcedure [dbo].[DeletePullStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[DeletePullStock]
@id_stock int ,
@Date datetime ,
@Money real
as 
delete from Stock_Pull
where id_Treasury=@id_stock and Date=@Date
update Treasury_Data
set Money=  Money - @Money
where id_Treasury=@id_stock


GO
/****** Object:  StoredProcedure [dbo].[DeleteReturnOrderUnUsed]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[DeleteReturnOrderUnUsed]
as
delete from ReturnOrderUnUsed

GO
/****** Object:  StoredProcedure [dbo].[DeleteSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DeleteSuppliers]
@id int
as
delete from Suppliers
where Sup_Id=@id



GO
/****** Object:  StoredProcedure [dbo].[DeleteSuppliersInformation]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DeleteSuppliersInformation]
@id int

as
update suppliersInformation
set show='false'
where ID=@id 
GO
/****** Object:  StoredProcedure [dbo].[DeleteTableSuppliersReturnm]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteTableSuppliersReturnm]
as
delete from ReturnSuppliersUnUsed

GO
/****** Object:  StoredProcedure [dbo].[deleteusers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteusers]
@id nvarchar(50)
as 
delete from users where ID= @id



GO
/****** Object:  StoredProcedure [dbo].[Insert_Stock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Insert_Stock]
@ID_Stock int 
as 
select t.Treasury_name as 'إسم الخزنة' ,
 i.Money as 'المبلغ المضاف'  ,
  i.Date as 'تاريخ الايداع' , 
  i.Name as 'إسم المودع' , 
  i.Type as 'نوع الايداع'  ,
  i.Reason as 'سبب الايداع'
from Treasury t inner join  Treasury_Insert i
on t.id_Treasury = i.id_Treasury inner join Treasury_Data d
on t.id_Treasury=d.id_Treasury
where i.id_Treasury =@ID_Stock



GO
/****** Object:  StoredProcedure [dbo].[InsertPayCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[InsertPayCustomer]
@pay decimal(18,2),
@date datetime,
@id_cast int,
@Sale_Man	nvarchar(50)
as
insert into PayCustomer
(
  pay,
  Date,
  ID_Cast,
  Sale_Man
)
values(
   
   @pay,
   @date,
   @id_cast,@Sale_Man
)


GO
/****** Object:  StoredProcedure [dbo].[InsertStockMove]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertStockMove]
  @Prise decimal(18,2),
           @Date datetime,
           @Type nvarchar(max),
           @Bean nvarchar(max),
		     @StockID int,
			 	   @userName nvarchar(100),
				   @moveStock nvarchar(50),
           @IDOrder int=null
	
         
as
INSERT INTO [dbo].[StockMove]
           ([Prise]
           ,[Date]
           ,[Type]
           ,[Bean]
          
           ,[StockID]
		    
		   ,[userName]
		     ,[moveStock]
		   ,[IDOrder]
		 )
     VALUES
        (
		  @Prise ,
           @Date,
           @Type ,
           @Bean ,
         
           @StockID ,
		   @userName,
		    @moveStock,
		     @IDOrder 
			
		
		)
GO
/****** Object:  StoredProcedure [dbo].[Last_IdProd]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Last_IdProd]
as
SELECT isnull(max (ID_Prod ),1)
from proudects 

GO
/****** Object:  StoredProcedure [dbo].[LastIDLogin]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[LastIDLogin]
as
select max(ID_Login)from login



GO
/****** Object:  StoredProcedure [dbo].[LastOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LastOrder]
as
SELECT max (ID_Order)
from Orders 


GO
/****** Object:  StoredProcedure [dbo].[LastOrderForPrint]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LastOrderForPrint]
as
select max(o.ID_Order)  from Orders o



GO
/****** Object:  StoredProcedure [dbo].[LastSuppliersDetalis]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[LastSuppliersDetalis]
as
select ( max (ID))
from suppliersInformation



GO
/****** Object:  StoredProcedure [dbo].[LastsuppliersForPrint]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LastsuppliersForPrint]
as
select max(o.ID)  from suppliersInformation o



GO
/****** Object:  StoredProcedure [dbo].[ListSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ListSuppliers]
as
select 
p.ID_Prod as 'رقم الصنف',
p.Name_Prod AS 'اسم الصنف',
c.Category_Name as 'التنصيف' ,								
p.Quantity AS 'الكميه بالمخزن',
p.Buy_Price as 'سعر الشراء',
p.Barcode as 'رقم الباركود' ,
p.Sales_price as 'سعر البيع'
from proudects P inner join Category C
on c.Category_Id=p.ID_Category 
GO
/****** Object:  StoredProcedure [dbo].[PrintAllProudects]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[PrintAllProudects]
as
SELECT  
p.ID_Prod AS [رقم الصنف],
p.Name_Prod AS [اسم الصنف],
c.Category_Name as 'النوع',
p.Quantity as 'الكمية' , 
avg(ps.Buy_Price) as 'متوسط سعر الشراء',
p.Quantity * avg(ps.Buy_Price)as 'إجمالى سعر الشراء * الكمية' ,
p.Sales_price as 'سعر البيع' ,
p.Quantity*p.Sales_price as 'إجمالى سعر البيع * الكمية',
p.Barcode as 'رقم الباركود',

cast(Image as varbinary(max))  as'Image'
FROM  proudects p inner join Category c 
on c.Category_Id=p.ID_Category inner join Product_BuyPrice ps on p.ID_Prod =ps.ID_Product
where c.show='true' and  p.show='true'
group by p.ID_Prod ,p.Name_Prod ,c.Category_Name,p.Quantity,p.Barcode ,p.Sales_price ,cast(Image as varbinary(max))



GO
/****** Object:  StoredProcedure [dbo].[RentSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RentSuppliers]
@id int 
as

SELECT      
 Suppliers.Name,  SuppliersMony.rent
FROM            Suppliers INNER JOIN
suppliersInformation ON Suppliers.Sup_id = suppliersInformation.sup_id INNER JOIN
SuppliersMony ON suppliersInformation.ID = SuppliersMony.ID_Information
where suppliersInformation.ID=@id



GO
/****** Object:  StoredProcedure [dbo].[Report_AdjustmentBalanceProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Report_AdjustmentBalanceProduct]
as 
select 
p.Name_Prod as 'الصنف' , ba.Quantity as 'الكمية' ,
 ba.Status as 'الحالة',convert(date,ba.date) as 'التاريخ' , 
 ba.Sales_man as 'الموظف' , ba.note as 'ملاحظات' 
from Balance_Adjutment ba inner join proudects p 
on p.ID_Prod = ba.ID_Product  
GO
/****** Object:  StoredProcedure [dbo].[Report_AllCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Report_AllCustomer]
as 
select c.ID_Cust as 'رقم العميل' , c.Name as 'إسم العميل' , c.Phone as 'الموبايل' , c.Addres as 'العنوان'
 ,ct.Total_Balance as 'الحساب '
from Customer C inner join Customer_TotalMoney ct
on c.ID_Cust = ct.Id_Cust 
GO
/****** Object:  StoredProcedure [dbo].[Report_CustomerAccountStatement]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Report_CustomerAccountStatement]
@Id_Customer int ,
@Date_from date ,
@Date_to date
as 
select c.Name as 'إسم العميل' ,cs.Da2n as'دائن ',cs.maden as 'مدين', cs.balance as'الرصيد',cs.elbyan as'البيان' 
,cast (cs.DATA as date) as 'التاريخ'
from CustomerStatmentAccount Cs inner join Customer C
on C.ID_Cust=Cs.ID_Cast inner join Customer_TotalMoney CD on C.ID_Cust=Cd.Id_Cust


where cs.ID_Cast =@Id_Customer and cast  (cs.DATA as date) between @Date_from and @Date_to

GO
/****** Object:  StoredProcedure [dbo].[Report_OrderReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Report_OrderReturn]
as 
SELECT      
OrderReturn.Id_Order as 'رقم الفاتورة' ,
 Customer.Name as 'اسم العميل' , 
proudects.Name_Prod as 'الصنف المرتجع' , 
 OrderReturn.quantity_Return as'الكمية المرتجعة' , 
 OrderReturn.Price as 'السعر' , 
OrderReturn.Amount as 'الاجمالى' , 
OrderReturn.sales_Man as 'الموظف' , 
convert(date,OrderReturn.date_Return) as 'تاريخ المرتجع' 
FROM            Customer INNER JOIN
                         OrderReturn ON Customer.ID_Cust = OrderReturn.Id_Cust INNER JOIN
                         proudects ON OrderReturn.ID_Prou = proudects.ID_Prod 
						 
GO
/****** Object:  StoredProcedure [dbo].[Report_ProductTransfair]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Report_ProductTransfair]
as
select p.Name_Prod as 'الصنف' , i.From_StoreNAme as 'من مخزن' , i.To_StoreNAme as 'إلى مخزن',d.unit_name as 'الوحدة'  , d.Quantity  as 'الكمية' ,
i.Sales_man as 'الموظف'
,convert (date ,  i.date_Transfair )as 'التاريخ' , i.note as 'ملاحظات' 
from Transfair_ProductDetails d inner join TransfairProductInformation i 
on i.Id_Transfair =d.Id_Transfair inner join proudects p 
on p.ID_Prod = d.Id_Product
GO
/****** Object:  StoredProcedure [dbo].[Report_PullStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Report_PullStock]
@Id_Stock int 
as
SELECT        
Treasury.Treasury_name as 'إسم الخزنة',
Stock_Pull.Money as 'المبلغ المسحوب', 
Stock_Pull.Date as 'تاريخ السحب',
Stock_Pull.Name as 'إسم السحب', 
Stock_Pull.Type as 'نوع السحب', 
Stock_Pull.Reason as 'سبب السحب'
FROM            Stock_Pull INNER JOIN
Treasury ON Stock_Pull.id_Treasury = Treasury.id_Treasury INNER JOIN
Treasury_Data ON Treasury.id_Treasury = Treasury_Data.id_Treasury
where Stock_Pull.id_Treasury=@Id_Stock

GO
/****** Object:  StoredProcedure [dbo].[Report_ReturnPurshasing]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Report_ReturnPurshasing]

as 
SELECT        
SuppliersReturn.ID_Information AS [رقم الفاتورة],
 Suppliers.Name AS [إسم المورد],
  proudects.Name_Prod AS [الصنف المرتجع],
SuppliersReturn.Return_Quantity AS [الكمية المرتجعة], 
SuppliersReturn.Price AS السعر, SuppliersReturn.Amount AS الاجمالى, SuppliersReturn.Sales_man AS الموظف, 
convert(date,SuppliersReturn.date_Return )AS [تاريخ المرتجع]
from
                         SuppliersReturn  INNER JOIN
                         Suppliers ON SuppliersReturn.Id_Suppliers = Suppliers.Sup_id INNER JOIN
                         proudects ON SuppliersReturn.ID_Prou = proudects.ID_Prod
						
GO
/****** Object:  StoredProcedure [dbo].[Report_SupplierAccountStatement]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Report_SupplierAccountStatement]
@Id_Supplier int ,
@Date_from date ,
@Date_to date
as 
select c.Name as 'إسم المورد' ,SA.Da2n as 'له-دائن' ,SA.maden  as'عليه- مدين', SA.balance  as 'الرصيد' ,SA.elbyan as'البيان' ,cast (SA.date as date) as 'التاريخ'
from SupplierStatmentAccount SA inner join Suppliers C
on C.Sup_id=SA.Id_Supplier inner join Supplier_Totalmoney CD on C.Sup_id=CD.Id_Supplier
where SA.Id_Supplier =@Id_Supplier and cast  (SA.date as date) between @Date_from and @Date_to

GO
/****** Object:  StoredProcedure [dbo].[ReportAboutOrderReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ReportAboutOrderReturn]
@formdate date,
@todate date
as

SELECT      
 proudects.Name_Prod  , 
isnull(sum( OrderReturn.quantity_Return),0) as'quantityReturn' ,  
isnull(sum(OrderReturn.Amount),0) as 'totalReturn' 


FROM            Customer INNER JOIN
                         OrderReturn ON Customer.ID_Cust = OrderReturn.Id_Cust INNER JOIN
                         proudects ON OrderReturn.ID_Prou = proudects.ID_Prod 
						 where cast(OrderReturn.date_Return as date) between @formdate and @todate
						 group by Name_Prod
						 order by Name_Prod asc
						 
GO
/****** Object:  StoredProcedure [dbo].[ReportAllSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ReportAllSuppliers]
as 
select s.Sup_id as 'رقم المورد' , s.Name as 'الإسم' , s.phone as  'الموبايل' , s.Address as 'العنوان' , st.Total_Balance as 'إجمالى الرصيد' 
from Suppliers S inner join Supplier_Totalmoney st 
on S.Sup_id=st.Id_Supplier
GO
/****** Object:  StoredProcedure [dbo].[ReportBudgetReview]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ReportBudgetReview]
as
select 'عملاء'=(select isnull(sum(Total_Balance),0) from Customer_TotalMoney),
'موردين'=(select isnull(sum(Total_Balance),0) from Supplier_Totalmoney),
'مبيعات'=(select isnull(sum(Total_Invoic),0) from Orders),
'مشتريات'=(select isnull(sum(Total_Invoic),0) from suppliersInformation),
'مردودات المبيعات'=(select isnull(sum(Amount),0) from OrderReturn),
'مردودات المشتريات'=(select isnull(sum(Amount),0) from SuppliersReturn),
'ايرادات اخرى'=(select isnull(sum(prise),0) from StockMove where Type=N'ايرادات اخرى'),
'مسحوبات شخصية'=(select isnull(sum(prise)*-1,0) from StockMove where Type=N'مسحوبات شخصية'),
'رد مبلغ مسحوب'=(select isnull(sum(prise),0) from StockMove where Type=N'رد مبلغ مسحوب'),
'الخزينة'=(select isnull(sum(Money),0) from Treasury_Data ),
'مصروفات'=(select isnull(sum(amount),0) from Masrofat ),
'اصول ثابتة'=(select isnull(sum(Value),0) from asol ),
'اهلاكات الأصول الثابتة'=(select isnull(sum(Ehalak_Value),0) from EhalaktAsol ),
'مخزون اول المدة'=(select isnull(sum(StoreValue),0) from StoreValue ),
'راس المال'=(select isnull(sum(Money),0) from Money ),
'اشعار خصم للعميل'=(select isnull(sum(Da2n),0) from CustomerStatmentAccount where ELBYAN=N'اشعار خصم'),
'اشعار اضافة للعميل'=(select isnull(sum(MADEN),0) from CustomerStatmentAccount WHERE ELBYAN=N'اشعار اضافة'),
'اشعار خصم للمورد'=(select isnull(sum(MADEN),0) from SupplierStatmentAccount where ELBYAN=N'إشعار خصم'),
'اشعار اضافة للمورد'=(select isnull(sum(Da2n),0) from SupplierStatmentAccount WHERE ELBYAN=N'إشعار إضافة'),
 'خصم مسموح به'=(select isnull(sum(total_Discount),0) from Orders),
 'خصم مكتسب'=(select isnull(sum(totalDiscount),0) from suppliersInformation )



from StoreValue




GO
/****** Object:  StoredProcedure [dbo].[ReportIncomestatement]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ReportIncomestatement]
@fromDate date,
@todate date


as
select 
'مبيعات'=(select isnull(sum(Total_Invoic),0) from Orders where cast(Orders.Date_Order as date) between @fromDate and @todate),
'مشتريات'=(select isnull(sum(Total_Invoic),0) from suppliersInformation where cast(suppliersInformation.date as date) between @fromDate and @todate),
'مردودات المبيعات'=(select isnull(sum(OrderReturn.Amount),0) from OrderReturn where cast(OrderReturn.date_Return as date) between @fromDate and @todate ),
'مردودات المشتريات'=(select isnull(sum(Amount),0) from SuppliersReturn where cast(SuppliersReturn.date_Return as date) between @fromDate and @todate),
'ايرادات اخرى'=(select isnull(sum(prise),0) from StockMove where Type=N'ايرادات اخرى' and cast(StockMove.Date as date) between @fromDate and @todate),

'مصروفات'=(select isnull(sum(amount),0) from Masrofat where cast(Masrofat.Date as date) between @fromDate and @todate ),

'مخزون اول المدة'=(select isnull(sum(StoreValue),0) from StoreValue  ),
'راس المال'=(select isnull(sum(Money),0) from Money ),
'اشعار خصم للعميل'=(select isnull(sum(Da2n),0) from CustomerStatmentAccount where ELBYAN=N'اشعار خصم' and
 cast(CustomerStatmentAccount.DATA as date) between @fromDate and @todate),
'اشعار اضافة للعميل'=(select isnull(sum(MADEN),0) from CustomerStatmentAccount WHERE ELBYAN=N'اشعار اضافة'
and
 cast(CustomerStatmentAccount.DATA as date) between @fromDate and @todate),
'اشعار خصم للمورد'=(select isnull(sum(MADEN),0) from SupplierStatmentAccount where ELBYAN=N'إشعار خصم'
and
 cast(SupplierStatmentAccount.date as date) between @fromDate and @todate),
'اشعار اضافة للمورد'=(select isnull(sum(Da2n),0) from SupplierStatmentAccount WHERE ELBYAN=N'إشعار إضافة'
and
 cast(SupplierStatmentAccount.date as date) between @fromDate and @todate),

 'خصم مسموح به'=(select isnull(sum(total_Discount),0) from Orders where cast(Orders.Date_Order as date) between @fromDate and @todate),
 'خصم مكتسب'=(select isnull(sum(totalDiscount),0) from suppliersInformation where cast(suppliersInformation.date as date) between @fromDate and @todate)


from StoreValue




GO
/****** Object:  StoredProcedure [dbo].[reportStockMove]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[reportStockMove]
@Id_Stock int,
@data_from date,
@data_to date



as
SELECT 
prise 

      ,[Date]
      ,[Type]
      ,[Bean]
      ,[IDOrder]
      ,[Treasury].Treasury_name
      ,[moveStock]
      ,userName
	        ,[totalOut]=(select isnull(sum(Prise),0) from StockMove where moveStock=N'خروج من الخزينة' and StockMove.StockID=@Id_Stock and cast(Date as date) between @data_from and @data_to )
	  ,[totalInto]=(select isnull(sum(Prise),0) from StockMove where moveStock=N'دخول الي الخزينة' and StockMove.StockID=@Id_Stock and cast(Date as date) between @data_from and @data_to )
  FROM [dbo].[StockMove] inner join Treasury
  on Treasury.id_Treasury=StockMove.StockID

where StockMove.StockID=@Id_Stock  and cast(Date as date) between @data_from and @data_to
GO
/****** Object:  StoredProcedure [dbo].[ReportStoreValueLast]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ReportStoreValueLast]

as
select proudects.ID_Prod,(proudects.Quantity * AVG(Product_BuyPrice.Buy_price)) as 'storeValueLast'
from proudects inner join Product_BuyPrice on proudects.ID_Prod=Product_BuyPrice.ID_Product 
group by proudects.ID_Prod,proudects.Quantity


GO
/****** Object:  StoredProcedure [dbo].[reportsupplier]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[reportsupplier]
@id int 
as 
SELECT       suppliersInformation.ID as 'رقم الفاتورة'
, Suppliers.Name as 'إسم المورد'
,Suppliers.Sup_id as 'رقم المورد'
, suppliersInformation.date as 'تاريخ الفاتورة'
, suppliersInformation.note as 'ملاحظات'
, suppliersInformation.SalesMan as 'الكاشير'
, suppliersInformation.Total_Invoic as 'إجمالى الفاتورة'
, suppliersInformation.pay as 'المدفوع'
, suppliersInformation.rent as 'الباقى'
FROM            proudects INNER JOIN
                         Suppliers_Details ON proudects.ID_Prod = Suppliers_Details.ID_Prod INNER JOIN
                         suppliersInformation ON Suppliers_Details.ID = suppliersInformation.ID INNER JOIN
                         Suppliers ON suppliersInformation.sup_id = Suppliers.Sup_id 
                      
						 where Suppliers_Details.ID = @id
GO
/****** Object:  StoredProcedure [dbo].[reportsupplierprod]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[reportsupplierprod]
@id int 
as 
SELECT     
  suppliersInformation.ID as 'رقم الفاتورة',
  proudects.ID_Prod,
 proudects.Name_Prod as 'إسم الصنف',
 Suppliers_Details.Quntity as 'الكمية',
 Suppliers_Details.Price as 'السعر',
 Suppliers_Details.Amount as 'المبلغ',
 Suppliers_Details.Discount as 'الخصم',
 Suppliers_Details.TotalAmount as 'المبلغ بعد الخصم',
 proudects.Sales_price AS 'سعر البيع',
 proudects.Barcode AS 'رقم الباركود'
FROM            proudects INNER JOIN
                         Suppliers_Details ON proudects.ID_Prod = Suppliers_Details.ID_Prod INNER JOIN
                         suppliersInformation ON Suppliers_Details.ID = suppliersInformation.ID                       
						 where Suppliers_Details.ID = @id
GO
/****** Object:  StoredProcedure [dbo].[ReturncompoSupplier]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ReturncompoSupplier]
as
select ID 
 from suppliersInformation 
 where Total_Invoic>0 and show='true'



GO
/****** Object:  StoredProcedure [dbo].[RportOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RportOrder]
@ID int
as
select
 o.ID_Order as 'رقم الفاتورة',
 c.Name as 'اسم العميل',
 c.Phone as 'رقم الموبايل',
 p.Name_Prod AS 'اسم الصنف',
 
 d.Quntity as 'الكميه',
d.Price as 'السعر ',
d.Amount as 'الاجمالي',
d.Discount as 'الخصم',
d.TotalAmount as ' الاجمالى ب',
o.Date_Order as 'تاريخ الفاتورة',
o.SalesMan as 'اسم المستخدم',
o.Total_Invoic  as 'اجمالي الفاتورة', 
o.pay   as 'المدفوع',
o.rent as 'الباقي',
o.total_Discount as 'خصم اجمالى الفاتورة',
o.total_AfterDisc as 'إجمالى الفاتورة بعد الخصم'

from Orders o inner join OrderDetails d
on o.ID_Order=d.ID_Order 
 
inner join proudects p
on p.ID_Prod=d.ID_Prod inner join Customer c
on c.ID_Cust=o.ID_Cust 
where o.ID_Order=@ID

GO
/****** Object:  StoredProcedure [dbo].[rptDaily]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[rptDaily]

@data_from date,
@data_to date



as
SELECT 
prise 

      ,[Date]
      ,[Type]
      ,[Bean]
      ,[IDOrder]
      ,[Treasury].Treasury_name
      ,[moveStock]
      ,userName
	        ,[totalOut]=(select isnull(sum(Prise),0) from StockMove where moveStock=N'خروج من الخزينة'  and cast(Date as date) between @data_from and @data_to )
	  ,[totalInto]=(select isnull(sum(Prise),0) from StockMove where moveStock=N'دخول الي الخزينة' and cast(Date as date) between @data_from and @data_to )
  FROM [dbo].[StockMove] inner join Treasury
  on Treasury.id_Treasury=StockMove.StockID

where   cast(Date as date) between @data_from and @data_to
GO
/****** Object:  StoredProcedure [dbo].[search]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[search]
@ID varchar(100),
@ID_Store int 
as
select ps.ID_Product AS 'رقم الصنف',
p.Name_Prod AS 'اسم الصنف',
c.Category_Name as 'التنصيف' ,
p.Large_UnitName as 'الوحدة', 								
p.SeelingPrice AS 'سعر البيع',
ps.Quantity AS 'الكميه',
S.Store_Name as 'المخزن'
from proudects P inner join Category C
on c.Category_Id=p.ID_Category inner join 
Product_Store  ps on  p.ID_Prod =ps.ID_Product 
inner join Store S on S.Store_Id =ps.Id_Store
where ps.Quantity >0 and ps.Id_Store=@ID_Store
and
convert(varchar,ID_Prod)+
Name_Prod 
like '%'+@ID+'%'  


GO
/****** Object:  StoredProcedure [dbo].[Search_AllProudects]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Search_AllProudects]
@ID NVARCHAR(100)
as
SELECT  
p.ID_Prod AS [رقم الصنف],
p.Name_Prod AS [اسم الصنف],
c.Category_Name as 'النوع',
p.Quantity as 'الكمية' , 
avg(ps.Buy_Price) as 'متوسط سعر الشراء',
p.Quantity * avg(ps.Buy_Price)as 'إجمالى سعر الشراء * الكمية' ,
p.Sales_price as 'سعر البيع' ,
p.Quantity*p.Sales_price as '  إجمالى سعر البيع * الكمية',
p.Barcode as 'رقم الباركود'
FROM  proudects p inner join Category c 
on c.Category_Id=p.ID_Category inner join Product_BuyPrice ps on p.ID_Prod =ps.ID_Product
where  convert(varchar,ID_Prod)+ c.Category_Name + 
Name_Prod 
like '%'+@ID+'%'
group by p.ID_Prod ,p.Name_Prod ,c.Category_Name,p.Quantity,p.Barcode ,p.Sales_price





GO
/****** Object:  StoredProcedure [dbo].[search_barcode]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[search_barcode]
@barcode int
as select
p.ID_Prod ,
p.Name_Prod AS 'اسم الصنف',
c.Category_Name as 'التنصيف' ,
p.Sales_price AS 'سعر البيع',
p.Quantity AS 'الكميه',
p.Barcode as 'رقم الباركود',
p.minimum as 'الحد الادنى',
p.Buy_Price as 'سعر الشراء'
from proudects P inner join Category C
on c.Category_Id=p.ID_Category 
where p.Quantity>0 and Barcode = @barcode


GO
/****** Object:  StoredProcedure [dbo].[Search_Insert_Stock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Search_Insert_Stock]
@Id_Stock int ,
@data_from date ,
@data_to date
as 
select t.Treasury_name as 'إسم الخزنة' ,
 i.Money as 'المبلغ المضاف'  ,
  i.Date as 'تاريخ الايداع' , 
  i.Name as 'إسم المودع' , 
  i.Type as 'نوع الايداع'  ,
  i.Reason as 'سبب الايداع'
from Treasury t inner join  Treasury_Insert i
on t.id_Treasury = i.id_Treasury inner join Treasury_Data d
on t.id_Treasury=d.id_Treasury
where i.id_Treasury=@Id_Stock and convert(date,i.Date) between @data_from and @data_to


GO
/****** Object:  StoredProcedure [dbo].[Search_ProductStore]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Search_ProductStore]
@Id nvarchar(150)
as 
select 
ps.ID_Product as 'رقم الصنف' ,
p.Name_Prod as 'إسم الصنف',
ps.Id_Store as 'رقم المخزن',
s.Store_Name as 'المخزن' ,
ps.Quantity as 'الكمية'
from Product_Store PS inner join Store S
on ps.Id_Store=s.Store_Id inner join proudects P
on p.ID_Prod=ps.ID_Product
where 
p.Name_Prod +s.Store_Name 
like '%'+@Id+'%'
GO
/****** Object:  StoredProcedure [dbo].[Search_PullStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Search_PullStock]
@Id_Stock int ,
@data_from date ,
@data_to date
as
SELECT        
Treasury.Treasury_name as 'إسم الخزنة',
Stock_Pull.Money as 'المبلغ المسحوب', 
Stock_Pull.Date as 'تاريخ السحب',
Stock_Pull.Name as 'إسم السحب', 
Stock_Pull.Type as 'نوع السحب', 
Stock_Pull.Reason as 'سبب السحب'
FROM            Stock_Pull INNER JOIN
Treasury ON Stock_Pull.id_Treasury = Treasury.id_Treasury INNER JOIN
Treasury_Data ON Treasury.id_Treasury = Treasury_Data.id_Treasury
where Stock_Pull.id_Treasury=@Id_Stock and  convert(date,Stock_Pull.Date) between @data_from and @data_to


GO
/****** Object:  StoredProcedure [dbo].[Search_ReportOrderReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Search_ReportOrderReturn]
@DateFrom datetime ,
@DateTo datetime 
as 

SELECT      
OrderReturn.Id_Order as 'رقم الفاتورة' ,
 Customer.Name as 'اسم العميل' , 
proudects.Name_Prod as 'الصنف المرتجع' , 
 OrderReturn.quantity_Return as'الكمية المرتجعة' , 
 OrderReturn.Price as 'السعر' , 
OrderReturn.Amount as 'الاجمالى' , 
OrderReturn.sales_Man as 'الموظف' , 
convert(date,OrderReturn.date_Return) as 'تاريخ المرتجع' 
FROM            Customer INNER JOIN OrderReturn ON Customer.ID_Cust = OrderReturn.Id_Cust INNER JOIN
  proudects ON OrderReturn.ID_Prou = proudects.ID_Prod 
			where convert(date,OrderReturn.date_Return) between convert(date,@DateFrom) and convert(date,@DateTo)
GO
/****** Object:  StoredProcedure [dbo].[Search_ReportReturnPurshasing]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Search_ReportReturnPurshasing]
@DateFrom date ,
@DateTo date
as 
SELECT        
SuppliersReturn.ID_Information AS [رقم الفاتورة],
 Suppliers.Name AS [إسم المورد],
  proudects.Name_Prod AS [الصنف المرتجع],
SuppliersReturn.Return_Quantity AS [الكمية المرتجعة], 
SuppliersReturn.Price AS السعر, SuppliersReturn.Amount AS الاجمالى, SuppliersReturn.Sales_man AS الموظف, 
convert(date,SuppliersReturn.date_Return )AS [تاريخ المرتجع]
from
                         SuppliersReturn  INNER JOIN
                         Suppliers ON SuppliersReturn.Id_Suppliers = Suppliers.Sup_id INNER JOIN
                         proudects ON SuppliersReturn.ID_Prou = proudects.ID_Prod
						 where  
						   convert(date,SuppliersReturn.date_Return )
between convert(date,@DateFrom) and convert(date,@DateTo)
GO
/****** Object:  StoredProcedure [dbo].[SearchCountCusromerOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SearchCountCusromerOrder]
@id nvarchar(50)
as
select c.ID_Cust as'رقم العميل',c.Name as'اسم العميل',  count(o.ID_Cust) as'اجمالي عدد الفواتير',SUM(o.Total_Invoic) as'اجمالي الفواتير'
from Orders o inner join Customer c
on c.ID_Cust=o.ID_Cust
where convert(nvarchar,c.ID_Cust)+Name like '%'+@id+'%'
group by c.ID_Cust,Name
having count(o.ID_Cust)>=10

GO
/****** Object:  StoredProcedure [dbo].[SearchCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SearchCustomer]
@name nvarchar(100)
as
select 
ID_Cust as'رقم العميل',
Name  as'اسم العميل',
Addres as'العنوان',
Phone as'رقم الموبايل'
from Customer
where 
convert(varchar,ID_Cust) +
Name +
Addres
like '%'+@name+'%'




GO
/****** Object:  StoredProcedure [dbo].[SearchListSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SearchListSuppliers]
@ID nvarchar(100)
as
select 
p.ID_Prod as 'رقم الصنف',
p.Name_Prod AS 'اسم الصنف',
c.Category_Name as 'التنصيف' ,								
p.Quantity AS 'الكميه بالمخزن',
p.Buy_Price as 'سعر الشراء',
p.Barcode as 'رقم الباركود' ,
p.Sales_price as 'سعر البيع'
from proudects P inner join Category C
on c.Category_Id=p.ID_Category 
where 
Convert(nvarchar,ID_Prod)+
Name_Prod + c.Category_Name
like '%'+@ID+'%'
GO
/****** Object:  StoredProcedure [dbo].[SearchMovePorduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SearchMovePorduct] 
@Date_From datetime ,
@Date_To datetime,
@ID_Product int 
as
select p.Name_Prod , InComeQty , OutComeQty ,
Bayan,MoveDate ,SalesMan 
from MoveProduct inner join proudects p 
on p.ID_Prod=MoveProduct.Id_Product
where convert (date,MoveDate) between convert (date,@Date_From )and convert (date,@Date_To)
and Id_Product=@ID_Product
GO
/****** Object:  StoredProcedure [dbo].[SearchOrderManagment]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[SearchOrderManagment]
@id  nvarchar(50)
as
select 
o.ID_Order as 'رقم الفاتوره' , c.Name as 'اسم العميل',o.Date_Order as 'تاريخ الفاتوره',o.Total_Invoic as 'اجمالي الفاتوره'

 from Orders o inner join Customer c on c.ID_Cust=o.ID_Cust 

 where convert (nvarchar ,o.ID_Order)+c.Name

   like '%'+@id +'%' 
   and o.Total_Invoic>0


GO
/****** Object:  StoredProcedure [dbo].[SearchOrderManagmentSystem]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  proc [dbo].[SearchOrderManagmentSystem]
@DateFrom date ,
@DateTo date

as
select 
o.ID_Order as 'رقم الفاتوره' , c.Name as 'اسم العميل',convert ( date , o.Date_Order )as 'تاريخ الفاتوره',
o.Total_Invoic as 'اجمالي الفاتوره',o.total_Discount as 'الخصم', o.total_AfterDisc as 'الاجمالي بعد الخصم',
o.pay as 'المدفوع',  o.rent as 'الباقى' , o.SalesMan as 'المستخدم' ,o.Update_User as 'تعديل المستخدم' ,
o.Update_Date as 'تاريخ التعديل'

 from Orders o inner join   Customer c
 on c.ID_Cust=o.ID_Cust 
 where o.Total_Invoic >0   and o.Show='true'
and  convert(date ,o.Date_Order) between convert(date ,@DateFrom )and convert(date, @DateTo)



GO
/****** Object:  StoredProcedure [dbo].[SearchReport_AdjustmentBalanceProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SearchReport_AdjustmentBalanceProduct]
@DateFrom date ,
@DateTo date 
as
select p.Name_Prod as 'الصنف' , ba.Quantity as 'الكمية' , 
 ba.Status as 'الحالة',convert(date,ba.date) as 'التاريخ' , 
 ba.Sales_man as 'الموظف' , ba.note as 'ملاحظات' 
from Balance_Adjutment ba inner join proudects p 
on p.ID_Prod = ba.ID_Product  
where convert(date,ba.date) between CONVERT(date,@DateFrom) and CONVERT(date,@DateTo)
GO
/****** Object:  StoredProcedure [dbo].[SearchReport_ProductTransfair]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SearchReport_ProductTransfair]
@DateFrom date ,
@DateTo date 
as
select p.Name_Prod as 'الصنف' , i.From_StoreNAme as 'من مخزن' , i.To_StoreNAme as 'إلى مخزن',d.unit_name as 'الوحدة'  ,
d.Quantity  as 'الكمية',i.Sales_man as 'الموظف',convert (date ,  i.date_Transfair )as 'التاريخ' , i.note as 'ملاحظات' 
from Transfair_ProductDetails d inner join TransfairProductInformation i 
on i.Id_Transfair =d.Id_Transfair inner join proudects p 
on p.ID_Prod = d.Id_Product
where CONVERT(date, date_Transfair) between CONVERT(date,@DateFrom) and CONVERT(date,@DateTo)
GO
/****** Object:  StoredProcedure [dbo].[SearchSalesReb7]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SearchSalesReb7]
@DateFrom datetime ,
@DateTo datetime 
as 
select
 o.ID_Order as 'رقم الفاتورة',
 p.Name_Prod as 'إسم المنتج',
 o.Quntity as 'الكمية',
 o.Price as 'سعر بيع الفاتورة',
 o.Discount as 'الخصم',
 o.TotalAmount as 'إجمالى البيع بعدالخصم' ,
(o.Quntity)*avg(ps.Buy_price) as ' إجمالى سعر الشراء ',
convert(date,d.Date_Order) as 'تاريخ الفاتورة',
avg(ps.Buy_price) as 'متوسط سعر الشراء'
from OrderDetails o inner join proudects p
on p.ID_Prod = o.ID_Prod inner join Orders d on d.ID_Order=o.ID_Order
inner join Product_BuyPrice ps on p.ID_Prod =ps.ID_Product 
where o.ID_Prod =ps.ID_Product and  convert(date,d.Date_Order) 
between convert(date,@DateFrom) and convert(date,@DateTo)
group by o.ID_Order,p.Name_Prod,o.Quntity,o.Price,o.Discount ,o.TotalAmount ,d.Date_Order
having avg(ps.Buy_price)>=0
GO
/****** Object:  StoredProcedure [dbo].[SearchSalesReb7ForOneStore]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SearchSalesReb7ForOneStore]
@Id_Store int ,
@DateFrom date ,
@DateTo date 
as 
select o.ID_Order as 'رقم الفاتورة'
,s.Store_Name as 'المخزن ',
 p.Name_Prod as 'إسم المنتج',
 o.Unit_Name as 'الوحدة',
 o.Quntity as 'الكمية',
 o.Price as 'سعر بيع الفاتورة',
 o.Discount as 'الخصم',
 o.TotalAmount as 'إجمالى البيع بعدالخصم' ,
(o.Quntity/pu.numInLargeUnit)*avg(ps.Buy_price) as ' إجمالى سعر الشراء ',
convert(date,d.Date_Order) as 'تاريخ الفاتورة'
from OrderDetails o inner join proudects p
on p.ID_Prod = o.ID_Prod inner join Orders d on d.ID_Order=o.ID_Order
inner join Product_Store ps on p.ID_Prod =ps.ID_Product 
inner join Product_Unit pu on p.ID_Prod=pu.Id_Product inner join Unit u on u.Unit_Id = pu.Id_Unit
inner join Store s on s.Store_Id=o.ID_Store
where ps.Id_Store=@Id_Store and o.ID_Prod =pu.Id_Product and o.Unit_Name=u.Unit_Name and convert(date,d.Date_Order) 
between convert(date,@DateFrom) and convert(date,@DateTo)
group by o.ID_Order,s.Store_Name,p.Name_Prod,o.Unit_Name,o.Quntity,o.Price,o.Discount, o.TotalAmount,pu.numInLargeUnit,d.Date_Order
having avg(ps.Buy_price)>=0
 


GO
/****** Object:  StoredProcedure [dbo].[SearchSelectMinmun]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SearchSelectMinmun]
@id nvarchar(50)
as
select p.ID_Prod as 'رقم الصنف',
p.Name_Prod as 'اسم الصنف',
p.Quantity as 'الكمية الحالية'
from proudects P 
where  p.Quantity<=p.minimum and
Name_Prod+
CONVERT(nvarchar,ID_Prod)
like '%'+@id+'%'
GO
/****** Object:  StoredProcedure [dbo].[SearchSuppliermanagement]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[SearchSuppliermanagement]
@id nvarchar(50) 
as 
select
 i.ID as 'رقم الفاتورة',
 s.Name as 'إسم المورد',
 i.date as 'تاريخ الفاتورة',
i.Total_Invoic as 'إجمالى الفاتورة' 
 from Suppliers s inner join suppliersInformation i
 on s.Sup_id=i.Sup_id inner join SuppliersMony m
 on i.ID=m.ID_Information
 where 
 convert(nvarchar,i.ID) +
 s.Name 
 like '%'+@id+'%'
 and i.Total_Invoic >0 and i.show='true'



GO
/****** Object:  StoredProcedure [dbo].[SearchsuppliermanagementSystem]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SearchsuppliermanagementSystem]
@DateFrom date ,
@DateTo date 
as 
select i.ID as 'رقم الفاتورة',
 s.Name as 'إسم المورد',
convert(date,i.date) as 'تاريخ الفاتورة',
i.Total_Invoic as 'إجمالى الفاتورة' ,
i.totalDiscount as'الخصم',
i.totalAfterDicscount as 'اجمالي بعد الخصم',
i.pay as 'المدفوع' ,
i.rent as 'المتبقي',
i.UpdateUser ,
i.UpdateDate 
from Suppliers s inner join suppliersInformation i
on s.Sup_id=i.sup_id  
where convert(date,i.date) between convert(date,@DateFrom) and convert(date,@DateTo)
and i.Total_Invoic>0   and i.show='true'
GO
/****** Object:  StoredProcedure [dbo].[SearchSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE proc [dbo].[SearchSuppliers]
@ID Nvarchar(100)
as
select Sup_id as 'ID',
Name as 'اسم المورد',
Address as'العنوان',
phone as'رقم الموبايل'

from Suppliers 
where 
Name

--like '%m%'
like '%'+@ID+'%'

GO
/****** Object:  StoredProcedure [dbo].[Searech_masrofat]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Searech_masrofat]
@id nvarchar(100)
as 

select 
m.ID_Masrof as 'رقم المصروف' ,
mc.Mastof_Name as 'نوع المصروف' ,
amount as 'المبلغ ' ,
Date as 'التاريخ ' ,
descrpsion as 'ملاحظات' ,
Id_Stock as 'الخزنة',
t.Treasury_name as 'الخزنة',
Sales_man as 'الموظف المسئول',
Id_CountPk  
from Masrofat  M inner join Mastrofat_Category Mc
on Mc.Id_Masrof = m.ID_Masrof inner join Treasury T
on T.id_Treasury=M.Id_Stock
where mc.Mastof_Name+
convert (nvarchar , amount)
like '%'+@id+'%'
GO
/****** Object:  StoredProcedure [dbo].[Searech_masrofatDate]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Searech_masrofatDate]
@Datefrom date ,
@DateTo date 
as 
select 
m.ID_Masrof as 'رقم المصروف' ,
mc.Mastof_Name as 'نوع المصروف' ,
amount as 'المبلغ' ,
convert(date,Date) as 'التاريخ' ,
descrpsion as 'ملاحظات' ,
Id_Stock as 'الخزنة',
t.Treasury_name as 'الخزينة',
Sales_man as 'الموظف المسئول',
Id_CountPk  
from Masrofat  M inner join Mastrofat_Category Mc
on Mc.Id_Masrof = m.ID_Masrof inner join Treasury T
on T.id_Treasury=M.Id_Stock
where convert(date,Date) between @Datefrom and @DateTo


GO
/****** Object:  StoredProcedure [dbo].[Searech_onemasrofatDate]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Searech_onemasrofatDate]
@Id_Masrof int,
@Datefrom date ,
@DateTo date 
as 
select 
m.ID_Masrof as 'رقم المصروف' ,
mc.Mastof_Name as 'نوع المصروف' ,
amount as 'المبلغ' ,
convert(date,Date) as 'التاريخ' ,
descrpsion as 'ملاحظات' ,
Id_Stock as 'الخزنة',
t.Treasury_name as 'الخزينة',
Sales_man as 'الموظف المسئول',
Id_CountPk  
from Masrofat  M inner join Mastrofat_Category Mc
on Mc.Id_Masrof = m.ID_Masrof inner join Treasury T
on T.id_Treasury=M.Id_Stock
where M.ID_Masrof=@Id_Masrof and convert(date,Date) between @Datefrom and @DateTo


GO
/****** Object:  StoredProcedure [dbo].[Select_Category]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_Category]
as
select  Category_Id as 'رقم التصنيف', Category_Name as 'إسم التصنيف' 
 from Category
 where show='true'
GO
/****** Object:  StoredProcedure [dbo].[Select_ComboCategory]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[Select_ComboCategory]
 as 
select  Category_Id , Category_Name
 from Category
  where show='true'
GO
/****** Object:  StoredProcedure [dbo].[select_ComboProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[select_ComboProduct]
as 
select ID_Prod ,Name_Prod
from proudects
where show='true'


GO
/****** Object:  StoredProcedure [dbo].[Select_ComboStore]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[Select_ComboStore]
 as 
select  Store_Id , Store_Name
 from Store
GO
/****** Object:  StoredProcedure [dbo].[Select_ComboUnit]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[Select_ComboUnit]
 as 
select  Unit_Id , Unit_Name
 from Unit
GO
/****** Object:  StoredProcedure [dbo].[Select_CustomerBalance]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_CustomerBalance] 
@Id_Cust int 
as 
select c.Name as 'إسم العميل' , ct.Total_Balance as 'الرصيد على العميل' 
 from Customer C inner join Customer_TotalMoney Ct
 on c.ID_Cust =Ct.Id_Cust 
 where ct.Id_Cust=@Id_Cust
GO
/****** Object:  StoredProcedure [dbo].[Select_Deleted_Orders]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_Deleted_Orders]
@DateFrom date ,
@DateTo date 
as
select 
o.ID_Order as 'رقم الفاتوره' , c.Name as 'اسم العميل',convert ( date , o.Date_Order )as 'تاريخ الفاتوره',
o.Total_Invoic as 'اجمالي الفاتوره',o.total_Discount as 'الخصم', o.total_AfterDisc as 'الاجمالي بعد الخصم',
o.pay as 'المدفوع',  o.rent as 'الباقى' 

 from Orders o inner join   Customer c
 on c.ID_Cust=o.ID_Cust 
 where   o.Show='false' and  convert ( date , o.Date_Order ) between @DateFrom and  @DateTo
GO
/****** Object:  StoredProcedure [dbo].[Select_DepitSupplier]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Select_DepitSupplier]
as 
select s.Sup_id as 'رقم المورد', s.Name as 'إسم المورد' , m.Total_Balance as 'المبلغ المتبقي له'
from Suppliers s inner join Supplier_Totalmoney m
on s.Sup_id=m.Id_Supplier
where Total_Balance>0
GO
/****** Object:  StoredProcedure [dbo].[Select_IdCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_IdCustomer]
as 
select  (max (ID_Cust))
from Customer
GO
/****** Object:  StoredProcedure [dbo].[Select_LastIdStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Select_LastIdStock]
as 
select max(id_Treasury)+1
from Treasury


GO
/****** Object:  StoredProcedure [dbo].[Select_LastIdSupplier]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_LastIdSupplier] 
as 
select ISNULL(MAX(Sup_id ),1)
from  Suppliers
GO
/****** Object:  StoredProcedure [dbo].[Select_LastIdTranfair]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_LastIdTranfair]
as
select (MAX(tp.Id_Transfair))
from TransfairProductInformation tp
GO
/****** Object:  StoredProcedure [dbo].[Select_masrofat]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Select_masrofat]
as 
select 
m.ID_Masrof as 'رقم المصروف' ,
mc.Mastof_Name as 'نوع المصروف' ,
amount as 'المبلغ' ,
Date as 'التاريخ' ,
descrpsion as 'ملاحظات' ,
Id_Stock as 'الخزنة',
t.Treasury_name as 'الخزينة',
Sales_man as 'الموظف المسئول',
Id_CountPk  
from Masrofat  M inner join Mastrofat_Category Mc
on Mc.Id_Masrof = m.ID_Masrof inner join Treasury T
on T.id_Treasury=M.Id_Stock
GO
/****** Object:  StoredProcedure [dbo].[Select_MasrofatCategory]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Select_MasrofatCategory]
as 
select Id_MAsrof, Mastof_Name
from 	Mastrofat_Category
GO
/****** Object:  StoredProcedure [dbo].[Select_MoneyForCashir]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_MoneyForCashir]
@UserName nvarchar(50),
@Date date ,
@TimeFrom time ,
@TimeTo time 
as
select 
Prise,
cast( Date as date )as dates,
cast( Date as time)as  times ,
Type,
Bean,
userName,
moveStock
from StockMove
where userName=@UserName and cast (Date as date)= @Date  
and cast(Date as time) between @TimeFrom   and  @TimeTo 
GO
/****** Object:  StoredProcedure [dbo].[Select_MoneyForUsers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_MoneyForUsers]
@UserName nvarchar(50),
@DateFrom datetime ,
@DateTo datetime 
as
select 
Prise,
cast( Date as date)as dates,
format(convert(datetime,Date),N'hh:mm tt ','ar') as times,
Type,
Bean,
userName,
moveStock,
Date
from StockMove
where userName=@UserName and Date   between  @DateFrom 
and @DateTo 
GO
/****** Object:  StoredProcedure [dbo].[Select_MoneyMasrof]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Select_MoneyMasrof]
@Id_Count int 
as 
select
 ID_Masrof ,
amount  ,
Id_Stock 
from Masrofat
where Id_CountPk  =@Id_Count

GO
/****** Object:  StoredProcedure [dbo].[Select_moneyStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_moneyStock]
@id_Treasury int

as
select Money  
from Treasury_Data
where id_Treasury=@id_Treasury 

GO
/****** Object:  StoredProcedure [dbo].[Select_OldReturnOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_OldReturnOrder]
@id int 
as
SELECT      
 OT.Id_Order as 'رقم الفاتورة',
 C.Name as 'إسم العميل', 
 p.Name_Prod as 'إسم الصنف', 
 ot.quantity_Return as 'الكمية المرتجعة' ,
ot.Price as 'السعر' , 
ot.Amount as 'الاجمالى' , 
 OT.sales_Man as 'الموظف المسئول',
 OT.date_Return as'تاريخ المرتجع'
FROM            
OrderReturn OT   INNER JOIN
Customer C  ON C.ID_Cust = OT.ID_Cust inner join proudects P on p.ID_Prod = ot.ID_Prou
where OT.Id_Order = @id

GO
/****** Object:  StoredProcedure [dbo].[Select_OldReturnSupplier]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Select_OldReturnSupplier]
@ID_Information int 
as 
select sr.ID_Information as 'رقم الفاتورة' , p.Name_Prod as ' الصنف المرتجع من قبل' , 
sr.Return_Quantity as 'الكمية المرتجعة' ,sr.Sales_man as 'الموظف المسئول ' ,sr.date_Return as 'تاريخ المرتجع' 
from SuppliersReturn sr inner join proudects p 
on p.ID_Prod = sr.ID_Prou
where sr.ID_Information=@ID_Information
GO
/****** Object:  StoredProcedure [dbo].[Select_Onemasrofat]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Select_Onemasrofat]
@Id_Masrof int
as 
select 
m.ID_Masrof as 'رقم المصروف' ,
mc.Mastof_Name as 'نوع المصروف' ,
amount as 'المبلغ ' ,
Date as 'التاريخ ' ,
descrpsion as 'ملاحظات' ,
Id_Stock as 'الخزنة',
t.Treasury_name as 'الخزنة',
Sales_man as 'الموظف المسئول',
Id_CountPk  
from Masrofat  M inner join Mastrofat_Category Mc
on Mc.Id_Masrof = m.ID_Masrof inner join Treasury T
on T.id_Treasury=M.Id_Stock
where M.ID_Masrof=@Id_Masrof
GO
/****** Object:  StoredProcedure [dbo].[Select_OrderForCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Select_OrderForCustomer]
@Id_Customer int 
as 
select o.ID_Order as 'رقم الفاتورة' ,c.Name as 'إسم العميل' ,  o.Total_Invoic as 'إجمالى الفاتورة' ,o.pay as 'المدفوع' ,
 o.SalesMan as 'الموظف المسئول' ,o.Date_Order as ' تاريخ الفاتورة'
from Orders O inner join Customer C 
on C.ID_Cust =o.ID_Cust
where o.ID_Cust=@Id_Customer 
GO
/****** Object:  StoredProcedure [dbo].[Select_ProductForButton]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_ProductForButton]
@idCategory int
as 
select ID_Prod , Name_Prod  ,Image,proudects.Sales_price
from proudects 
where ID_Category=@idCategory and Quantity>0 and   show='true'
GO
/****** Object:  StoredProcedure [dbo].[Select_ProductForButtonSupplier]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_ProductForButtonSupplier]
@idCategory int
as 
select ID_Prod , Name_Prod  ,Image,Buy_Price
from proudects 
where ID_Category=@idCategory and show='true'
GO
/****** Object:  StoredProcedure [dbo].[Select_ProductForButtonSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[Select_ProductForButtonSuppliers]
@ID_Prod int
as
select 
p.ID_Prod as 'رقم الصنف',
p.Name_Prod AS 'اسم الصنف',
c.Category_Name as 'التنصيف' ,								
p.Quantity AS 'الكميه بالمخزن',
p.Buy_Price as 'سعر الشراء',
p.Barcode as 'رقم الباركود' ,
p.Sales_price as 'سعر البيع'
from proudects P inner join Category C
on c.Category_Id=p.ID_Category 
where 
ID_Prod=@ID_Prod
GO
/****** Object:  StoredProcedure [dbo].[Select_ProductFormCategory]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_ProductFormCategory]
@idcategory  int
as
select proudects.ID_Prod ,proudects.Name_Prod from proudects inner join Category
on Category.Category_Id=proudects.Id_Category
where proudects.Id_Category=@idcategory and proudects.Quantity>0 and proudects.show='true'
GO
/****** Object:  StoredProcedure [dbo].[Select_ProductFormStoreForSale]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_ProductFormStoreForSale]
as 
select ID_Prod , Name_Prod  
from proudects 
GO
/****** Object:  StoredProcedure [dbo].[Select_ProductFromStore]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Select_ProductFromStore]
@Id_Product int 
as 
select Id_Store,s.Store_Name , ps.Quantity ,ps.Buy_price  
from Product_Store PS  inner join Store S
on S.Store_Id = PS.Id_Store
where PS.ID_Product=@Id_Product
GO
/****** Object:  StoredProcedure [dbo].[Select_ProductQuntity]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_ProductQuntity]
@Id_Product int 
as 
select Quantity
from proudects
where ID_Prod=@Id_Product
GO
/****** Object:  StoredProcedure [dbo].[Select_ProductStore]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Select_ProductStore]
@Id_Product int 
as 
select 
ps.ID_Product 
from Product_BuyPrice PS
where   ps.ID_Product=@Id_Product
GO
/****** Object:  StoredProcedure [dbo].[select_Stock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[select_Stock]
as
select t.id_Treasury as 'رقم الخزنة' , Treasury_name as 'إسم الخزنة' ,d.Money as 'الرصيد الحالى'
from Treasury t inner join Treasury_Data d
on t.id_Treasury = d.id_Treasury


GO
/****** Object:  StoredProcedure [dbo].[Select_Store]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_Store]
as
select  Store_Id as 'رقم المخزن', Store_Name as 'إسم المخزن' 
 from Store
GO
/****** Object:  StoredProcedure [dbo].[select_SupplierBalance]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[select_SupplierBalance] 
@Id_Supplier int 
as 
select s.Name as 'إسم المورد' ,st.Total_Balance as 'حساب المورد'
from Supplier_Totalmoney st inner join Suppliers s 
on s.Sup_id=st.Id_Supplier
where Id_Supplier=@Id_Supplier
GO
/****** Object:  StoredProcedure [dbo].[Select_SupplierInformationForSupplier]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Select_SupplierInformationForSupplier]
@ID_Supplier int 
as 
select si.ID as 'رقم الفاتورة' , si.Total_Invoic as 'إجمالى الفاتورة' , si.pay as 'المدفوع ' ,
si.rent as ' المتبقي' ,si.SalesMan as 'الموظف المسئول' ,si.date as 'تاريخ الفاتورة'
from suppliersInformation si 
where si.sup_id=@ID_Supplier
GO
/****** Object:  StoredProcedure [dbo].[Select_Unit]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_Unit]
as
select  Unit_Id as 'رقم الوحدة', Unit_Name as 'إسم الوحدة' 
 from Unit

GO
/****** Object:  StoredProcedure [dbo].[SelectAsol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectAsol]
AS
select ID,Asl, Value, Date
FROM Asol



GO
/****** Object:  StoredProcedure [dbo].[SelectAsolByID]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectAsolByID]
@idAsl int
AS
SELECT       asol.Asl, asol.Value ,isnull(sum(EhalaktAsol.Ehalak_Value),0) as 'Ehalak_Value'
FROM            asol full outer JOIN
                         EhalaktAsol ON asol.ID = EhalaktAsol.Asl_ID
						 where asol.ID=@idAsl
						 group by  asol.Asl, asol.Value

						



						
GO
/****** Object:  StoredProcedure [dbo].[SelectAverageBuyPrice]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[SelectAverageBuyPrice]
 @formdate date,
@todate date
 as 
 select p.Name_Prod,avg(pb.Buy_price)
 from Product_BuyPrice pb inner join proudects p 
 on p.ID_Prod=pb.ID_Product   cross join Orders
 where  cast(Orders.Date_Order as date) between @formdate and @todate 
 group by   p.Name_Prod 
 order by Name_Prod 

GO
/****** Object:  StoredProcedure [dbo].[SelectBuyPriceFromProductStore]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectBuyPriceFromProductStore] 
@Id_Product int ,
@ID_Store int ,
@Buy_Price decimal(18,2)
as
select ps.Buy_price
from Product_Store ps
where ps.ID_Product=@Id_Product and ps.Id_Store=@ID_Store and ps.Buy_price=@Buy_Price 
GO
/****** Object:  StoredProcedure [dbo].[SelectCompoCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectCompoCustomer] 
as
select
o.Id_Cust,
Name 
 from Customer c inner join Customer_TotalMoney o
 on c.ID_Cust = o.Id_Cust 
 where o.Total_Balance >0
 
GO
/****** Object:  StoredProcedure [dbo].[SelectCustName]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[SelectCustName]
 as 
 select ID_Cust,Name , Phone
 from Customer 
GO
/****** Object:  StoredProcedure [dbo].[SelectCustNameSarfPay]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[SelectCustNameSarfPay]
 as 
 select c.ID_Cust,c.Name 
 from Customer c inner join Customer_TotalMoney ct
 on c.ID_Cust=ct.Id_Cust
 where ct.Total_Balance<0
GO
/****** Object:  StoredProcedure [dbo].[SelectCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectCustomer]
as
select 
ID_Cust as'رقم العميل',
Name  as'اسم العميل',
Addres as'العنوان',
Phone as'رقم الموبايل'
from Customer



GO
/****** Object:  StoredProcedure [dbo].[SelectCustomerOrderMony]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectCustomerOrderMony]
@id int
as
select  o.ID_Order as 'رقم الفاتورة' ,c.Name as 'اسم العميل' ,o.rent as  'المبلغ ' ,d.Date_Order as 'تاريخ الفاتورة' from OrderMony o inner join Customer c 
on c.ID_Cust=o.ID_Cast
inner join Orders d 
on d.ID_Order = o.ID_Order
where c.ID_Cust=@id and o.rent>0



GO
/****** Object:  StoredProcedure [dbo].[SelectDepit]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectDepit]
as
select  c.ID_Cust as 'رقم العميل',c.Name as 'اسم العميل' ,o.Total_Balance as  'المبلغ'  
from Customer c inner join Customer_TotalMoney o
on c.ID_Cust=o.Id_Cust
where Total_Balance>0


GO
/****** Object:  StoredProcedure [dbo].[SelectEhalakAsolByDate]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectEhalakAsolByDate]
@fromDate date,
@ToDate date
as

SELECT       asol.Asl, EhalaktAsol.Ehalak_Value, EhalaktAsol.Date
FROM            asol INNER JOIN
                         EhalaktAsol ON asol.ID = EhalaktAsol.Asl_ID
						 where cast(EhalaktAsol.Date as date) between @fromDate and @ToDate
						 
GO
/****** Object:  StoredProcedure [dbo].[selectEhlakatAsol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectEhlakatAsol]
as

SELECT       EhalaktAsol.ID_Ehlak, asol.Asl, asol.ID, asol.Value, EhalaktAsol.Date, EhalaktAsol.Ehalak_Value
FROM            asol INNER JOIN
                         EhalaktAsol ON asol.ID = EhalaktAsol.Asl_ID
GO
/****** Object:  StoredProcedure [dbo].[SelectIdOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectIdOrder]
 as
 select ID_Order from Orders
 where Total_Invoic>0  and Show='true'



GO
/****** Object:  StoredProcedure [dbo].[SelectIdSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectIdSuppliers]
as
select s.ID
from suppliersInformation s
where s.Total_Invoic>0



GO
/****** Object:  StoredProcedure [dbo].[selectIDUser]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectIDUser]
as

select ID from users



GO
/****** Object:  StoredProcedure [dbo].[selectItemsFirstTerm]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectItemsFirstTerm]
as

select    Name_Prod, Quantity, Buy_Price, incomeDate ,Quantity*Buy_Price as 'اجمالي شراء'
FROM            ItemsFirstTerm
GO
/****** Object:  StoredProcedure [dbo].[selectItemsFirstTermByID]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[selectItemsFirstTermByID]
@ID_Prod int
as

select    Name_Prod, Quantity, Buy_Price, incomeDate ,Quantity*Buy_Price as 'اجمالي شراء'
FROM            ItemsFirstTerm

where ID_Prod=@ID_Prod
GO
/****** Object:  StoredProcedure [dbo].[selectLastBarcode]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[selectLastBarcode]
as
select BarCode
from Random_Barcode


GO
/****** Object:  StoredProcedure [dbo].[selectListProudect]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[selectListProudect]
@Id_Prodcut int  
as
select 
p.ID_Prod ,
p.Name_Prod AS 'اسم الصنف',
c.Category_Name as 'التنصيف' ,
p.Sales_price AS 'سعر البيع',
p.Quantity AS 'الكميه',
p.Barcode as 'رقم الباركود',
p.minimum as 'الحد الادنى'
from proudects P inner join Category C
on c.Category_Id=p.ID_Category 
where p.Quantity>0 and p.ID_Prod=@Id_Prodcut
GO
/****** Object:  StoredProcedure [dbo].[SelectListSuppliersForPursh]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectListSuppliersForPursh]
@idProud int
as
select 
p.ID_Prod as 'رقم الصنف', 
p.Name_Prod AS 'اسم الصنف',
c.Category_Name as 'النوع' ,								

p.Buy_Price as 'سعر الشراء',
p.Quantity AS 'الكميه',
p.Barcode as 'رقم الباركود' ,
p.Sales_price as 'سعر البيع'
from proudects P inner join Category C
on c.Category_Id=p.ID_Category 

where p.ID_Prod=@idProud 
GO
/****** Object:  StoredProcedure [dbo].[SelectLogin]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectLogin]
@id nvarchar(50)


as
select u.ID as 'اسم المستخدم',l.LogIn as 'الدخول' ,o.LogOut as ' الخروج'
from users u inner join   Login l
on u.ID=l.ID_User inner join LogOut o
on l.ID_Login=o.ID_Login
where u.ID=@id



GO
/****** Object:  StoredProcedure [dbo].[SelectMinmun]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectMinmun]
as
select p.ID_Prod as 'رقم الصنف',
p.Name_Prod as 'اسم الصنف',
p.Quantity as 'الكمية الحالية'
from proudects P 
where  p.Quantity<=p.minimum and show='true'

GO
/****** Object:  StoredProcedure [dbo].[selectMoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectMoney]
as
select * from money
GO
/****** Object:  StoredProcedure [dbo].[SelectMovePorduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SelectMovePorduct] 
@Bayan nvarchar(50)
as 
select * from MoveProduct
where Bayan=@Bayan
GO
/****** Object:  StoredProcedure [dbo].[SelectOneSuppliersMony]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectOneSuppliersMony]
@id_sup int 

as
select  i.ID as 'رقم الفاتورة' ,s.Name as 'اسم العميل' ,o.rent as  'المبلغ ' ,i.date as 'تاريخ الفاتورة' 
from SuppliersMony o inner join Suppliers s
on s.Sup_id=o.ID_Supp
inner join suppliersInformation i
on i.ID = o.ID_Information
where  o.ID_Supp=@id_sup   and o.rent>0



GO
/****** Object:  StoredProcedure [dbo].[selectOpeniningBalance]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectOpeniningBalance]
@type nvarchar(100)


as
if @type=N'عميل'
begin

SELECT      Customer.ID_Cust , Customer.Name, Openingbalance.Moneydiscount, Openingbalance.Moneyadd, Openingbalance.date, Openingbalance.bayan
FROM            Customer INNER JOIN
                         Openingbalance ON Customer.ID_Cust = Openingbalance.id_Cust

						 end
						 else if @type=N'مورد'
						 begin
						 
SELECT      Suppliers.Sup_id , Suppliers.Name, Openingbalance.Moneydiscount, Openingbalance.Moneyadd, Openingbalance.date, Openingbalance.bayan
FROM            Suppliers INNER JOIN
                         Openingbalance on Suppliers.Sup_id = Openingbalance.id_Supp
						 end
GO
/****** Object:  StoredProcedure [dbo].[SelectOrderData]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectOrderData]
@Id_Order int 
as 
select * from Orders
where ID_Order =@Id_Order
GO
/****** Object:  StoredProcedure [dbo].[SelectOrderManagment]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectOrderManagment]
as
select 
o.ID_Order as 'رقم الفاتوره' , c.Name as 'اسم العميل',convert ( date , o.Date_Order )as 'تاريخ الفاتوره',
o.Total_Invoic as 'اجمالي الفاتوره',o.total_Discount as 'الخصم', o.total_AfterDisc as 'الاجمالي بعد الخصم',
o.pay as 'المدفوع',  o.rent as 'الباقى' , o.SalesMan as 'المستخدم' ,o.Update_User as 'تعديل المستخدم' ,
o.Update_Date as 'تاريخ التعديل'

 from Orders o inner join   Customer c
 on c.ID_Cust=o.ID_Cust 
 where o.Total_Invoic >0  and o.Show='true'
GO
/****** Object:  StoredProcedure [dbo].[SelectOrderMony]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectOrderMony]

as
select  c.Name as 'اسم العميل' ,sum( o.rent) as  'المبلغ ' 
from OrderMony o inner join Customer c 
on c.ID_Cust=o.ID_Cast inner join Orders d 
on d.ID_Order = o.ID_Order
where (o.rent)>0
group by  c.Name 
having sum( o.rent)>0


GO
/****** Object:  StoredProcedure [dbo].[SelectOrderReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectOrderReturn]
@id int 
as
SELECT      
  Orders.ID_Order,
  Orders.ID_Cust ,
 Customer.Name, 
 Orders.Date_Order, 
 Orders.Discraption,
  Orders.SalesMan,
   Orders.Total_Invoic, 
   Orders.pay,
    Orders.rent ,
 Orders.Id_Stock,
 Orders.AddService,
 Orders.AddNa2l,
 Orders.total_Discount,
 Orders.total_AfterDisc,
 t.Treasury_name
FROM            
Orders  INNER JOIN
Customer ON Orders.ID_Cust = Customer.ID_Cust inner join Treasury t 
on t.id_Treasury= Orders.Id_Stock
where Orders.ID_Order = @id
GO
/****** Object:  StoredProcedure [dbo].[SelectPersonaldrawal]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectPersonaldrawal]
@data_from date,
@data_to date
as
SELECT       StockMove.Prise, StockMove.Date, StockMove.Type, StockMove.Bean, Treasury.Treasury_name,
StockMove.userName
FROM            StockMove INNER JOIN
                         Treasury ON StockMove.StockID = Treasury.id_Treasury
where Type =N'مسحوبات شخصية' or Type =N'رد مبلغ مسحوب'  and cast(Date as date) between @data_from and @data_to
GO
/****** Object:  StoredProcedure [dbo].[SelectProdRuturnOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectProdRuturnOrder]
@id int
as
SELECT      
Orders.ID_Order as 'رقم الفاتورة', 
proudects.ID_Prod as 'رقم الصنف',
proudects.Name_Prod as 'اسم الصنف',
OrderDetails.Price as 'السعر',
OrderDetails.Quntity as 'الكميه',
OrderDetails.Amount as 'الأجمالي',
OrderDetails.Discount as 'الخصم', 
OrderDetails.TotalAmount as 'الاجمالي بعد الخصم'

FROM            OrderDetails INNER JOIN
                         Orders ON OrderDetails.ID_Order = Orders.ID_Order INNER JOIN
                         proudects ON OrderDetails.ID_Prod = proudects.ID_Prod 
						
						
						 where Orders.ID_Order = @id
GO
/****** Object:  StoredProcedure [dbo].[SelectProductForButtonSupp]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SelectProductForButtonSupp]
@idCategory int
as 
select ID_Prod , Name_Prod  ,Image,proudects.Buy_Price
from proudects 
where ID_Category=@idCategory and   show='true'
GO
/****** Object:  StoredProcedure [dbo].[SelectProductForUpdate]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectProductForUpdate]
@id int
as
SELECT 
Suppliers_Details.ID_Prod as 'رقم الصنف',
proudects.Name_Prod as 'اسم الصنف',
proudects.Id_Category as 'النوع',
Suppliers_Details.Price as 'السعر',
Suppliers_Details.Quntity as 'الكميه',
 Suppliers_Details.Amount as 'الأجمالي',
 Suppliers_Details.Discount as 'الخصم',  
 Suppliers_Details.TotalAmount as 'الاجمالي بعد الخصم',
 proudects.Barcode as 'رقم الباركود',
 proudects.Sales_price as 'سعر البيع'

FROM Suppliers_Details INNER JOIN
suppliersInformation ON Suppliers_Details.ID = suppliersInformation.ID INNER JOIN
proudects ON Suppliers_Details.ID_Prod = proudects.ID_Prod
 where     suppliersInformation.ID=@id
GO
/****** Object:  StoredProcedure [dbo].[SelectProductsRteurn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectProductsRteurn]
@id int
as
SELECT 
suppliersInformation.ID as 'رقم الفاتورة' , 
Suppliers_Details.ID_Prod as 'رقم الصنف',
proudects.Name_Prod as 'اسم الصنف',
Suppliers_Details.Price as 'السعر',
Suppliers_Details.Quntity as 'الكميه',
 Suppliers_Details.Amount as 'الاجمالي',
 Suppliers_Details.Discount as 'الخصم',  
 Suppliers_Details.TotalAmount as 'الاجمالي بعد الخصم'
 ,proudects.Id_Category as 'القسم'
FROM Suppliers_Details INNER JOIN
suppliersInformation ON Suppliers_Details.ID = suppliersInformation.ID INNER JOIN
proudects ON Suppliers_Details.ID_Prod = proudects.ID_Prod
 where     suppliersInformation.ID=@id
GO
/****** Object:  StoredProcedure [dbo].[SelectProdUpdateOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SelectProdUpdateOrder]
@id int
as
SELECT       
proudects.ID_Prod as 'رقم الصنف',
proudects.Name_Prod as 'اسم الصنف',
Category.Category_Name as'النوع',
OrderDetails.Price as 'السعر',
OrderDetails.Quntity as 'الكميه',
OrderDetails.Amount as 'الأجمالي',
OrderDetails.Discount as 'الخصم', 
OrderDetails.TotalAmount as 'الاجمالي بعد الخصم'

FROM            OrderDetails INNER JOIN
                         Orders ON OrderDetails.ID_Order = Orders.ID_Order INNER JOIN
                         proudects ON OrderDetails.ID_Prod = proudects.ID_Prod inner join Category 
						 on Category.Category_Id=proudects.Id_Category
						
						 where Orders.ID_Order = @id
GO
/****** Object:  StoredProcedure [dbo].[selectProudect]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectProudect]
as
select 
ID_Prod as 'رقم الصنف' ,
Name_Prod as 'إسم الصنف' , 
c.Category_Name as 'التصنيف' ,
Quantity as'الكمية' ,
Sales_price as 'سعر البيع' ,
Buy_Price as 'سعر الشراء' ,
minimum as 'الحد الادنى' , 
Color as 'المقاس' , 
Barcode as 'رقم الباركود' ,
 Image
from proudects p  inner join Category c
	on c.Category_Id=p.Id_Category
	where c.show='true' and p.show='true'
GO
/****** Object:  StoredProcedure [dbo].[selectProudectByBarcode]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[selectProudectByBarcode]
as
select 
ID_Prod as 'رقم الصنف' ,
Name_Prod as 'إسم الصنف' , 
c.Category_Name as 'التصنيف' ,
Quantity as'الكمية' ,
Sales_price as 'سعر البيع' ,
Buy_Price as 'سعر الشراء' ,
minimum as 'الحد الادنى' , 
Color as 'المقاس' , 
Barcode as 'رقم الباركود' ,
 Image
from proudects p  inner join Category c
	on c.Category_Id=p.Id_Category
	where c.show='true' and p.show='true' and Barcode !='' or Barcode !=null
GO
/****** Object:  StoredProcedure [dbo].[SelectQuantityMinmun]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectQuantityMinmun]
@idProd int
as
select Name_Prod,Quantity,minimum
from proudects 
where ID_Prod=@idProd and Quantity<=minimum

GO
/****** Object:  StoredProcedure [dbo].[SelectQuantityOFProductFromOrderReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectQuantityOFProductFromOrderReturn]
@IdOrder int ,
@ID_Product int 
as 
select * from OrderReturn
where Id_Order=@IdOrder and ID_Prou=@ID_Product
GO
/****** Object:  StoredProcedure [dbo].[SelectQuantityOFProductFromSuppliersReturn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectQuantityOFProductFromSuppliersReturn]
@IdOrder int ,
@ID_Product int 
as 
select * from SuppliersReturn
where ID_Information=@IdOrder and ID_Prou=@ID_Product
GO
/****** Object:  StoredProcedure [dbo].[SelectReport_CustomerAccountStatement]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectReport_CustomerAccountStatement]
@Id_Customer int 
as 
select c.Name as 'إسم العميل' ,cs.Da2n as'دائن ',cs.maden as 'مدين', cs.balance as'الرصيد',cs.elbyan as'البيان' 
,cast (cs.DATA as date) as 'التاريخ'
from CustomerStatmentAccount Cs inner join Customer C
on C.ID_Cust=Cs.ID_Cast inner join Customer_TotalMoney CD on C.ID_Cust=Cd.Id_Cust
where cs.ID_Cast =@Id_Customer 

GO
/****** Object:  StoredProcedure [dbo].[SelectReport_SupplierAccountStatement]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SelectReport_SupplierAccountStatement]
@Id_Supplier int 
as 
select c.Name as 'إسم المورد' ,SA.Da2n as 'دائن' ,SA.maden  as'مدين', SA.balance  as 'الرصيد' ,SA.elbyan as'البيان' ,cast (SA.date as date) as 'التاريخ'
from SupplierStatmentAccount SA inner join Suppliers C
on C.Sup_id=SA.Id_Supplier inner join Supplier_Totalmoney CD on C.Sup_id=CD.Id_Supplier
where SA.Id_Supplier =@Id_Supplier 

GO
/****** Object:  StoredProcedure [dbo].[selectReturnOrderUnUsed]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[selectReturnOrderUnUsed]
@idorder int
as

select ID_Prou,quantity
from ReturnOrderUnUsed
where ID_Order=@idorder

GO
/****** Object:  StoredProcedure [dbo].[SelectRevenueOther]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectRevenueOther]
@data_from date,
@data_to date
as
SELECT       StockMove.Prise, StockMove.Date, StockMove.Type, StockMove.Bean, Treasury.Treasury_name,
StockMove.userName
FROM            StockMove INNER JOIN
                         Treasury ON StockMove.StockID = Treasury.id_Treasury
where Type =N'ايرادات اخرى'  and cast(Date as date) between @data_from and @data_to
GO
/****** Object:  StoredProcedure [dbo].[SelectRptStock_tansfair]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectRptStock_tansfair]
@data_from date,
@data_to date
as
SELECT  money as'المبلغ',Date as'التاريخ',From_ as'من خزينة',To_ as'الي خزينة',Name as'اسم المستخدم',Reason as'السبب'
from Stock_tansfair
where  cast(Date as date) between @data_from and @data_to
GO
/****** Object:  StoredProcedure [dbo].[selectRptUserMove]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectRptUserMove]
@fromDate date,
@ToDate date
as


select      UserName, ScreenName, TypeMove,convert(date,MoveDate) as date,format(convert(datetime,MoveDate),N'hh:mm tt ','ar') as time
FROM            MoveUser
where cast(MoveDate as date)between @fromDate and @ToDate 
order by UserName asc
GO
/****** Object:  StoredProcedure [dbo].[SelectSalesReb7]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectSalesReb7]
@formdate date,
@todate date
as
select
 p.Name_Prod ,
isnull(sum( o.Quntity),0) as 'quantitySales',
isnull(sum(o.Amount),0)as 'totalBeforDiscount',
isnull(sum( o.Discount),0) as 'Discount',
isnull(sum( o.TotalAmount),0) as 'totalAfterDiscount' 
from OrderDetails o inner join proudects p
on p.ID_Prod = o.ID_Prod inner join Orders od
on od.ID_Order=o.ID_Order
 where cast(od.Date_Order as date) between @formdate and @todate
group by   p.Name_Prod 
 order by Name_Prod asc


 
GO
/****** Object:  StoredProcedure [dbo].[SelectSalesReb7foroneStore]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectSalesReb7foroneStore]
@Id_Store int 
as 
select o.ID_Order as 'رقم الفاتورة'
,s.Store_Name as 'المخزن ',
 p.Name_Prod as 'إسم المنتج',
  o.Unit_Name as 'الوحدة',
 o.Quntity as 'الكمية',
  o.Price as 'سعر بيع الفاتورة',
 o.Discount as 'الخصم',
 o.TotalAmount as 'إجمالى البيع بعدالخصم' ,
(o.Quntity/pu.numInLargeUnit)*avg(ps.Buy_price) as ' إجمالى سعر الشراء ',
convert(date,d.Date_Order) as 'تاريخ الفاتورة'
from OrderDetails o inner join proudects p
on p.ID_Prod = o.ID_Prod inner join Orders d on d.ID_Order=o.ID_Order
inner join Product_Store ps on p.ID_Prod =ps.ID_Product 
inner join Product_Unit pu on p.ID_Prod=pu.Id_Product inner join Unit u on u.Unit_Id = pu.Id_Unit inner join 
Store s on s.Store_Id=o.ID_Store
where ps.Id_Store=@Id_Store and o.ID_Prod =pu.Id_Product and o.Unit_Name=u.Unit_Name
group by o.ID_Order,s.Store_Name,p.Name_Prod,o.Unit_Name,o.Quntity,o.Price,o.Discount ,o.TotalAmount,pu.numInLargeUnit,d.Date_Order
having avg(ps.Buy_price)>=0


GO
/****** Object:  StoredProcedure [dbo].[SelectSettingPrintOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectSettingPrintOrder]
as
SELECT [Name_Company]
      ,[Addres]
      ,[Bottom_Note]
      ,[Phone1]
      ,[Phone2]
  FROM [dbo].[Setting_PrintOrder]




GO
/****** Object:  StoredProcedure [dbo].[selectStoreValue]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[selectStoreValue]
as
select * from StoreValue
where ID=1
GO
/****** Object:  StoredProcedure [dbo].[SelectSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SelectSuppliers]
as
select Sup_id as 'ID',
Name as 'اسم المورد',
Address as'العنوان',
phone as'رقم الموبايل'
from Suppliers



GO
/****** Object:  StoredProcedure [dbo].[SelectSuppliersMony]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectSuppliersMony]

as
select  s.Name as 'اسم العميل' ,sum(o.rent) as  'المبلغ ' 
from SuppliersMony o inner join Suppliers s
on s.Sup_id=o.ID_Supp
inner join suppliersInformation i
on i.ID = o.ID_Information
where o.rent>0  
group by  s.Name
having sum(o.rent)>0


GO
/****** Object:  StoredProcedure [dbo].[SelectSuppliersRteurn]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectSuppliersRteurn]
@id int
as
			
SELECT suppliersInformation.ID,
Suppliers.Name,
suppliersInformation.sup_id,
suppliersInformation.Total_Invoic,
suppliersInformation.pay,
suppliersInformation.rent,
suppliersInformation.id_stock,
suppliersInformation.totalDiscount,
suppliersInformation.totalAfterDicscount

FROM            Suppliers INNER JOIN
                         suppliersInformation ON Suppliers.Sup_id = suppliersInformation.sup_id 
                   
						 	 where     suppliersInformation.ID=@id


GO
/****** Object:  StoredProcedure [dbo].[selectTableSuppliersReturnm]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[selectTableSuppliersReturnm]
@idsupplierInfo int
as

select ID_Prou,quantity
from ReturnSuppliersUnUsed
where ID_Information=@idsupplierInfo

GO
/****** Object:  StoredProcedure [dbo].[SelectTotalDiscount]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[SelectTotalDiscount]
 @formdate date,
@todate date
as 
select sum(isnull(o.total_Discount,0))
from Orders o
where cast(o.Date_Order as date) between @formdate and @todate
GO
/****** Object:  StoredProcedure [dbo].[SelectUserClient]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectUserClient]
 @User_Name nvarchar(50)
as

SELECT [User_Name]
      ,[add_Client]
      ,[check_Discount]
      ,[client_Pay]
      ,[Depit_Client]
      ,[Account_Client]
	  ,[Sarf_Pay],
	  Client_Data
  FROM [dbo].[Users_Clients]
   WHERE   User_Name=@User_Name



GO
/****** Object:  StoredProcedure [dbo].[selectUserFile]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectUserFile]
@User_Name nvarchar(50)
as

SELECT [User_Name]
      ,[BackUp]
      ,[Restore]
      ,[Setting]
      ,[Managment_User]
      ,[Managment_Employee]
	  ,DeleteAllData,
	  MoveUsers,
	  UserSales
  FROM [dbo].[User_File]
where User_Name=@User_Name



GO
/****** Object:  StoredProcedure [dbo].[selectUserOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectUserOrder]
@User_Name nvarchar(50)
as

SELECT [User_Name]
      ,[Add_Order]
      ,[ReturnOrder]
      ,[ManagmentOrder]
      ,[ReportReturnOrder]
      ,[Report_Reb7Order]
	  ,[updateOrder]
	  ,Return_AllProduct

  FROM [dbo].[User_Order]
where User_Name=@User_Name



GO
/****** Object:  StoredProcedure [dbo].[SelectUserProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SelectUserProduct]
@User_Name nvarchar(50)
as

SELECT 
User_Name,
      Add_Prod,
      Report_minItem,
      check_Balance,
      Report_checkBalance,
	  Gard_Products,
	   harkt_Seeling
  FROM [dbo].[User_Product]
  where User_Name=@User_Name
GO
/****** Object:  StoredProcedure [dbo].[selectUserPurshise]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectUserPurshise]
@User_Name nvarchar(50)
as

SELECT [User_Name]
      ,[Add_OrderSuppliers]
      ,[ReturnSuppliers]
      ,[ManagmentSuppliers]
      ,[Report_ReturnSuppliers],
	  Report_ReturnAllProduct
  FROM [dbo].[Users_Purshise]
where User_Name=@User_Name



GO
/****** Object:  StoredProcedure [dbo].[SelectUsers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectUsers]
as
select 
ID As 'اسم المستخدم',PASS as 'كلمه السر',FullName as 'الاسم بالكامل'
from users



GO
/****** Object:  StoredProcedure [dbo].[selectUserStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectUserStock]
@User_Name nvarchar(50)
as

SELECT 
User_Name,
Add_Stock,
Add_Masrof,
Transfer_Stock,
Ms7obatSh5sya,
   eradat,
    elsol,
   EhlakatElasol,
   Report_Money
  FROM [dbo].[User_Stock]
where User_Name=@User_Name



GO
/****** Object:  StoredProcedure [dbo].[SelectUserSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectUserSuppliers]
@User_Name nvarchar(50)
as
SELECT [User_Name]
      ,[Add_Suppliers]
      ,[Report_DataSuppliers]
      ,[Check_DiscountSuppliers]
      ,[Pay_Suppliers]
      ,[Account_Suppliers]
      ,[Depit_Suppliers]
  FROM [dbo].[User_Suppliers]
where User_Name=@User_Name



GO
/****** Object:  StoredProcedure [dbo].[st_login]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[st_login]
@ID Nvarchar(50),@PASS varchar(50)
as
select*from users where
ID=@ID and PASS=@PASS



GO
/****** Object:  StoredProcedure [dbo].[suppliermanagement]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[suppliermanagement]
as 

select i.ID as 'رقم الفاتورة',
 s.Name as 'إسم المورد',
convert(date,i.date) as 'تاريخ الفاتورة',
i.Total_Invoic as 'إجمالى الفاتورة' ,
i.totalDiscount as'الخصم',
i.totalAfterDicscount as 'اجمالي بعد الخصم',
i.pay as 'المدفوع' ,
i.rent as 'المتبقي',
i.UpdateUser ,
i.UpdateDate 
from Suppliers s inner join suppliersInformation i
on s.Sup_id=i.sup_id 
where i.Total_Invoic>0   and i.show='true'
GO
/****** Object:  StoredProcedure [dbo].[TestProudect]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[TestProudect]
 @formdate date,
@todate date
as
select Name_Prod from proudects
inner join OrderDetails
on proudects.ID_Prod=OrderDetails.ID_Prod
inner join Orders on Orders.ID_Order=OrderDetails.ID_Order
where cast(Orders.Date_Order as date) between @formdate and @todate and OrderDetails.Quntity>0
 group by Name_Prod
 
						 order by Name_Prod asc
GO
/****** Object:  StoredProcedure [dbo].[TRUNCATETABLS]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[TRUNCATETABLS]
AS

TRUNCATE TABLE Login
TRUNCATE TABLE LogOut
TRUNCATE TABLE Orders
TRUNCATE TABLE OrderDetails
TRUNCATE TABLE OrderMony
TRUNCATE TABLE OrderReturn
TRUNCATE TABLE PayCustomer
TRUNCATE TABLE Customer
TRUNCATE TABLE Suppliers
TRUNCATE TABLE PaySuppliers
TRUNCATE TABLE proudects
TRUNCATE TABLE Suppliers_Details
TRUNCATE TABLE suppliersInformation
TRUNCATE TABLE SuppliersMony
TRUNCATE TABLE SuppliersReturn



GO
/****** Object:  StoredProcedure [dbo].[UpateOrderShow]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[UpateOrderShow] 
 @Id_Order int ,
 @show nvarchar(50)
 as 
 update Orders
 set Show=@show
 where ID_Order=@Id_Order
GO
/****** Object:  StoredProcedure [dbo].[Update_Barcode]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Barcode]
@Barcode float
as 
update Random_Barcode
set BarCode= @Barcode


GO
/****** Object:  StoredProcedure [dbo].[Update_Category]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_Category]
@Category_Id	int	,
@Category_Name	nvarchar(150)	
	as 
	update 	Category 
	set Category_Name = @Category_Name 
	where Category_Id=@Category_Id
GO
/****** Object:  StoredProcedure [dbo].[Update_CustomerStatmentAccount]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_CustomerStatmentAccount]
@ID_Cast	int	,
@Da2n	decimal(18, 2)	,
@MADEN	decimal(18, 2)	,
@ELBYAN	nvarchar(150)	,
@DATA	datetime	,
@BALANCE	decimal(18, 2)	,
@SalesMan  nvarchar(50)
as 
update CustomerStatmentAccount
set 
Da2n=@Da2n,
MADEN=@MADEN,
ELBYAN=@ELBYAN,
DATA=@DATA,
BALANCE=@BALANCE,
SalesMan=SalesMan +'/'+@SalesMan
where ID_Cast=@ID_Cast and ELBYAN like '%'+'رصيد اول المدة'+'%'


GO
/****** Object:  StoredProcedure [dbo].[Update_CustomerTotalMoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_CustomerTotalMoney]
@Id_Cust	int	,
@Total_Balance	decimal(18, 2)
as 
update Customer_TotalMoney
set 	Total_Balance = @Total_Balance
where 	Id_Cust =@Id_Cust	


GO
/****** Object:  StoredProcedure [dbo].[Update_masrof]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_masrof]
@id_masrof int, 
@amount decimal(18,2),
@date datetime ,
@descrpsion nvarchar(100),
@Id_Stock int ,
@Sales_man nvarchar(100),
@Id_CountPk int 
as 
update Masrofat
set  ID_Masrof=@id_masrof, amount=@amount , 
Date =@date ,
descrpsion=@descrpsion , Id_Stock=@Id_Stock , Sales_man=@Sales_man
where Id_CountPk=@Id_CountPk 
GO
/****** Object:  StoredProcedure [dbo].[Update_masrof_N2al]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_masrof_N2al]
@Descrepssion nvarchar(100),
@Amount decimal(18,2)
As
update Masrofat
set amount=@Amount
where descrpsion=@Descrepssion
GO
/****** Object:  StoredProcedure [dbo].[Update_MAsrofCategory]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Update_MAsrofCategory]
@Id_Masrof	int	,
@Masrof_Name nvarchar(150)
as 
update Mastrofat_Category
set Mastof_Name=@Masrof_Name
where Id_Masrof=@Id_Masrof	
GO
/****** Object:  StoredProcedure [dbo].[Update_OrderNa2lAndTrkeb]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_OrderNa2lAndTrkeb]
@ID_Order int ,
@N2al decimal(18,2),
@trkeb decimal(18,2)
as 
update Orders 
set AddService=@trkeb ,AddNa2l=@N2al
where ID_Order=@ID_Order
GO
/****** Object:  StoredProcedure [dbo].[Update_ProductQuantityDecrease]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_ProductQuantityDecrease]
@Id_Product int ,
@Quantity decimal (18,2)
as 
update proudects 
set Quantity = Quantity-@Quantity
where ID_Prod= @Id_Product
GO
/****** Object:  StoredProcedure [dbo].[Update_ProductQuantityIncrease]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_ProductQuantityIncrease]
@Id_Product int ,
@Quantity decimal (18,2)
as 
update proudects 
set Quantity = Quantity+@Quantity
where ID_Prod= @Id_Product
GO
/****** Object:  StoredProcedure [dbo].[Update_Stock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Stock]
@id_Treasury int ,
@Treasury_name nvarchar(100)
as 
update Treasury
set Treasury_name = @Treasury_name
where id_Treasury= @id_Treasury


GO
/****** Object:  StoredProcedure [dbo].[update_StockPull]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_StockPull]
@id_Treasury int ,
@MoneybeforeEdit	real,
@MoneyAfterEdit	real,
@Reason	nvarchar(250)
as
update Treasury_Data
set money = money+@MoneybeforeEdit
where id_Treasury=@id_Treasury
update Stock_Pull
set Money=@MoneyAfterEdit
where Reason= @Reason
update Treasury_Data
set money = money-@MoneyAfterEdit
where id_Treasury=@id_Treasury
GO
/****** Object:  StoredProcedure [dbo].[Update_Store]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Store]
@Store_Id int	,
@Store_Name	nvarchar(150)	
	as 
	update 	Store 
	set Store_Name = @Store_Name
	where Store_Id=@Store_Id
GO
/****** Object:  StoredProcedure [dbo].[Update_StoreProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_StoreProduct]
@ID_Product	int	,
@Quantity	decimal(18, 1)
as 
update Product_Store
set Quantity=Quantity+@Quantity
where ID_Product=@ID_Product 
GO
/****** Object:  StoredProcedure [dbo].[Update_StoreProductQuantitySmallUnit]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_StoreProductQuantitySmallUnit]
@Id_Product int ,
@ID_Store int ,
@Quantity decimal 
as 
update Product_Store
set Quantity = Quantity-@Quantity
where ID_Product=@Id_Product  and Id_Store=@ID_Store
GO
/****** Object:  StoredProcedure [dbo].[Update_SupplierStatmentAccount]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_SupplierStatmentAccount]
@ID_supp	int	,
@Da2n	decimal(18, 2)	,
@MADEN	decimal(18, 2)	,
@ELBYAN	nvarchar(150)	,
@DATA	datetime	,
@BALANCE	decimal(18, 2)	
as 
update SupplierStatmentAccount
set 
Da2n=@Da2n,
MADEN=@MADEN,
ELBYAN=@ELBYAN,
date=@DATA,
BALANCE=@BALANCE
where SupplierStatmentAccount.Id_Supplier=@ID_supp and ELBYAN like '%'+'رصيد اول المدة'+'%'


GO
/****** Object:  StoredProcedure [dbo].[Update_SupplierTotalMoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_SupplierTotalMoney] 
@Id_Supplier int ,
@total_Mony decimal(18,2)
as 
update Supplier_Totalmoney
set Total_Balance =@total_Mony
where Id_Supplier=@Id_Supplier
GO
/****** Object:  StoredProcedure [dbo].[Update_Unit]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Unit]
@Unit_Id int	,
@Unit_Name	nvarchar(150)	
	as 
	update 	Unit 
	set Unit_Name = @Unit_Name
	where Unit_Id=@Unit_Id
GO
/****** Object:  StoredProcedure [dbo].[UpdateAsol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateAsol]

@Asl nvarchar(150),
@Value decimal(18,2),
@Date date,
@ID INT
as
UPDATE asol
   SET Asl =@Asl,
      Value = @Value,
      Date = @Date
 WHERE ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateCustomer]
@name nvarchar(150),
@address nvarchar(100),
@phone varchar(20),
@id int
as
update customer
set Name=@name,
Addres=@address,
Phone=@phone
where ID_Cust=@id



GO
/****** Object:  StoredProcedure [dbo].[UpdateEhlakatAsol]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateEhlakatAsol]
@Asl_ID int,
@Ehalak_Value decimal(18,2),
@Date datetime,
@ID_Ehlak int
as

update
EhalaktAsol
set
         Asl_ID=@Asl_ID,
           Ehalak_Value=@Ehalak_Value,
           Date=@Date

where   ID_Ehlak=@ID_Ehlak






GO
/****** Object:  StoredProcedure [dbo].[UpdateinsertStockMoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateinsertStockMoney] 
@id_Stock int ,
@moeny real 
as
update Treasury_Data
set Money=  Money + @moeny
where id_Treasury=@id_Stock



GO
/****** Object:  StoredProcedure [dbo].[UpdateItemsFirstTerm]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[UpdateItemsFirstTerm]
@ID_Prod int,
@Quantity	decimal(18, 1)
as
UPDATE ItemsFirstTerm
   SET 
     
      Quantity = @Quantity
      
 WHERE ID_Prod=@ID_Prod



GO
/****** Object:  StoredProcedure [dbo].[updateMoney]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[updateMoney]
@Money decimal(18,2)
as
UPDATE    Money
SET              Money =Money+ @Money

GO
/****** Object:  StoredProcedure [dbo].[UpdateMONEYOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[UpdateMONEYOrder]
@idOrder int ,
@totalInv decimal(18,2),
@pay decimal(18,2),
@rent decimal(18,2)
as
update Orders
set Total_Invoic=@totalInv ,  pay =@pay,rent=@rent
where ID_Order=@idOrder
----------------------------------------------------
update OrderMony
set rent=@rent
where ID_Order=@idOrder



GO
/****** Object:  StoredProcedure [dbo].[UpdateMONEYSyppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[UpdateMONEYSyppliers]
@id int ,
@totalInv decimal(18,2),
@pay decimal(18,2),
@rent decimal(18,2)
as
update suppliersInformation
set Total_Invoic=@totalInv ,pay=@pay,rent=@rent
where ID=@id
-----------------------------------------
update SuppliersMony
set rent=@rent
where ID_Information=@id



GO
/****** Object:  StoredProcedure [dbo].[updateOpeningBalance]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[updateOpeningBalance]
     
           @date date,
           @Moneydiscount decimal(18,2),
           @Moneyadd decimal(18,2),
           @bayan nvarchar(100),
		    @id_Cust int
		
		   as

		   BEGIN TRANSACTION [Tran1]

  BEGIN TRY

UPDATE Openingbalance
   SET 
      date = @date,
      Moneydiscount = @Moneydiscount,
      Moneyadd = @Moneyadd,
      bayan = @bayan
 WHERE id_Cust=@id_Cust
 
 






   COMMIT TRANSACTION [Tran1]

  END TRY

  BEGIN CATCH

      ROLLBACK TRANSACTION [Tran1]

  END CATCH  
GO
/****** Object:  StoredProcedure [dbo].[updateOpeningBalanceSupp]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[updateOpeningBalanceSupp]
     
           @date date,
           @Moneydiscount decimal(18,2),
           @Moneyadd decimal(18,2),
           @bayan nvarchar(100),
			@idsupp int 
		   as

		   BEGIN TRANSACTION [Tran1]

  BEGIN TRY


 
 



UPDATE Openingbalance
   SET 
      date = @date,
      Moneydiscount = @Moneydiscount,
      Moneyadd = @Moneyadd,
      bayan = @bayan
 WHERE id_Supp=@idsupp



   COMMIT TRANSACTION [Tran1]

  END TRY

  BEGIN CATCH

      ROLLBACK TRANSACTION [Tran1]

  END CATCH  
GO
/****** Object:  StoredProcedure [dbo].[updateOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[updateOrder]
@Total_Invoic decimal(18,2),
@pay decimal(18,2),
@rent decimal(18,2),
@AddService decimal(18,2),
@AddNa2l decimal(18,2),
@total_AfterDisc decimal(18,2),
@total_Discount decimal(18,2),
@idOrder int,
@Discraption nvarchar(250),
@Update_User nvarchar(50),
@Update_Date datetime 
as

update Orders
set
 Total_Invoic=@Total_Invoic,
orders.pay=@pay,
orders.rent=@rent ,
AddService=@AddService,
AddNa2l=@AddNa2l,
total_AfterDisc=@total_AfterDisc ,
total_Discount=@total_Discount,
Discraption=@Discraption,
Update_User	=@Update_User,
Update_Date	=@Update_Date

where ID_Order=@idOrder
	
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderDetails]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[UpdateOrderDetails]
@id_order int ,
@id_prod int ,
@quantity int ,
@price decimal(18,2),
@discount decimal(18,2),
@amount decimal(18,2),
@TotalAmount decimal(18,2)
as  
update OrderDetails
set  Quntity = @quantity , Price = @price , Discount = @discount , Amount = @amount , TotalAmount=@TotalAmount
where ID_Order = @id_order and ID_Prod = @id_prod

delete from OrderDetails
where ID_Order = @id_order and ID_Prod = @id_prod and Quntity=0


GO
/****** Object:  StoredProcedure [dbo].[UpdatePartOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdatePartOrder]
@id_order int,
@rent decimal(18,2)

as
update OrderMony
set rent=@rent 
where ID_Order=@id_order



----------------------------------------------------------------------



GO
/****** Object:  StoredProcedure [dbo].[UpdatePartSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[UpdatePartSuppliers]
@id_inform int,
@rent decimal(18,2)

as
update SuppliersMony
set rent=@rent 
where ID_Information=@id_inform



----------------------------------------------------------------------



GO
/****** Object:  StoredProcedure [dbo].[UpdateProudect]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateProudect]
@id_Prod int ,
@Name_Prod	nvarchar(150)	,
@Id_Category	int	,
@Sales_price	decimal(18, 2)	,
@Buy_Price	decimal(18, 2),	
@minimum	decimal(18, 1)	,
@Color	nvarchar(50)	,
@Barcode	nvarchar(max)	,
@Image image


as
update proudects
set
 Name_Prod=@Name_Prod,
 Id_Category=@Id_Category
 ,Sales_price=@Sales_price
 ,Buy_Price=@Buy_Price
 ,minimum=@minimum ,
 Color=@Color,
 Barcode =@Barcode,
  Image= @Image

where ID_Prod=@id_Prod
GO
/****** Object:  StoredProcedure [dbo].[UpdateProudectOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateProudectOrder]
@IDProudect int,
@quntity decimal
as
   update proudects  set quantity=quantity-@quntity
		   where ID_Prod=@IDProudect

GO
/****** Object:  StoredProcedure [dbo].[UpdateProudectSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateProudectSuppliers]
@IDProudect int,
@quntity decimal
as
   update proudects  set quantity=quantity+@quntity
		   where ID_Prod=@IDProudect

GO
/****** Object:  StoredProcedure [dbo].[UpdateSettingPrint]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateSettingPrint]
    @Name_Company nvarchar(200),
    @Addres nvarchar(200),
           @Bottom_Note nvarchar(250),
           @Phone1 nvarchar(50),
          @Phone2 nvarchar(50)
		   as

UPDATE [dbo].[Setting_PrintOrder]
   SET [Name_Company] = @Name_Company,
      [Addres] =@Addres,
      [Bottom_Note] =@Bottom_Note,
      [Phone1] =@Phone1,
      [Phone2] = @Phone2




GO
/****** Object:  StoredProcedure [dbo].[Updatestorevalue]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Updatestorevalue]
@StoreValue decimal(18,2),@Date datetime,@ID INT


as
declare  @s decimal =0
UPDATE    StoreValue
set @s =StoreValue
,              StoreValue = @StoreValue, Date = @Date
where ID=@ID

UPDATE    Money

SET              Money = Money-@s +(@StoreValue)
where ID=1
GO
/****** Object:  StoredProcedure [dbo].[UpdateSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[UpdateSuppliers]
@name nvarchar(50),
@address nvarchar(50),
@phone varchar(50),
@id int
as
update Suppliers
set
Name=@name,
Address=@address,
phone=@phone
where Sup_id=@id



GO
/****** Object:  StoredProcedure [dbo].[UpdateSuppliersINformation]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateSuppliersINformation]
@id int ,
@note nvarchar(350),
@Total_Invoic decimal(18,2),
@pay decimal(18,2),
@rent decimal(18,2),
@totalDiscount decimal(18,2),
@totalAfterDicscount  decimal(18,2),
@UpdateDate	datetime	,
@UpdateUser	nvarchar(50)	
as
update suppliersInformation
set  note=@note , Total_Invoic=@Total_Invoic, pay=@pay, rent=@rent,
  totalDiscount=@totalDiscount,
  totalAfterDicscount=@totalAfterDicscount 
  ,UpdateDate=@UpdateDate,UpdateUser=@UpdateUser	
where ID=@id 
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserClient]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateUserClient]
 @User_Name nvarchar(50),
           @add_Client int,
           @check_Discount int,
           @client_Pay int,
           @Depit_Client int,
           @Account_Client int,
		   @Sarf_Pay int,
		   @Client_Data int
		   as

UPDATE [dbo].[Users_Clients]
   SET 
      [add_Client] = @add_Client,
      [check_Discount] =@check_Discount,
      [client_Pay] = @client_Pay,
      [Depit_Client] = @Depit_Client,
      [Account_Client] = @Account_Client ,
	  Sarf_Pay =@Sarf_Pay ,
	  Client_Data=@Client_Data

	  
 WHERE   User_Name=@User_Name




GO
/****** Object:  StoredProcedure [dbo].[UpdateUserFile]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateUserFile]

@User_Name nvarchar(50),
           @BackUp int,
           @Restore int,
           @Setting int,
           @Managment_User int,
           @Managment_Employee int,
		   @DeleteAllData int ,
		   @MoveUsers  int ,
		   @UserSales int 
		   as

UPDATE [dbo].[User_File]
   SET
      [BackUp] = @BackUp,
      [Restore] = @Restore,
      [Setting] = @Setting,
      [Managment_User] = @Managment_User,
      [Managment_Employee] = @Managment_Employee,
	  DeleteAllData=@DeleteAllData,
	  MoveUsers =@MoveUsers,
	  UserSales=@UserSales
 WHERE User_Name=@User_Name




GO
/****** Object:  StoredProcedure [dbo].[UpdateUserOrder]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateUserOrder]
  @User_Name nvarchar(50),
           @Add_Order int,
           @ReturnOrder int,
           @ManagmentOrder int,
           @ReportReturnOrder int,
           @Report_Reb7Order int,
		   @updateOrder int ,
		   @Return_AllProduct int 
		   as

UPDATE [dbo].[User_Order]
   SET 
      [Add_Order] = @Add_Order,
      [ReturnOrder] = @ReturnOrder,
      [ManagmentOrder] = @ManagmentOrder,
      [ReportReturnOrder] = @ReportReturnOrder,
      [Report_Reb7Order] = @Report_Reb7Order,
	      updateOrder=@updateOrder,
		  Return_AllProduct=@Return_AllProduct
 WHERE User_Name=@User_Name




GO
/****** Object:  StoredProcedure [dbo].[UpdateUserProduct]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateUserProduct]

  @User_Name nvarchar(50),
           @Add_Prod int,
           @Report_minItem int,
           @check_Balance int,
           @Report_checkBalance int ,
		    @Gard_Products int ,
		   @harkt_Seeling int
		   as
UPDATE [dbo].[User_Product]
   SET 
      [Add_Prod] = @Add_Prod,
      [Report_minItem] =@Report_minItem ,
      [check_Balance] = @check_Balance,
      [Report_checkBalance] = @Report_checkBalance ,
	  Gard_Products=@Gard_Products,
	  harkt_Seeling=@harkt_Seeling
 WHERE User_Name=@User_Name




GO
/****** Object:  StoredProcedure [dbo].[UpdateUserPurshise]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateUserPurshise]

  @User_Name nvarchar(50),
          @Add_OrderSuppliers int,
           @ReturnSuppliers int,
           @ManagmentSuppliers int,
           @Report_ReturnSuppliers int,
		   @Report_ReturnAllProduct int 
		   as
UPDATE [dbo].[Users_Purshise]
   SET 
      [Add_OrderSuppliers] = @Add_OrderSuppliers,
      [ReturnSuppliers] = @ReturnSuppliers,
      [ManagmentSuppliers] = @ManagmentSuppliers,
      [Report_ReturnSuppliers] = @Report_ReturnSuppliers,
	  Report_ReturnAllProduct=@Report_ReturnAllProduct
 where User_Name=@User_Name


GO
/****** Object:  StoredProcedure [dbo].[UpdateUsers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateUsers]
@id nvarchar(50),
@pass varchar(50),
@fullname nvarchar(50)


as
update users set  FullName=@fullname,PASS=@pass
where ID=@id



GO
/****** Object:  StoredProcedure [dbo].[UpdateUserStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateUserStock]
@User_Name	nvarchar(50)	,
@Add_Stock	int	,
@Add_Masrof	int	,
@Transfer_Stock	int	,
@Ms7obatSh5sya	int	,
@eradat	int	,
@elsol	int	,
@EhlakatElasol	int	,
@Report_Money	int	
		   as
UPDATE [dbo].[User_Stock]
   SET 
     Add_Stock=@Add_Stock,
     Add_Masrof=@Add_Stock,
     Transfer_Stock=@Transfer_Stock,
     Ms7obatSh5sya=@Ms7obatSh5sya,
     eradat=@eradat,
     elsol=@elsol,
     EhlakatElasol=@EhlakatElasol,
     Report_Money=@Report_Money
 WHERE User_Name=@User_Name




GO
/****** Object:  StoredProcedure [dbo].[UpdateUserSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateUserSuppliers]

    @User_Name nvarchar(50),
           @Add_Suppliers int,
           @Report_DataSuppliers int,
           @Check_DiscountSuppliers int,
           @Pay_Suppliers int,
           @Account_Suppliers int,
           @Depit_Suppliers int

as
UPDATE [dbo].[User_Suppliers]
   SET 
      [Add_Suppliers] = @Add_Suppliers,
      [Report_DataSuppliers] = @Report_DataSuppliers,
      [Check_DiscountSuppliers] = @Check_DiscountSuppliers,
      [Pay_Suppliers] =@Pay_Suppliers,
      [Account_Suppliers] = @Account_Suppliers,
      [Depit_Suppliers] = @Depit_Suppliers
 WHERE  User_Name=@User_Name




GO
/****** Object:  StoredProcedure [dbo].[vaildateQuantity]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[vaildateQuantity]
@idProudect int ,
@quantity int 
as
select ID_Product,Quantity  from Product_Store
where ID_Product=@idProudect and quantity <@quantity

GO
/****** Object:  StoredProcedure [dbo].[Validate_CategoryName]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Validate_CategoryName]
@Id_Category int 
as 
select Category_Id
from Category
where Category_Id=@Id_Category

GO
/****** Object:  StoredProcedure [dbo].[Validate_IdSupplierinnoice]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Validate_IdSupplierinnoice]
@Id_SupplierInnvoice int 
as 
select Sup_id
 from suppliersInformation si
 where si.ID= @Id_SupplierInnvoice

GO
/****** Object:  StoredProcedure [dbo].[Validate_ProductFormStoreForSale]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Validate_ProductFormStoreForSale]
@Id_Product int 
as 
select p.ID_Prod , p.Name_Prod  
from proudects p 
where p.ID_Prod =@Id_Product
GO
/****** Object:  StoredProcedure [dbo].[Validate_ProductStore]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Validate_ProductStore]
@Id_Product int ,
@Buy_price decimal(18,2)
as 
select ID_Product ,Buy_price 
from Product_BuyPrice
where ID_Product=@Id_Product  and Buy_price =@Buy_price
GO
/****** Object:  StoredProcedure [dbo].[validateMasrofCategory]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[validateMasrofCategory]
@name nvarchar(350)
as
select *from Mastrofat_Category
where Mastrofat_Category.Mastof_Name=@name

GO
/****** Object:  StoredProcedure [dbo].[verviyQuantity]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[verviyQuantity]
@idProudect int ,
@quantity int 
as
select * from proudects
where ID_Prod=@idProudect and quantity>=@quantity



GO
/****** Object:  StoredProcedure [dbo].[VildateBarcode]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[VildateBarcode]

@barcode nvarchar(250)
as 
select ID_Prod,Name_Prod,barcode 
from proudects
where   barcode=@barcode


GO
/****** Object:  StoredProcedure [dbo].[VildateCustomer]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[VildateCustomer]
@idcust int
as
select 
ID_Cust 

from Customer
where ID_Cust=@idcust



GO
/****** Object:  StoredProcedure [dbo].[VildateCustomerName]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[VildateCustomerName]
@CustName nvarchar(50)
as
select 
ID_Cust ,Name
from Customer
where Name=@CustName
GO
/****** Object:  StoredProcedure [dbo].[VildateID_Order]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[VildateID_Order]
@ID_Order int
as
select 
ID_Order
from Orders
where ID_Order=@ID_Order



GO
/****** Object:  StoredProcedure [dbo].[VildateID_Supplirs]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[VildateID_Supplirs]
@ID_suppliers int
as
select Sup_id
from Suppliers
where Sup_id=@ID_suppliers
GO
/****** Object:  StoredProcedure [dbo].[VildateSelect_moneyStock]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VildateSelect_moneyStock]
@id_Treasury int,
@money real
as
select Money  
from Treasury_Data
where id_Treasury=@id_Treasury and Money<@money

GO
/****** Object:  StoredProcedure [dbo].[VildateSuppliers]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[VildateSuppliers]
@idSuppliersd int
as
select 
Sup_id

from Suppliers
where Sup_id=@idSuppliersd



GO
/****** Object:  StoredProcedure [dbo].[VildateUpdateBarcode]    Script Date: 18/03/2022 10:51:16 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[VildateUpdateBarcode]
@idprod int ,
@barcode nvarchar(250)
as 
select ID_Prod,Name_Prod,barcode 
from proudects
where   barcode=@barcode and ID_Prod!=@idprod

insert into users values('admin','123','admin')
insert into User_File values('admin',1,1,1,1,1,1,1,1)
insert into User_Order values('admin',1,1,1,1,1,1,1)
insert into User_Product values('admin',1,1,1,1,1,1)
insert into User_Stock values('admin',1,1,1,1,1,1,1,1)
insert into User_Suppliers values('admin',1,1,1,1,1,1)
insert into Users_Clients values('admin',1,1,1,1,1,1,1)
insert into Users_Purshise values('admin',1,1,1,1,1)

insert into StoreValue values(0,GETDATE())
insert into money values(0)


 

GO
USE [master]
GO
ALTER DATABASE [EasyPos] SET  READ_WRITE 
GO
