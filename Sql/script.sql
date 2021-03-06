USE [master]
GO
/****** Object:  Database [ContosoUniversity]    Script Date: 25/09/2020 16:51:28 ******/
DROP DATABASE IF EXISTS [ContosoUniversity]
GO
CREATE DATABASE [ContosoUniversity]
GO
ALTER DATABASE [ContosoUniversity] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContosoUniversity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ContosoUniversity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ContosoUniversity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ContosoUniversity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ContosoUniversity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ContosoUniversity] SET ARITHABORT OFF 
GO
ALTER DATABASE [ContosoUniversity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ContosoUniversity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ContosoUniversity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ContosoUniversity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ContosoUniversity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ContosoUniversity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ContosoUniversity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ContosoUniversity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ContosoUniversity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ContosoUniversity] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ContosoUniversity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ContosoUniversity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ContosoUniversity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ContosoUniversity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ContosoUniversity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ContosoUniversity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ContosoUniversity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ContosoUniversity] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ContosoUniversity] SET  MULTI_USER 
GO
ALTER DATABASE [ContosoUniversity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ContosoUniversity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ContosoUniversity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ContosoUniversity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ContosoUniversity] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ContosoUniversity] SET QUERY_STORE = OFF
GO
USE [ContosoUniversity]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 25/09/2020 16:51:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstMidName] [varchar](50) NOT NULL,
	[EnrollementDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([ID], [LastName], [FirstMidName], [EnrollementDate]) VALUES (1, N'Alexander', N'Carson', CAST(N'2005-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstMidName], [EnrollementDate]) VALUES (2, N'Alonso', N'Meredith', CAST(N'2002-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstMidName], [EnrollementDate]) VALUES (3, N'Anand', N'Arturo', CAST(N'2003-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstMidName], [EnrollementDate]) VALUES (4, N'Barzdukas', N'Gytis', CAST(N'2002-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstMidName], [EnrollementDate]) VALUES (5, N'Li', N'Yan', CAST(N'2002-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstMidName], [EnrollementDate]) VALUES (8, N'Justice', N'Peggy', CAST(N'2001-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstMidName], [EnrollementDate]) VALUES (18, N'Justicea', N'Peggya', CAST(N'2011-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstMidName], [EnrollementDate]) VALUES (19, N'Justicann', N'Peggyanne', CAST(N'2111-09-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
USE [master]
GO
ALTER DATABASE [ContosoUniversity] SET  READ_WRITE 
GO
