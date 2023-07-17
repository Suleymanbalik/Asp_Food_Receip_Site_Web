USE [master]
GO
/****** Object:  Database [Db_Asp_Net_Yemek_Sitesi]    Script Date: 17.07.2023 16:10:01 ******/
CREATE DATABASE [Db_Asp_Net_Yemek_Sitesi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db_Asp_Net_Yemek_Sitesi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Db_Asp_Net_Yemek_Sitesi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Db_Asp_Net_Yemek_Sitesi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Db_Asp_Net_Yemek_Sitesi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db_Asp_Net_Yemek_Sitesi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET  MULTI_USER 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET QUERY_STORE = OFF
GO
USE [Db_Asp_Net_Yemek_Sitesi]
GO
/****** Object:  Table [dbo].[Table_AboutUs]    Script Date: 17.07.2023 16:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_AboutUs](
	[AboutUs] [varchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Admin]    Script Date: 17.07.2023 16:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Admin](
	[AdminID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AdminNameSurname] [varchar](50) NULL,
	[AdminPassword] [varchar](10) NULL,
 CONSTRAINT [PK_Table_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Category]    Script Date: 17.07.2023 16:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Category](
	[CategoryID] [smallint] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[CategoryAdet] [smallint] NULL,
	[CategoryPic] [varchar](100) NULL,
 CONSTRAINT [PK_Table_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Comment]    Script Date: 17.07.2023 16:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Comment](
	[CommentID] [smallint] IDENTITY(1,1) NOT NULL,
	[CommentNameSurname] [varchar](50) NULL,
	[CommentMail] [varchar](50) NULL,
	[CommentDate] [smalldatetime] NULL,
	[CommentStatus] [bit] NULL,
	[CommentIngredient] [varchar](500) NULL,
	[CommentFoodID] [smallint] NULL,
 CONSTRAINT [PK_Table_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Food]    Script Date: 17.07.2023 16:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Food](
	[FoodID] [smallint] IDENTITY(1,1) NOT NULL,
	[FoodName] [varchar](50) NULL,
	[FoodIngredients] [varchar](500) NULL,
	[FoodRecipe] [varchar](max) NULL,
	[FoodImage] [varchar](100) NULL,
	[FoodDate] [smalldatetime] NULL,
	[FoodScore] [float] NULL,
	[FoodCategoriID] [smallint] NULL,
	[FoodStatus] [bit] NULL,
 CONSTRAINT [PK_Table_Food] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Meal_Of_The_Day]    Script Date: 17.07.2023 16:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Meal_Of_The_Day](
	[MealOfTheDayID] [smallint] IDENTITY(1,1) NOT NULL,
	[MealOfTheDayName] [varchar](50) NULL,
	[MealOfTheDayIngredients] [varchar](500) NULL,
	[MealOfTheDayRoute] [varchar](max) NULL,
	[MealOfTheDayImage] [varchar](100) NULL,
	[MealOfTheDayScore] [tinyint] NULL,
	[MealOfTheDayDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Table_DayOfTheFood] PRIMARY KEY CLUSTERED 
(
	[MealOfTheDayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Message]    Script Date: 17.07.2023 16:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Message](
	[MessageID] [smallint] IDENTITY(1,1) NOT NULL,
	[MessageSender] [varchar](50) NULL,
	[MessageSubject] [varchar](30) NULL,
	[MessageMail] [varchar](250) NULL,
	[MessageIngredients] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Recipe]    Script Date: 17.07.2023 16:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Recipe](
	[RecipeID] [smallint] IDENTITY(1,1) NOT NULL,
	[RecipeName] [varchar](50) NULL,
	[RecipeIngredients] [varchar](500) NULL,
	[RecipeRoute] [varchar](max) NULL,
	[RecipePic] [varchar](50) NULL,
	[RecipeOwner] [varchar](50) NULL,
	[RecipeOwnerMail] [varchar](50) NULL,
	[RecipeStatus] [bit] NULL,
 CONSTRAINT [PK_Table_Recipe] PRIMARY KEY CLUSTERED 
(
	[RecipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_Category] ADD  CONSTRAINT [DF_Table_Category_CategoryAdet]  DEFAULT ((0)) FOR [CategoryAdet]
GO
ALTER TABLE [dbo].[Table_Comment] ADD  CONSTRAINT [DF_Table_Comment_CommentDate]  DEFAULT (getdate()) FOR [CommentDate]
GO
ALTER TABLE [dbo].[Table_Comment] ADD  CONSTRAINT [DF_Table_Comment_CommentStatus]  DEFAULT ((0)) FOR [CommentStatus]
GO
ALTER TABLE [dbo].[Table_Food] ADD  CONSTRAINT [DF_Table_Food_FoodDate]  DEFAULT (getdate()) FOR [FoodDate]
GO
ALTER TABLE [dbo].[Table_Food] ADD  CONSTRAINT [DF_Table_Food_FoodStatus]  DEFAULT ((0)) FOR [FoodStatus]
GO
ALTER TABLE [dbo].[Table_Meal_Of_The_Day] ADD  CONSTRAINT [DF_Table_DayOfTheFood_DayOfTheFoodDate]  DEFAULT (getdate()) FOR [MealOfTheDayDate]
GO
ALTER TABLE [dbo].[Table_Recipe] ADD  CONSTRAINT [DF_Table_Recipe_RecipeStatus]  DEFAULT ((0)) FOR [RecipeStatus]
GO
ALTER TABLE [dbo].[Table_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Table_Comment_Table_Food] FOREIGN KEY([CommentFoodID])
REFERENCES [dbo].[Table_Food] ([FoodID])
GO
ALTER TABLE [dbo].[Table_Comment] CHECK CONSTRAINT [FK_Table_Comment_Table_Food]
GO
ALTER TABLE [dbo].[Table_Food]  WITH CHECK ADD  CONSTRAINT [FK_Table_Food_Table_Category] FOREIGN KEY([FoodCategoriID])
REFERENCES [dbo].[Table_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Table_Food] CHECK CONSTRAINT [FK_Table_Food_Table_Category]
GO
USE [master]
GO
ALTER DATABASE [Db_Asp_Net_Yemek_Sitesi] SET  READ_WRITE 
GO
