USE [master]
GO
/****** Object:  Database [EmployeeDB]    Script Date: 14-07-2024 16:03:13 ******/
CREATE DATABASE [EmployeeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EmployeeDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EmployeeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeDB] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EmployeeDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14-07-2024 16:03:13 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[District]    Script Date: 14-07-2024 16:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[District](
	[DistrictId] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[StateId] [tinyint] NOT NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14-07-2024 16:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[GenderId] [tinyint] NOT NULL,
	[Address] [varchar](100) NULL,
	[DistrictId] [smallint] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 14-07-2024 16:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[GenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State]    Script Date: 14-07-2024 16:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [tinyint] NOT NULL,
	[StateCode] [varchar](20) NOT NULL,
	[StateName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240602143420_v1', N'7.0.20')
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([DistrictId], [Name], [StateId]) VALUES (1, N'Bangalore', 1)
INSERT [dbo].[District] ([DistrictId], [Name], [StateId]) VALUES (2, N'Mandya', 1)
INSERT [dbo].[District] ([DistrictId], [Name], [StateId]) VALUES (3, N'Dakshina Kannada', 1)
INSERT [dbo].[District] ([DistrictId], [Name], [StateId]) VALUES (4, N'Gwalior', 3)
INSERT [dbo].[District] ([DistrictId], [Name], [StateId]) VALUES (5, N'Anuppur', 3)
INSERT [dbo].[District] ([DistrictId], [Name], [StateId]) VALUES (6, N'Bhopal', 3)
INSERT [dbo].[District] ([DistrictId], [Name], [StateId]) VALUES (7, N'Lucknow', 4)
INSERT [dbo].[District] ([DistrictId], [Name], [StateId]) VALUES (8, N'Barilly', 4)
INSERT [dbo].[District] ([DistrictId], [Name], [StateId]) VALUES (9, N'Noida', 4)
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [GenderId], [Address], [DistrictId]) VALUES (1, N'nitin', 1, N'nitin', 7)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([GenderId], [Name]) VALUES (1, N'M')
INSERT [dbo].[Gender] ([GenderId], [Name]) VALUES (2, N'F')
SET IDENTITY_INSERT [dbo].[Gender] OFF
INSERT [dbo].[State] ([StateId], [StateCode], [StateName]) VALUES (1, N'KA', N'Karnataka')
INSERT [dbo].[State] ([StateId], [StateCode], [StateName]) VALUES (2, N'KL', N'Kerala')
INSERT [dbo].[State] ([StateId], [StateCode], [StateName]) VALUES (3, N'MP', N'Madhya Pradesh')
INSERT [dbo].[State] ([StateId], [StateCode], [StateName]) VALUES (4, N'UP', N'Uttar Pradesh')
/****** Object:  Index [IX_District_StateId]    Script Date: 14-07-2024 16:03:13 ******/
CREATE NONCLUSTERED INDEX [IX_District_StateId] ON [dbo].[District]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_DistrictId]    Script Date: 14-07-2024 16:03:13 ******/
CREATE NONCLUSTERED INDEX [IX_Employee_DistrictId] ON [dbo].[Employee]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_GenderId]    Script Date: 14-07-2024 16:03:13 ******/
CREATE NONCLUSTERED INDEX [IX_Employee_GenderId] ON [dbo].[Employee]
(
	[GenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_State_StateId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_District_DistrictId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Gender_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([GenderId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Gender_GenderId]
GO
USE [master]
GO
ALTER DATABASE [EmployeeDB] SET  READ_WRITE 
GO
