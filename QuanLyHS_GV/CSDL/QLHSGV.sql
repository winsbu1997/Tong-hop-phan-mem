USE [master]
GO
/****** Object:  Database [QLHSGV]    Script Date: 12/14/2017 9:32:14 PM ******/
CREATE DATABASE [QLHSGV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLHSGV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLHSGV.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLHSGV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLHSGV_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLHSGV] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLHSGV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLHSGV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLHSGV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLHSGV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLHSGV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLHSGV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLHSGV] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLHSGV] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLHSGV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLHSGV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLHSGV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLHSGV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLHSGV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLHSGV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLHSGV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLHSGV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLHSGV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLHSGV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLHSGV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLHSGV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLHSGV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLHSGV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLHSGV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLHSGV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLHSGV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLHSGV] SET  MULTI_USER 
GO
ALTER DATABASE [QLHSGV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLHSGV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLHSGV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLHSGV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLHSGV]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 12/14/2017 9:32:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GT] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](20) NULL,
	[MonHoc] [nvarchar](20) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 12/14/2017 9:32:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHS] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GT] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TenLop] [nvarchar](10) NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 12/14/2017 9:32:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[TenLop] [nvarchar](10) NOT NULL,
	[QSo] [int] NOT NULL,
 CONSTRAINT [PK_LopHoc] PRIMARY KEY CLUSTERED 
(
	[TenLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinGiangDay]    Script Date: 12/14/2017 9:32:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinGiangDay](
	[MaKip] [nvarchar](10) NOT NULL,
	[MaGV] [nvarchar](10) NOT NULL,
	[TenLop] [nvarchar](10) NOT NULL,
	[MonHoc] [nvarchar](20) NOT NULL,
	[Ngay] [date] NOT NULL,
	[SoTiet] [int] NOT NULL,
 CONSTRAINT [PK_ThongTinGiangDay] PRIMARY KEY CLUSTERED 
(
	[MaKip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 12/14/2017 9:32:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [QLHSGV] SET  READ_WRITE 
GO
