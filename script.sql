USE [master]
GO
/****** Object:  Database [Food]    Script Date: 29.02.2024 21:33:01 ******/
CREATE DATABASE [Food]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Timurdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Timurdb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Timurdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Timurdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Food] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Food].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Food] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Food] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Food] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Food] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Food] SET ARITHABORT OFF 
GO
ALTER DATABASE [Food] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Food] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Food] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Food] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Food] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Food] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Food] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Food] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Food] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Food] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Food] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Food] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Food] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Food] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Food] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Food] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Food] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Food] SET RECOVERY FULL 
GO
ALTER DATABASE [Food] SET  MULTI_USER 
GO
ALTER DATABASE [Food] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Food] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Food] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Food] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Food] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Food] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Food', N'ON'
GO
ALTER DATABASE [Food] SET QUERY_STORE = OFF
GO
USE [Food]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 29.02.2024 21:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[ImageUrl] [varchar](150) NULL,
	[Title1] [nvarchar](150) NULL,
	[Title2] [nvarchar](150) NULL,
	[Title3] [nvarchar](150) NULL,
	[Description1] [nvarchar](max) NULL,
	[Description2] [nvarchar](max) NULL,
	[Description3] [nvarchar](max) NULL,
	[Description4] [nvarchar](max) NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactMessages]    Script Date: 29.02.2024 21:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactMessages](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[YourFullName] [nvarchar](200) NULL,
	[YourEmail] [varchar](100) NULL,
	[YourMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContactMessages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 29.02.2024 21:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [nvarchar](200) NULL,
	[Phone] [varchar](13) NULL,
	[Title2] [nvarchar](200) NULL,
	[Title3] [nvarchar](200) NULL,
	[Email] [varchar](100) NULL,
	[Adress] [nvarchar](200) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 29.02.2024 21:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [varchar](150) NULL,
	[Status] [bit] NULL,
	[CreateDate] [smalldatetime] NULL,
	[UpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainPages]    Script Date: 29.02.2024 21:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainPages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Slider1ImageUrl] [varchar](150) NULL,
	[Slider1Title] [nvarchar](100) NULL,
	[Slider1Description] [nvarchar](max) NULL,
	[Slider2ImageUrl] [varchar](150) NULL,
	[Slider3ImageUrl] [varchar](150) NULL,
	[Slider2Title] [nvarchar](100) NULL,
	[Slider3Title] [nvarchar](150) NULL,
	[Slider2Description] [nvarchar](max) NULL,
	[Slider3Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_MainPages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 29.02.2024 21:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[Category1] [nvarchar](100) NULL,
	[Category2] [nvarchar](100) NULL,
	[Category3] [nvarchar](100) NULL,
	[Image1] [varchar](150) NULL,
	[Image2] [varchar](150) NULL,
	[Image3] [varchar](150) NULL,
	[Title1] [nvarchar](100) NULL,
	[Title2] [nvarchar](100) NULL,
	[Title3] [nvarchar](100) NULL,
	[Description1] [nvarchar](max) NULL,
	[Description2] [nvarchar](max) NULL,
	[Description3] [nvarchar](max) NULL,
	[Price1] [decimal](18, 2) NULL,
	[Price2] [decimal](18, 2) NULL,
	[Price3] [decimal](18, 3) NULL,
	[Status] [bit] NULL,
	[CreateTime] [smalldatetime] NULL,
	[UpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 29.02.2024 21:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Menu] [nvarchar](100) NULL,
	[Drink] [nvarchar](100) NULL,
	[OdemeTipi] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserv]    Script Date: 29.02.2024 21:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserv](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nvarchar](150) NULL,
	[Time] [nvarchar](250) NULL,
	[YourName] [nvarchar](250) NULL,
	[YourMail] [nvarchar](250) NULL,
	[YourNumber] [nvarchar](250) NULL,
	[CreateDate] [smalldatetime] NULL,
	[UpdateDate] [smalldatetime] NULL,
	[Reply] [nvarchar](max) NULL,
 CONSTRAINT [PK_Reserv] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 29.02.2024 21:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](60) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](13) NULL,
	[Password] [varchar](15) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([id], [Title], [ImageUrl], [Title1], [Title2], [Title3], [Description1], [Description2], [Description3], [Description4]) VALUES (2, N'BİZİM HİKAYEMİZ', N'', N'HOŞ GELDİNİZ', N'TARİHİMİZ', N'Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.', N'Gıda ve restoran sektöründe hizmet veren Timur A.Ş. 1996 yılında Antalyada kuruldu. 28 yıldır Türkiye''de faaliyet gösteren Timur restorant Avrupa standartlarında Türkiye’nin en büyük Pizzacısı unvanına sahiptir.', N'Her restoranında aynı hizmet ve kalite standartlarını sunan Timur Pizza, Iso 22000 belgesine sahip üreticiler ile çalışarak en taze malzemeleri, kalite yönetim ve hijyen sistemlerine uygun şekilde ve keyifli mekanlarda, uygun fiyat politikasıyla tüketicileri ile buluşturmayı ilke edindi.', N'https://im.haberturk.com/l/2023/01/11/ver1673619437/3555366/jpg/640x360', N'Sleeping')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactMessages] ON 

INSERT [dbo].[ContactMessages] ([id], [YourFullName], [YourEmail], [YourMessage]) VALUES (1, N'şerife', N'serifetimur07@gmail.com', N'MErhaba')
INSERT [dbo].[ContactMessages] ([id], [YourFullName], [YourEmail], [YourMessage]) VALUES (3, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[ContactMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([id], [Title1], [Phone], [Title2], [Title3], [Email], [Adress]) VALUES (1, N'TELEFON', N'5428082667', N'EMAİL', N'ADRES', N'stimur08@gmail.com', N'ANTALYA')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([id], [Title], [Description], [ImageUrl], [Status], [CreateDate], [UpdateDate]) VALUES (1, NULL, NULL, N'https://media-cdn.tripadvisor.com/media/photo-s/15/c4/f0/44/la-joce-la-pizz-de-la.jpg', NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([id], [Title], [Description], [ImageUrl], [Status], [CreateDate], [UpdateDate]) VALUES (2, NULL, NULL, N'https://www.upmenu.com/wp-content/uploads/2023/06/11-how-to-start-a-pizza-waiter-bringing-pizza.jpg', NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([id], [Title], [Description], [ImageUrl], [Status], [CreateDate], [UpdateDate]) VALUES (3, NULL, NULL, N'https://static01.nyt.com/images/2023/06/14/multimedia/14rest-pizza1-ptjg/13rest-pizza1-ptjg-articleLarge.jpg?quality=75&auto=webp&disable=upscale', NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([id], [Title], [Description], [ImageUrl], [Status], [CreateDate], [UpdateDate]) VALUES (8, NULL, NULL, N'https://turkeymenus.com/wp-content/uploads/2023/02/La-Pizza-Restaurant-Special-Pizzas-Menu-1024x577.jpg
', NULL, NULL, NULL)
INSERT [dbo].[Gallery] ([id], [Title], [Description], [ImageUrl], [Status], [CreateDate], [UpdateDate]) VALUES (9, NULL, NULL, N'https://turkeymenus.com/wp-content/uploads/2022/12/Terra-Pizza-Special-Pizzas-Menu-1024x577.jpg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Gallery] OFF
GO
SET IDENTITY_INSERT [dbo].[MainPages] ON 

INSERT [dbo].[MainPages] ([id], [Slider1ImageUrl], [Slider1Title], [Slider1Description], [Slider2ImageUrl], [Slider3ImageUrl], [Slider2Title], [Slider3Title], [Slider2Description], [Slider3Description]) VALUES (1, N'https://www.datocms-assets.com/43891/1616241919-kalpli-tatli-tuzlu-pizza-17056489895c627bf85ad7c.jpg?auto=compress%2Cformat&fit=crop&h=450&w=800', N'HOŞGELDİNİZ
TİMUR RESTORAN', N'MUHTEŞEM PİZZALARIN
ADRESİ', N'https://cdn.listelist.com/wp-content/uploads/2015/01/pizza-kapak.jpg', N'https://image.cnnturk.com/i/cnnturk/75/0x555/650032f7ae0a8f1b38689219.jpg', N'HOŞGELDİNİZ
TİMUR RESTORAN', N'HOŞGELDİNİZ
TİMUR RESTORAN', N'HER DAMAK ZEVKİNE UYGUN PİZZA SEÇENEKLERİYLE HİZMETİNİZDEYİZ', N'EL YAPIMI FIRINDAN YENİ ÇIKMIŞ PİZZALARIMIZ SİZLERİ BEKLİYOR')
SET IDENTITY_INSERT [dbo].[MainPages] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [Title], [Description], [Category1], [Category2], [Category3], [Image1], [Image2], [Image3], [Title1], [Title2], [Title3], [Description1], [Description2], [Description3], [Price1], [Price2], [Price3], [Status], [CreateTime], [UpdateDate]) VALUES (1, NULL, NULL, NULL, NULL, NULL, N'https://www.pasaportpizza.com/RESIM/pizza-kaburga-f%C3%BCme.jpg', N'https://www.pasaportpizza.com/RESIM/pizza-ege.jpg', N'https://www.pasaportpizza.com/RESIM/pizza-mix.jpg', N'KABURGA FÜME', N'EGE ', N'MIX', N'Özel pizza sosu, pizza peyniri, kaburga füme, cheddar peyniri', N'Özel pizza sosu, pizza peyniri, tulum peyniri, kırmızı şerit biber, yeşil-siyah zeytin, kekik', N'Özel pizza sosu, pizza peyniri, sucuk, salam, sosis, yeşil biber, mantar', CAST(189.90 AS Decimal(18, 2)), CAST(189.90 AS Decimal(18, 2)), CAST(189.900 AS Decimal(18, 3)), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([id], [Title], [Description], [Category1], [Category2], [Category3], [Image1], [Image2], [Image3], [Title1], [Title2], [Title3], [Description1], [Description2], [Description3], [Price1], [Price2], [Price3], [Status], [CreateTime], [UpdateDate]) VALUES (2, NULL, NULL, NULL, NULL, NULL, N'https://www.pasaportpizza.com/RESIM/pizza-kapadokya.jpg', N'https://www.pasaportpizza.com/RESIM/pizza-akdeniz.jpg', N'https://www.pasaportpizza.com/RESIM/pizza-secial.jpg', N'KAPADOKYA', N'AKDENİZ', N'SPECIAL', N'Özel pizza sosu, pizza peyniri, pastırma, sucuk, mantar, yeşil biber', N'Özel pizza sosu, pizza peyniri, beyaz peynir, siyah zeytin, küp domates, maydanoz', N'Özel pizza sosu, pizza peyniri, sucuk, salam, sosis, mantar, mısır, siyah zeytin', CAST(189.90 AS Decimal(18, 2)), CAST(189.90 AS Decimal(18, 2)), CAST(189.900 AS Decimal(18, 3)), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([id], [Title], [Description], [Category1], [Category2], [Category3], [Image1], [Image2], [Image3], [Title1], [Title2], [Title3], [Description1], [Description2], [Description3], [Price1], [Price2], [Price3], [Status], [CreateTime], [UpdateDate]) VALUES (3, NULL, NULL, NULL, NULL, NULL, N'https://www.pasaportpizza.com/RESIM/pizza-izmir-karisik.jpg', N'https://www.pasaportpizza.com/RESIM/pizza-margarita.jpg', N'https://www.pasaportpizza.com/RESIM/pizza-mexican.jpg', N'
İZMİR KARIŞIK', N'MARGARİTA', N'MEXICAN', N'Özel pizza sosu, mozzarella peyniri, şerit sosis, küp sucuk, cheddar', N'Özel pizza sosu, pizza peyniri, domates', N'Özel pizza sosu, pizza peyniri, sucuk, mantar, kırmızı şerit biber, jalapeno biber', CAST(189.90 AS Decimal(18, 2)), CAST(189.90 AS Decimal(18, 2)), CAST(189.900 AS Decimal(18, 3)), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [Menu], [Drink], [OdemeTipi], [Description]) VALUES (5, N'MIX', NULL, N'KREDİ KARTI', N'TUZSUZ')
INSERT [dbo].[Orders] ([id], [Menu], [Drink], [OdemeTipi], [Description]) VALUES (6, N'KABURGA FÜME', NULL, N'NAKİT ÖDEME', N'soslu')
INSERT [dbo].[Orders] ([id], [Menu], [Drink], [OdemeTipi], [Description]) VALUES (7, N'KABURGA FÜME', NULL, N'NAKİT ÖDEME', N'soslu')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Reserv] ON 

INSERT [dbo].[Reserv] ([id], [Date], [Time], [YourName], [YourMail], [YourNumber], [CreateDate], [UpdateDate], [Reply]) VALUES (1, N'Monday', N'10-00', N'ali', N'serifetimur07@gmail.com', N'5555555555555', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Reserv] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [FullName], [Email], [Phone], [Password]) VALUES (1, N'ŞERİFE', N'serifetimur07@gmail.com', N'5428082667', N'123456')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [Food] SET  READ_WRITE 
GO
