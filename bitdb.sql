USE [master]
GO
/****** Object:  Database [BITdb]    Script Date: 06/12/2015 11:40:16 ******/
CREATE DATABASE [BITdb] ON  PRIMARY 
( NAME = N'BITdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BITdb.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BITdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BITdb_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BITdb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BITdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BITdb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BITdb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BITdb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BITdb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BITdb] SET ARITHABORT OFF
GO
ALTER DATABASE [BITdb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BITdb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BITdb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BITdb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BITdb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BITdb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BITdb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BITdb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BITdb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BITdb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BITdb] SET  DISABLE_BROKER
GO
ALTER DATABASE [BITdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BITdb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BITdb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BITdb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BITdb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BITdb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BITdb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BITdb] SET  READ_WRITE
GO
ALTER DATABASE [BITdb] SET RECOVERY FULL
GO
ALTER DATABASE [BITdb] SET  MULTI_USER
GO
ALTER DATABASE [BITdb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BITdb] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'BITdb', N'ON'
GO
USE [BITdb]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Skill](
	[skill_id] [int] IDENTITY(1,1) NOT NULL,
	[skill_type] [varchar](50) NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[skill_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (1, N'Networking', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (2, N'Installation', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (3, N'Troubleshooting', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (4, N'Windows', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (5, N'MacOSx', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (6, N'Linux', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (7, N'Mobile Devices', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (8, N'Server Management', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (9, N'Peripheral Devices', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (10, N'Cloud Engineer', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (11, N'Electric Technician', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (12, N'Cable Technician', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (13, N'Fibre Optics Technician', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (14, N'User Training', 1)
INSERT [dbo].[Skill] ([skill_id], [skill_type], [isactive]) VALUES (15, N'User Testing', 1)
SET IDENTITY_INSERT [dbo].[Skill] OFF
/****** Object:  Table [dbo].[Location]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](10) NULL,
	[line1] [varchar](50) NULL,
	[line2] [varchar](50) NULL,
	[line3] [varchar](50) NULL,
	[line4] [varchar](50) NULL,
	[city] [varchar](20) NULL,
	[postcode] [varchar](4) NULL,
	[state] [varchar](3) NULL,
	[country] [varchar](2) NULL,
	[note] [varchar](50) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (1, N'Oktun', N'24', N'Charles Street', N'Parramatta', NULL, N'Sydney', N'2000', N'NSW', N'AU', N'call Chris')
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (2, N'HiTech', N'45', N'Gracy Street', N'Blacktown', NULL, N'Sydney', N'2000', N'NSW', N'AU', N'call Mark')
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (3, N'SunSoft', N'34', N'King Ave', N'Hornsby', NULL, N'Sydney', N'2000', N'NSW', N'AU', N'call Philip')
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (4, N'MicroSun', N'33', N'Hutton Street', N'Chatswood', NULL, N'Sydney', N'2000', N'NSW', N'AU', N'call Suresh')
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (5, N'SunBeam', N'77', N'Philip Ave', N'CBD', NULL, N'Sydney', N'2000', N'NSW', N'AU', N'call Mark')
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (6, N'Retn', N'89', N'Manny Ave', N'CBD', NULL, N'Brisbane', N'4000', N'QLD', N'AU', N'call Amit')
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (7, N'Cisco', N'33', N'Andrew Pde', N'Milson point', NULL, N'Sydney', N'2000', N'NSW', N'AU', N'call Andrew')
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (8, N'Microsoft', N'44', N'Philip Street', N'Parramatta', NULL, N'Sydney', N'2000', N'NSW', N'AU', N'call Malini')
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (9, N'Latrobe', N'88', N'Glenfree', N'Hornsby', NULL, N'Sydney', N'2000', N'NSW', N'AU', N'call Arun')
INSERT [dbo].[Location] ([location_id], [title], [line1], [line2], [line3], [line4], [city], [postcode], [state], [country], [note]) VALUES (10, N'Swinburne', N'21', N'Mathus Street', N'Townhall', NULL, N'Sydney', N'2000', N'NSW', N'AU', N'call Mithun')
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  Table [dbo].[PersonType]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PersonType](
	[person_type_id] [int] IDENTITY(1,1) NOT NULL,
	[person_type] [varchar](20) NULL,
 CONSTRAINT [PK_PersonType] PRIMARY KEY CLUSTERED 
(
	[person_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PersonType] ON
INSERT [dbo].[PersonType] ([person_type_id], [person_type]) VALUES (1, N'Client')
INSERT [dbo].[PersonType] ([person_type_id], [person_type]) VALUES (2, N'Contractor')
INSERT [dbo].[PersonType] ([person_type_id], [person_type]) VALUES (3, N'Coordinator')
SET IDENTITY_INSERT [dbo].[PersonType] OFF
/****** Object:  Table [dbo].[Person]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[person_id] [int] IDENTITY(1,1) NOT NULL,
	[person_type_ref] [int] NOT NULL,
	[title] [varchar](10) NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[emailprimary] [varchar](50) NULL,
	[emailalternate] [varchar](50) NULL,
	[fax] [varchar](15) NULL,
	[phoneprimary] [varchar](15) NULL,
	[phonehome] [varchar](15) NULL,
	[phonemobile] [varchar](15) NULL,
	[phonework] [varchar](15) NULL,
	[phoneemergency] [varchar](15) NULL,
	[companyname] [varchar](80) NULL,
	[position] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (1, 2, N'Mr.', N'Mark', N'Burns', N'mark.burns@services.com', NULL, N'(03)94151111', N'(03)94152222', NULL, N'0433111222', NULL, N'0433444333', N'IT Services pty ltd', N'Network Engineer', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (2, 2, N'Mr.', N'Bill', N'Jones', N'bill.jones@software.com', NULL, N'(02)92223333', N'(02)92221111', NULL, N'0466444333', NULL, N'0466454555', N'Nano Soft Technology ', N'Software Support', N'Expert', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (3, 2, N'Mr.', N'Simi', N'Lek', N'semi.lek@installer.com', NULL, N'(02)96665555', N'(02)96664444', NULL, N'0477666444', NULL, N'0477555444', N'IT Wire Services', N'Cable Installer', N'Good', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (4, 2, N'Mr.', N'Miles', N'Davis', N'miles.davis@server.com', NULL, N'(03)93334444', N'(03)93335555', NULL, N'0456444333', NULL, N'0456222333', N'Server Services  ', N'Hardware Installer', N'Good', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (5, 3, N'Ms.', N'Anita', N'Roy', N'anita.roy@bit.com', NULL, N'(02)94009999', N'(02)94008888', NULL, N'0411090909', NULL, N'0411554455', N'BIT', N'CSR Manager', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (6, 3, N'Ms.', N'Julie', N'Jon', N'julie.jon@bit.com', NULL, N'(02)94009999', N'(03)94112345', NULL, N'0400998877', NULL, NULL, N'BIT', N'CSR', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (7, 3, N'Ms.', N'Swati', N'Singh', N'swati.singh@bit.com', NULL, N'(02)94009999', NULL, NULL, N'0422334433', NULL, NULL, N'BIT', N'CSR', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (8, 1, N'Mr.', N'Atul', N'Lal', N'atul.lal@abb.com', NULL, N'(07)92223333', N'(07)94884444', NULL, N'0433232323', NULL, NULL, N'ABB', N'Manager', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (9, 1, N'Ms.', N'Shruti', N'Hassan', N'shruti.hassan@solar.com', NULL, N'(02)9211334455', N'(02)9211334452', NULL, N'0443231323', NULL, NULL, N'Solar Expert', N'Owner', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (10, 1, N'Mr.', N'Naga', N'Smith', N'naga.smith@sr.com', NULL, N'(03)93355655', NULL, NULL, N'0496444232', NULL, NULL, N'SR Financial', N'MD', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (11, 1, N'Mr.', N'Ardalan', N'Mousavi', N'ardalan.mousavi@tea.com', NULL, N'(02)93444489', N'', NULL, N'0470966445', NULL, NULL, N'Irani Tea', N'CEO', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (12, 1, N'Mr.', N'Matteo', N'Renzi', N'matteo.renzi@ute.com', NULL, N'(02)99823333', N'(02)99825633', NULL, N'0456345678', NULL, NULL, N'UTE Lease', N'Owner', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (13, 1, N'Mr.', N'Tonny', N'Abott', N'tony.abott@wl.com', NULL, N'(02)90009229', N'(02)90009230', NULL, N'0422334435', NULL, NULL, N'Woodland', N'ITS Manager', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (14, 1, N'Mr.', N'Frank', N'Bainimarama', N'frank.bainimarama@fiji.com', NULL, N'(03)90027733', N'(03)90027755', NULL, N'0415634435', NULL, NULL, N'Fiji Imports', N'Owner', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (15, 1, N'Mr.', N'Stephen', N'Harper', N'stephen.harper@colombia.com', NULL, N'(07)93334114', N'(07)93334115', NULL, N'0422334499', NULL, NULL, N'Colombian Goods', N'CEO', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (16, 1, N'Mr.', N'Hovik', N'Abrahamyan', N'hovik.abrahamyan@armeni.com', NULL, N'(08)9123456789', N'(08)9123456780', NULL, N'0412121234', NULL, NULL, N'Armeni Exports', N'MD', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (17, 1, N'Mr.', N'Lee', N'Hsien Loong', N'lee.hsien.loong@singapore.com', NULL, N'(03)95334114', N'(03)95334116', NULL, N'0432121284', NULL, NULL, N'Singapore Goods', N'Manager', NULL, 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (23, 1, N'', N'Anuja', N'Singh', N'anu.singh@itn.com', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (24, 1, N'Mr.', N'Simi', N'Kaul', N'simi.kaul@poly.com', N'simi.kaul@poly.com', NULL, N'(02)94324444', NULL, NULL, NULL, NULL, NULL, N'Director', NULL, 0)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (25, 1, N'Ms.', N'Adriana', N'Burns', N'adriana.burns@serko.com', N'', N'', N'(02)95432222', N'', N'', N'', N'', N'Serko', N'Account Manager', N'Test User', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (26, 1, N'Dr.', N'Manu', N'Lee', N'manu.lee@rmit.com', N'manu.lee@rmit.com', N'', N'(03)94563333', N'', N'', N'', N'', N'RMIT', N'HOD', N'TEST USER', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (27, 1, N'Ms.', N'Amita', N'Sharma', N'amita.sharma@treehouse.com', N'amita.sharma@treehouse.com', N'', N'(02)93342255', N'(02)93342255', N'(02)93342255', N'(02)93342255', N'', N'Tree House', N'Owner', N'TEST USER', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (28, 2, N'Mr.', N'Anita', N'Ryan', N'anita.ryan@ray.com', N'', N'', N'(02)93432345', N'', N'', N'', N'', N'RAY Agency', N'Account Manager', N'Test User', 0)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (29, 1, N'Mr.', N'Ramesh', N'Dayal', N'ramesh.dayal@super.com', N'', N'', N'(02)94531224', N'', N'', N'', N'', N'Super pty ltd', N'Director', N'TEST USER', 0)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (30, 1, N'Ms.', N'Boni', N'Bon', N'boni.bon@bonbon.com', N'', N'', N'(03)96452312', N'', N'', N'', N'', N'Bon Bon', N'Owner', N'TEST USER', 0)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (31, 1, N'Dr.', N'Amrit', N'Jaiswal', N'amrit.jaiswal@uit.com', N'', N'', N'(03)94536789', N'', N'', N'', N'', N'UIT pty ltd', N'Manager', N'Test User', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (32, 3, N'Mr.', N'Rahul', N'Singh', N'rahul.singh@bit.com', NULL, N'(02)94322222', N'(03)94562323', NULL, N'0455333222', NULL, NULL, N'BIT', N'CSR', N'Test User', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (33, 1, N'Dr.', N'Anna', N'Silva', N'anna.silva@silk.com', N'', N'', N'(07)92316567', N'', N'', N'', N'', N'Silk pty ltd', N'Director', N'Test User', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (34, 1, N'Dr.', N'Mark', N'Lee', N'mark.lee@china.com', N'', N'', N'', N'', N'', N'', N'', N'China pty ltd', N'Owner', N'TEST USER', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (35, 1, N'Mr.', N'Amitab', N'Saxena', N'amitab.saxena@latrobe.com', N'', N'', N'', N'', N'', N'', N'', N'Latrobe', N'HOD', N'TEST User', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (36, 1, N'Dr.', N'Shri', N'Sharma', N'shri.sharma@mtt.com', N'', N'', N'', N'', N'', N'', N'', N'MTT', N'MD', N'test user', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (37, 1, N'Mr.', N'Ragesh', N'Kumar', N'ragesh.kumar@iti.com', N'', N'', N'', N'', N'', N'', N'', N'ITI', N'Manager', N'test user', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (38, 1, N'dr', N'rts', N'ts', N'rts.ts@ts.com', N'', N'', N'', N'', N'', N'', N'', N'TS', N'owner', N'test user', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (39, 1, N'Mr', N'tr', N'tr', N'tr.tr@tr.com', N'', N'', N'', N'', N'', N'', N'', N'TR', N'owner', N'test user', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (40, 1, N'Ms', N'Hello', N'Sharma', N'hello.sharma@sh.com', N'', N'', N'', N'', N'', N'', N'', N'SH', N'owner', N'TEST USER', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (41, 1, N'Mr.', N'Hong', N'Ho', N'hong.ho@google.com', N'', N'', N'', N'', N'', N'', N'', N'Google', N'OWNER', N'test user', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (42, 1, N'Mr.', N'Ar', N'Kumar', N'ar.kumar@trs.com', N'', N'', N'', N'', N'', N'', N'', N'TRS', N'Owner', N'', 0)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (43, 1, N'', N'Arv', N'Kumar', N'arv.kumar@trs.com', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (44, 1, N'Mr.', N'Sanjay', N'Dutt', N'sanjay.dutt@dutt.com', N'', N'', N'(02)94323333', N'', N'0455222333', N'', N'', N'Dutt & Dutt', N'CEO', N'Urgent', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (45, 1, N'Mr.', N'Sanjay', N'Dutt', N'sanjay.dutt@dutt.com', N'', N'', N'(02)94323333', N'', N'0455222333', N'', N'', N'Dutt & Dutt', N'CEO', N'Urgent', 0)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (46, 1, N'Mrs.', N'Angela', N'Chan', N'angela.chan@dy.com', N'', N'', N'(02)98432323', N'', N'0412345678', N'', N'', N'DY group', N'Marketing Manager', N'Urgent', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (47, 1, N'Mr.', N'Gary', N'Yuang', N'gary.yuang@gyg.com', N'', N'', N'(03)95423445', N'', N'0423343456', N'', N'', N'GYG group', N'Manager', N'', 1)
INSERT [dbo].[Person] ([person_id], [person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive]) VALUES (48, 1, N'353', N'Ajitab', N'Bachachan', N'ajitab.bachchan@abc.com', N'', N'', N'(03)93421223', N'', N'', N'', N'', N'ABCL', N'Manager', N'', 1)
SET IDENTITY_INSERT [dbo].[Person] OFF
/****** Object:  Table [dbo].[ContractorSkill]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractorSkill](
	[contractor_person_ref] [int] NOT NULL,
	[skill_ref] [int] NOT NULL,
 CONSTRAINT [PK_ContractorSkill] PRIMARY KEY CLUSTERED 
(
	[contractor_person_ref] ASC,
	[skill_ref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (0, 1)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (0, 4)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (0, 10)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (1, 1)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (1, 2)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (1, 3)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (1, 7)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (1, 9)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (1, 10)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (1, 11)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (1, 13)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (2, 2)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (2, 3)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (2, 4)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (2, 5)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (2, 6)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (2, 7)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (2, 8)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (2, 10)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (2, 13)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (3, 2)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (3, 3)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (3, 9)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (3, 11)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (4, 1)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (4, 2)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (4, 6)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (4, 9)
INSERT [dbo].[ContractorSkill] ([contractor_person_ref], [skill_ref]) VALUES (4, 12)
/****** Object:  StoredProcedure [dbo].[usp_GetSelectedSkill]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Get SelectedSkill (All) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetSelectedSkill] 
	-- Add the parameters for the stored procedure here
	  @UserRole  VARCHAR(20) = NULL,              -- Requested by which group?  eg. Contractor
	  @RoleData  VARCHAR(20) = NULL,              -- Requested for who?         eg. Client
	  @UserLogin VARCHAR(50) = NULL               -- User Login details of requested person? eg. 'bill.jones@software.com'
AS
BEGIN     -- // ** @1
	SET NOCOUNT ON;
   
	IF @RoleData != ''   
		BEGIN     -- // ** @2
			IF @UserLogin != ''
				BEGIN        -- // ** @3
					IF @UserRole IN ('Admin', 'Coordinator', 'Contractor', 'Client' )
						BEGIN
							SELECT s.skill_id, s.skill_type, s.isactive 
							FROM Skill s
							WHERE s.isactive = 1
						END       
					ELSE
						BEGIN
							SELECT -3 [skill_id] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
						END
					-- // **END OF IF @UserRole IN ('Admin', 'Coordinator', 'Contractor', 'Client' )
				END  -- // **END OF BEGIN @3
			ELSE
				BEGIN
					SELECT -2 [skill_id] -- @UserLogin  not specified.  REQUEST BY WHO.   
				END
			-- // **END OF IF @UserLogin != ''
		END     -- // **END OF BEGIN @2
	ELSE
		BEGIN
			SELECT -1 [skill_id] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
		END
	-- // **END OF IF @RoleData != ''  
END    -- // **END OF BEGIN @1
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertSkill]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Insert Skill (Admin) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertSkill] 
	-- Add the parameters for the stored procedure here
	  @UserRole  VARCHAR(20) = NULL,              -- Requested by which group?  eg. Admin
	  @RoleData  VARCHAR(20) = NULL,              -- Requested for who?         eg. Contractor
	  @UserLogin VARCHAR(50) = NULL,              -- User Login details of requested person? eg. 'bill.jones@software.com'
	  @SkillType VARCHAR(50) = NULL,
	  @IsActive	 BIT
AS
BEGIN     -- // ** @1
	SET NOCOUNT ON;
   
	IF @RoleData != ''   
		BEGIN     -- // ** @2
			IF @UserLogin != ''
				BEGIN        -- // ** @3
					IF @UserRole IN ('Admin')
						BEGIN
							INSERT INTO Skill(skill_type, isactive) 
							VALUES (@SkillType, @IsActive);
					  
					  
							SELECT TOP 1 s.skill_id  
							FROM Skill s
							WHERE s.skill_type = @SkillType
							ORDER BY s.skill_id DESC;
							
						END       
					ELSE
						BEGIN
							SELECT -3 [skill_id] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
						END
					-- // **END OF IF @UserRole IN ('Admin', 'Coordinator', 'Contractor', 'Client' )
				END  -- // **END OF BEGIN @3
			ELSE
				BEGIN
					SELECT -2 [skill_id] -- @UserLogin  not specified.  REQUEST BY WHO.   
				END
			-- // **END OF IF @UserLogin != ''
		END     -- // **END OF BEGIN @2
	ELSE
		BEGIN
			SELECT -1 [skill_id] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
		END
	-- // **END OF IF @RoleData != ''  
END    -- // **END OF BEGIN @1
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdatePerson]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Update Person (Admin, Coordinator) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_UpdatePerson] 
	-- Add the parameters for the stored procedure here
	  @UserRole					VARCHAR(20) = NULL,              -- Requested by which group?  eg. Admin / Coordinator
	  @RoleData					VARCHAR(20) = NULL,              -- Requested for who?         eg. Client
	  @UserLogin				VARCHAR(50) = NULL,              -- User Login details of requested person? eg. 'julie.jon@bit.com'
	  @PersonID							INT = 0,
	  --@PersonType						INT = 0,
	  --@PersonTitle				VARCHAR(50) = NULL,
	  @PersonFirstName			VARCHAR(50) = NULL,
	  @PersonLastName			VARCHAR(50) = NULL,
	  --@PersonEmailPrimary		VARCHAR(50) = NULL,
	  --@PersonEmailAlternate		VARCHAR(50) = NULL,
	  --@PersonFax				VARCHAR(15) = NULL,
	  @PersonPhonePrimary		VARCHAR(15) = NULL,
	  --@PersonPhoneHome			VARCHAR(15) = NULL,
	  @PersonPhoneMobile		VARCHAR(15) = NULL
	  --@PersonPhoneWork			VARCHAR(15) = NULL,
	  --@PersonPhoneEmergency		VARCHAR(15) = NULL,
	  --@PersonCompanyName		VARCHAR(80) = NULL,
	  --@PersonPosition			VARCHAR(50) = NULL
	  --@PersonDescription		VARCHAR(50) = NULL,
	  --@IsActive							BIT = 0
AS
BEGIN     -- // ** @1
	SET NOCOUNT ON;
   
	IF @RoleData != ''   
		BEGIN     -- // ** @2
			IF @UserLogin != ''
				BEGIN        -- // ** @3
					IF @UserRole IN ('Admin', 'Coordinator')
						BEGIN
							UPDATE Person
							SET		--[title] 				= 	@PersonTitle,
									[firstname]				= 	@PersonFirstName,
									[lastname]				=	@PersonLastName,
									--[emailprimary]			=	@PersonEmailPrimary,
									--[emailalternate]		=	@PersonEmailAlternate,
									--[fax]					=	@PersonFax,
									[phoneprimary]			=	@PersonPhonePrimary,
									--[phonehome]				=	@PersonPhoneHome,
									[phonemobile]			=	@PersonPhoneMobile
									--[phonework]				=	@PersonPhoneWork,
									--[phoneemergency]		=	@PersonPhoneEmergency,
									--[companyname]			=	@PersonCompanyName,
									--[position]				=	@PersonPosition,
									--[description]			=	@PersonDescription,
									--[isactive]				=	@IsActive	
							WHERE	[person_id]				=	@PersonID

							SELECT p.person_id 
							FROM Person p
							WHERE p.person_id = @PersonID;
						END       
					ELSE
						BEGIN
							SELECT -3 [person_id] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
						END
					-- // **END OF IF @UserRole IN ('Admin', 'Coordinator')
				END  -- // **END OF BEGIN @3
			ELSE
				BEGIN
					SELECT -2 [person_id] -- @UserLogin  not specified.  REQUEST BY WHO.   
				END
			-- // **END OF IF @UserLogin != ''
		END     -- // **END OF BEGIN @2
	ELSE
		BEGIN
			SELECT -1 [person_id] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
		END
	-- // **END OF IF @RoleData != ''  
END    -- // **END OF BEGIN @1
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertPerson]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Insert Person (Admin, Coordinator) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertPerson] 
	-- Add the parameters for the stored procedure here
	  @UserRole				VARCHAR(20) = NULL,              -- Requested by which group?  eg. Admin / Coordinator
	  @RoleData				VARCHAR(20) = NULL,              -- Requested for who?         eg. Client
	  @UserLogin			VARCHAR(50) = NULL,              -- User Login details of requested person? eg. 'julie.jon@bit.com'
	  @PersonType				INT = 0,
	  @PersonTitle			VARCHAR(50) = NULL,
	  @PersonFirstName		VARCHAR(50) = NULL,
	  @PersonLastName		VARCHAR(50) = NULL,
	  @PersonEmailPrimary		VARCHAR(50) = NULL,
	  @PersonEmailAlternate		VARCHAR(50) = NULL,
	  @PersonFax			VARCHAR(15) = NULL,
	  @PersonPhonePrimary		VARCHAR(15) = NULL,
	  @PersonPhoneHome		VARCHAR(15) = NULL,
	  @PersonPhoneMobile		VARCHAR(15) = NULL,
	  @PersonPhoneWork		VARCHAR(15) = NULL,
	  @PersonPhoneEmergency		VARCHAR(15) = NULL,
	  @PersonCompanyName		VARCHAR(80) = NULL,
	  @PersonPosition		VARCHAR(50) = NULL,
	  @PersonDescription		VARCHAR(50) = NULL,
	  @IsActive				BIT = 0
AS
BEGIN     -- // ** @1
	SET NOCOUNT ON;
   
	IF @RoleData != ''   
		BEGIN     -- // ** @2
			IF @UserLogin != ''
				BEGIN        -- // ** @3
					IF @UserRole IN ('Admin', 'Coordinator')
						BEGIN
							INSERT INTO Person([person_type_ref], [title], [firstname], [lastname], [emailprimary], [emailalternate], [fax], [phoneprimary], [phonehome], [phonemobile], [phonework], [phoneemergency], [companyname], [position], [description], [isactive])
							VALUES (@PersonType,
								@PersonTitle,
								@PersonFirstName,
								@PersonLastName,
								@PersonEmailPrimary,
								@PersonEmailAlternate,
								@PersonFax,
								@PersonPhonePrimary,
								@PersonPhoneHome,
								@PersonPhoneMobile,
								@PersonPhoneWork,
								@PersonPhoneEmergency,
								@PersonCompanyName,
								@PersonPosition,
								@PersonDescription,
								@IsActive);

							SELECT TOP 1 p.person_id 
							FROM Person p
							ORDER BY person_id DESC;
						END       
					ELSE
						BEGIN
							SELECT -3 [person_id] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
						END
					-- // **END OF IF @UserRole IN ('Admin', 'Coordinator')
				END  -- // **END OF BEGIN @3
			ELSE
				BEGIN
					SELECT -2 [person_id] -- @UserLogin  not specified.  REQUEST BY WHO.   
				END
			-- // **END OF IF @UserLogin != ''
		END     -- // **END OF BEGIN @2
	ELSE
		BEGIN
			SELECT -1 [person_id] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
		END
	-- // **END OF IF @RoleData != ''  
END    -- // **END OF BEGIN @1
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertContractorSkill]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Insert Contractor Skill (Admin, Coordinator) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertContractorSkill] 
	-- Add the parameters for the stored procedure here
	  @UserRole  VARCHAR(20) = NULL,              -- Requested by which group?  eg. Admin
	  @RoleData  VARCHAR(20) = NULL,              -- Requested for who?         eg. Contractor
	  @UserLogin VARCHAR(50) = NULL,              -- User Login details of requested person? eg. 'bill.jones@software.com'
	  @ContractorId			INT	    		= 0,					 -- selected contractor
	  @SkillId			INT	    		= 0					 -- selected skill
AS
BEGIN     -- // ** @1
	SET NOCOUNT ON;
   
	IF @RoleData != ''   
		BEGIN     -- // ** @2
			IF @UserLogin != ''
				BEGIN        -- // ** @3
					IF @UserRole IN ('Admin', 'Coordinator')
						BEGIN
							IF ((SELECT count(contractor_person_ref) FROM  ContractorSkill WHERE contractor_person_ref = @ContractorId AND skill_ref = @SkillId) = 0)
								BEGIN
									INSERT INTO ContractorSkill(contractor_person_ref, skill_ref) 
									VALUES (@ContractorId, @SkillId);
					  
					  
									SELECT c.contractor_person_ref  
									FROM ContractorSkill c
									WHERE c.skill_ref = @SkillId
									AND c.contractor_person_ref = @ContractorId;
									
								END
							ELSE
								BEGIN
									SELECT -4 [contractor_person_ref] -- DATA ALREADY EXIST 
								END
							
						END       
					ELSE
						BEGIN
							SELECT -3 [contractor_person_ref] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
						END
					-- // **END OF IF @UserRole IN ('Admin', 'Coordinator', 'Contractor', 'Client')
				END  -- // **END OF BEGIN @3
			ELSE
				BEGIN
					SELECT -2 [contractor_person_ref] -- @UserLogin  not specified.  REQUEST BY WHO.   
				END
			-- // **END OF IF @UserLogin != ''
		END     -- // **END OF BEGIN @2
	ELSE
		BEGIN
			SELECT -1 [contractor_person_ref] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
		END
	-- // **END OF IF @RoleData != ''  
END    -- // **END OF BEGIN @1
GO
/****** Object:  StoredProcedure [dbo].[usp_GetSelectedContractorSkill]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Get ContractorSkill (Contractor) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetSelectedContractorSkill] 
	-- Add the parameters for the stored procedure here
	  @UserRole				VARCHAR(20) 	= NULL,              -- Coordinator, Contractor, Client, Admin
	  @RoleData				VARCHAR(20) 	= NULL,    	         -- Contractor
	  @UserLogin			VARCHAR(50) 	= NULL,              -- eg. 'bill.jones@software.com'
	  @ContractorId			INT	    		= 0					 -- selected contractor

AS
	BEGIN
		SET NOCOUNT ON;
   
			IF @RoleData != ''
				BEGIN
				    IF @UserLogin != ''
						BEGIN
							IF @UserRole IN ('Admin', 'Coordinator' )
								BEGIN
									IF @ContractorId != 0
										BEGIN
											SELECT	contractor_person_ref, skill_type, firstname, lastname, person_id 
											FROM	ContractorSkill c, Skill s, Person p, PersonType t
											WHERE	c.skill_ref = s.skill_id  
											AND	p.person_id = c.contractor_person_ref 
											AND	p.person_type_ref = t.person_type_id
											AND	p.isactive = 1
											AND	s.isactive = 1
											AND	t.person_type = @RoleData
											AND	c.contractor_person_ref = @ContractorId
										END
									ELSE
										BEGIN
											SELECT	contractor_person_ref, skill_type, firstname, lastname, person_id 
											FROM	ContractorSkill c, Skill s, Person p, PersonType t
											WHERE	c.skill_ref = s.skill_id  
											AND	p.person_id = c.contractor_person_ref 
											AND	p.person_type_ref = t.person_type_id
											AND	p.isactive = 1
											AND	s.isactive = 1
										END
									
								END       
							ELSE IF @UserRole IN ('Contractor')
								BEGIN
									SELECT	contractor_person_ref, skill_type, firstname, lastname, person_id 
									FROM	ContractorSkill c, Skill s, Person p, PersonType t
									WHERE	c.skill_ref = s.skill_id  
									AND	p.person_id = c.contractor_person_ref 
									AND	p.person_type_ref = t.person_type_id
									AND	p.isactive = 1
									AND	s.isactive = 1
									AND	t.person_type = @RoleData
									AND	p.emailprimary = @UserLogin
									--AND	r.status_type =  3

								END
							ELSE IF @UserRole IN ('Client')
								BEGIN	
									SELECT	contractor_person_ref, skill_type, firstname, lastname, person_id 
									FROM	ContractorSkill c, Skill s, Person p, PersonType t
									WHERE	c.skill_ref = s.skill_id  
									AND	p.person_id = c.contractor_person_ref 
									AND	p.person_type_ref = t.person_type_id
									AND	p.isactive = 1
									AND	s.isactive = 1
									AND	t.person_type = @RoleData
								END
							ELSE
							    BEGIN
								  SELECT -3 [person_id] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
							    END
							
						END
					ELSE
						      BEGIN
								  SELECT -2 [person_id] -- @UserLogin  not specified.  REQUEST BY WHO.   
						      END
					
				END
			ELSE
		
				BEGIN
					SELECT -1 [person_id] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
				END
			
	END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetPerson]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Get Person (Coordinator / Contractor / Client) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetPerson] 
	-- Add the parameters for the stored procedure here
	  @UserRole  VARCHAR(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT title, firstname, lastname, emailprimary, emailalternate, fax, phoneprimary, phonehome, phonemobile, phonework, phoneemergency, companyname, position, description 
	FROM Person p, PersonType t 
	WHERE p.person_type_ref = t.person_type_id
		AND p.isactive = 1
		AND	t.person_type = @UserRole
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ApprovePerson]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Approve Person (Admin, Coordinator) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_ApprovePerson] 
	-- Add the parameters for the stored procedure here
	  @UserRole			VARCHAR(20) = NULL,              -- Requested by which group?  eg. Admin / Coordinator
	  @RoleData			VARCHAR(20) = NULL,              -- Requested for who?         eg. Client
	  @UserLogin			VARCHAR(50) = NULL,              -- User Login details of requested person? eg. 'julie.jon@bit.com'
	  @PersonID				INT = 0,
	  @IsActive				BIT = 0
AS
BEGIN     -- // ** @1
	SET NOCOUNT ON;
   
	IF @RoleData != ''   
		BEGIN     -- // ** @2
			IF @UserLogin != ''
				BEGIN        -- // ** @3
					IF @UserRole IN ('Admin', 'Coordinator')
						BEGIN
							UPDATE	Person
							   SET	isactive = @IsActive
							 WHERE  person_id = @PersonID;
							

							SELECT	p.person_id, p.isactive 
							FROM	Person p
							WHERE	p.person_id = @PersonID;
						END       
					ELSE
						BEGIN
							SELECT -3 [person_id] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
						END
					-- // **END OF IF @UserRole IN ('Admin', 'Coordinator')
				END  -- // **END OF BEGIN @3
			ELSE
				BEGIN
					SELECT -2 [person_id] -- @UserLogin  not specified.  REQUEST BY WHO.   
				END
			-- // **END OF IF @UserLogin != ''
		END     -- // **END OF BEGIN @2
	ELSE
		BEGIN
			SELECT -1 [person_id] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
		END
	-- // **END OF IF @RoleData != ''  
END    -- // **END OF BEGIN @1
GO
/****** Object:  Table [dbo].[Job]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[client_person_ref] [int] NOT NULL,
	[location_ref] [int] NOT NULL,
	[skill_ref] [int] NOT NULL,
	[hours] [tinyint] NULL,
	[minutes] [tinyint] NULL,
	[start_time] [time](7) NULL,
	[job_date] [date] NULL,
	[status_type] [tinyint] NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Job] ON
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (1, 8, 1, 1, 2, 30, CAST(0x070010ACD1530000 AS Time), NULL, 4)
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (2, 9, 2, 2, 4, 0, CAST(0x07004C64EB810000 AS Time), NULL, 4)
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (3, 10, 3, 3, 2, 20, CAST(0x070084B1109B0000 AS Time), NULL, 4)
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (4, 11, 4, 7, 1, 30, CAST(0x0700EC7572A30000 AS Time), NULL, 4)
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (5, 12, 5, 1, 2, 10, CAST(0x0700EC7572A30000 AS Time), NULL, 4)
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (6, 13, 6, 3, 4, 30, CAST(0x0700A47C7B360000 AS Time), NULL, 4)
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (7, 14, 7, 3, 2, 20, CAST(0x0700DCC9A04F0000 AS Time), NULL, 3)
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (8, 15, 8, 2, 4, 10, CAST(0x0700448E02580000 AS Time), NULL, 2)
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (9, 16, 9, 3, 2, 0, CAST(0x07001417C6680000 AS Time), NULL, 1)
INSERT [dbo].[Job] ([job_id], [client_person_ref], [location_ref], [skill_ref], [hours], [minutes], [start_time], [job_date], [status_type]) VALUES (10, 17, 10, 3, 2, 30, CAST(0x0700E49F89790000 AS Time), NULL, 5)
SET IDENTITY_INSERT [dbo].[Job] OFF
/****** Object:  Table [dbo].[Availability]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Availability](
	[availability_index] [int] IDENTITY(1,1) NOT NULL,
	[person_ref] [int] NOT NULL,
	[start_time] [time](7) NULL,
	[end_time] [time](7) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[availability_flag] [bit] NULL,
 CONSTRAINT [PK_Availability] PRIMARY KEY CLUSTERED 
(
	[availability_index] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Availability] ON
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (1, 1, CAST(0x070010ACD1530000 AS Time), CAST(0x07002058A3A70000 AS Time), CAST(0xD8370B00 AS Date), CAST(0xB23A0B00 AS Date), 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (2, 2, CAST(0x070058A5C8C00000 AS Time), CAST(0x07007870335C0000 AS Time), CAST(0xD8370B00 AS Date), CAST(0xB23A0B00 AS Date), 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (3, 3, CAST(0x070010ACD1530000 AS Time), CAST(0x07002058A3A70000 AS Time), CAST(0xD8370B00 AS Date), CAST(0xB23A0B00 AS Date), 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (4, 4, CAST(0x070008D6E8290000 AS Time), CAST(0x0700F0E066B80000 AS Time), CAST(0xD8370B00 AS Date), CAST(0xB23A0B00 AS Date), 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (5, 5, CAST(0x0700D85EAC3A0000 AS Time), CAST(0x0700B893419F0000 AS Time), CAST(0xD8370B00 AS Date), CAST(0xC53A0B00 AS Date), 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (6, 6, CAST(0x0700709A4A320000 AS Time), CAST(0x070050CFDF960000 AS Time), CAST(0x45390B00 AS Date), CAST(0xC53A0B00 AS Date), 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (7, 7, CAST(0x0700D85EAC3A0000 AS Time), CAST(0x0700B893419F0000 AS Time), CAST(0xD8370B00 AS Date), CAST(0x203C0B00 AS Date), 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (8, 8, CAST(0x0700A47C7B360000 AS Time), CAST(0x0700B0BD58750000 AS Time), CAST(0xD8370B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (9, 9, CAST(0x07004C64EB810000 AS Time), CAST(0x0700B893419F0000 AS Time), CAST(0x46390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (10, 10, CAST(0x070084B1109B0000 AS Time), CAST(0x07002058A3A70000 AS Time), CAST(0x46390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (11, 11, CAST(0x0700EC7572A30000 AS Time), CAST(0x070024C397BC0000 AS Time), CAST(0x46390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (12, 12, CAST(0x0700EC7572A30000 AS Time), CAST(0x0700BCFE35B40000 AS Time), CAST(0x62390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (13, 13, CAST(0x0700A47C7B360000 AS Time), CAST(0x07001417C6680000 AS Time), CAST(0x65390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (14, 14, CAST(0x0700DCC9A04F0000 AS Time), CAST(0x0700543AD4AB0000 AS Time), CAST(0xDD390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (15, 15, CAST(0x0700448E02580000 AS Time), CAST(0x0700EC7572A30000 AS Time), CAST(0xDF390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (16, 16, CAST(0x07001417C6680000 AS Time), CAST(0x070050CFDF960000 AS Time), CAST(0xDF390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (17, 17, CAST(0x0700E49F89790000 AS Time), CAST(0x070050CFDF960000 AS Time), CAST(0xDF390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (18, 8, CAST(0x0700DCC9A04F0000 AS Time), CAST(0x0700EC7572A30000 AS Time), CAST(0xE0390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (19, 9, CAST(0x0700D85EAC3A0000 AS Time), CAST(0x070010ACD1530000 AS Time), CAST(0xE0390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (20, 10, CAST(0x0700587660670000 AS Time), CAST(0x0700B4284D8A0000 AS Time), CAST(0xE0390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (21, 9, CAST(0x07008017B42C0000 AS Time), CAST(0x0700DCC9A04F0000 AS Time), CAST(0xE3390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (22, 10, CAST(0x0700EC7572A30000 AS Time), CAST(0x070024C397BC0000 AS Time), CAST(0xE3390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (23, 11, CAST(0x0700448E02580000 AS Time), CAST(0x07001417C6680000 AS Time), CAST(0xE3390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (24, 12, CAST(0x07007CDB27710000 AS Time), CAST(0x0700B4284D8A0000 AS Time), CAST(0xE3390B00 AS Date), NULL, 1)
INSERT [dbo].[Availability] ([availability_index], [person_ref], [start_time], [end_time], [start_date], [end_date], [availability_flag]) VALUES (25, 13, CAST(0x07004C64EB810000 AS Time), CAST(0x0700B893419F0000 AS Time), CAST(0xE3390B00 AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[Availability] OFF
/****** Object:  Table [dbo].[Rostered]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rostered](
	[contractor_person_ref] [int] NOT NULL,
	[job_ref] [int] NOT NULL,
	[start_time] [time](7) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_time] [time](7) NULL,
	[end_date] [date] NULL,
	[road_distance_km] [decimal](6, 2) NULL,
	[override_coordinator_person_ref] [int] NULL,
	[override_reason_type] [varchar](50) NULL,
	[status_type] [tinyint] NULL,
 CONSTRAINT [PK_Rostered] PRIMARY KEY CLUSTERED 
(
	[contractor_person_ref] ASC,
	[job_ref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Rostered] ([contractor_person_ref], [job_ref], [start_time], [start_date], [end_time], [end_date], [road_distance_km], [override_coordinator_person_ref], [override_reason_type], [status_type]) VALUES (1, 1, CAST(0x070010ACD1530000 AS Time), CAST(0xC5370B00 AS Date), NULL, NULL, CAST(20.00 AS Decimal(6, 2)), NULL, NULL, 3)
INSERT [dbo].[Rostered] ([contractor_person_ref], [job_ref], [start_time], [start_date], [end_time], [end_date], [road_distance_km], [override_coordinator_person_ref], [override_reason_type], [status_type]) VALUES (1, 3, CAST(0x0780285886780000 AS Time), CAST(0x51390B00 AS Date), NULL, NULL, CAST(30.00 AS Decimal(6, 2)), NULL, NULL, 3)
INSERT [dbo].[Rostered] ([contractor_person_ref], [job_ref], [start_time], [start_date], [end_time], [end_date], [road_distance_km], [override_coordinator_person_ref], [override_reason_type], [status_type]) VALUES (2, 2, CAST(0x07007870335C0000 AS Time), CAST(0x32390B00 AS Date), NULL, NULL, CAST(70.00 AS Decimal(6, 2)), NULL, NULL, 3)
/****** Object:  Table [dbo].[Request]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[contractor_person_ref] [int] NOT NULL,
	[client_person_ref] [int] NOT NULL,
	[job_ref] [int] NOT NULL,
	[date_requested] [date] NULL,
	[time_requested] [time](7) NULL,
	[status_type] [tinyint] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[contractor_person_ref] ASC,
	[client_person_ref] ASC,
	[job_ref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (1, 8, 1, CAST(0xC4370B00 AS Date), CAST(0x0700092A0AA90000 AS Time), 3)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (1, 10, 3, CAST(0x50390B00 AS Date), CAST(0x070061429A5D0000 AS Time), 3)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (1, 14, 7, CAST(0xB4390B00 AS Date), CAST(0x0700171C31780000 AS Time), 4)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (1, 15, 8, CAST(0xB9390B00 AS Date), CAST(0x0780AD4CA86E0000 AS Time), 1)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (2, 9, 2, CAST(0x31390B00 AS Date), CAST(0x0700F97D38550000 AS Time), 3)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (2, 11, 4, CAST(0x50390B00 AS Date), CAST(0x070061429A5D0000 AS Time), 3)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (2, 13, 6, CAST(0xB4390B00 AS Date), CAST(0x0700AF57CF6F0000 AS Time), 2)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (2, 14, 7, CAST(0xB4390B00 AS Date), CAST(0x0780285886780000 AS Time), 5)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (2, 15, 8, CAST(0xB7390B00 AS Date), CAST(0x0700462DE4610000 AS Time), 1)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (3, 9, 2, CAST(0x31390B00 AS Date), CAST(0x0700F97D38550000 AS Time), 3)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (3, 12, 5, CAST(0xB3390B00 AS Date), CAST(0x070061429A5D0000 AS Time), 1)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (3, 13, 6, CAST(0xB3390B00 AS Date), CAST(0x070047936D670000 AS Time), 1)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (3, 15, 8, CAST(0xB6390B00 AS Date), CAST(0x070D060EFC650000 AS Time), 1)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (4, 10, 3, CAST(0x32390B00 AS Date), CAST(0x070061429A5D0000 AS Time), 3)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (4, 12, 5, CAST(0xB3390B00 AS Date), CAST(0x0700F97D38550000 AS Time), 1)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (4, 13, 6, CAST(0xD4390B00 AS Date), CAST(0x0700DFCE0B5F0000 AS Time), 1)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (4, 14, 7, CAST(0x243B0B00 AS Date), CAST(0x07003155AD5D0000 AS Time), 1)
INSERT [dbo].[Request] ([contractor_person_ref], [client_person_ref], [job_ref], [date_requested], [time_requested], [status_type]) VALUES (4, 15, 8, CAST(0x263B0B00 AS Date), CAST(0x070047936D670000 AS Time), 2)
/****** Object:  StoredProcedure [dbo].[usp_GetSelectedRequest]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Get Request (Contractor / Client) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetSelectedRequest] 
	-- Add the parameters for the stored procedure here
	  @UserRole  VARCHAR(20) = NULL,              -- Contractor
	  @RoleData  VARCHAR(20) = NULL,              -- Client
	  @UserLogin VARCHAR(50) = NULL               -- eg. 'bill.jones@software.com'
AS
BEGIN
      SET NOCOUNT ON;
   
    IF @RoleData != ''
    BEGIN
      IF @UserLogin != ''
      BEGIN
        IF @UserRole IN ('Admin', 'Coordinator' )
        BEGIN
      	-- SELECT *
		SELECT contractor_person_ref, client_person_ref, job_ref, date_requested, time_requested, status_type, person_id 
		FROM Person p, PersonType t, Request r
		WHERE r.contractor_person_ref = p.person_id  
		--AND p.person_id = r.client_person_ref
		AND p.person_type_ref = t.person_type_id
		AND p.isactive = 1
		--AND r.date_requested > DATEADD(DAY,-1, getdate())
		--AND t.person_type = @UserRole
        END       
        ELSE IF @UserRole IN ('Contractor')
        BEGIN
		-- SELECT *
		SELECT contractor_person_ref, client_person_ref, job_ref, date_requested, time_requested, status_type, person_id 
		FROM Person p, PersonType t, Request r
		WHERE r.contractor_person_ref = p.person_id  
		--AND p.person_id = r.client_person_ref
		AND p.person_type_ref = t.person_type_id
		AND p.isactive = 1
		--AND r.date_requested > DATEADD(DAY,-1, getdate())
		AND t.person_type = @RoleData
		AND p.emailprimary = @UserLogin
		--AND r.status_type =  3

	END
	ELSE IF @UserRole IN ('Client')
	BEGIN	
		-- SELECT *
		SELECT contractor_person_ref, client_person_ref, job_ref, date_requested, time_requested, status_type, person_id 
		FROM Person p, PersonType t, Request r
		WHERE r.contractor_person_ref = p.person_id  
		--AND p.person_id = r.client_person_ref
		AND p.person_type_ref = t.person_type_id
		AND p.isactive = 1
		--AND r.date_requested > DATEADD(DAY,-1, getdate())
		AND t.person_type = @RoleData
		AND r.client_person_ref = (select person_id from Person where emailprimary =  @UserLogin)
		--AND r.status_type =  3
	 END
	 ELSE
            BEGIN
                  SELECT -3 [person_id] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
            END
	 END
      ELSE
      BEGIN
                  SELECT -2 [person_id] -- @UserLogin  not specified.  REQUEST BY WHO.   
      END
    END
    ELSE
     BEGIN
                  SELECT -1 [person_id] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
     END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetSelectedPerson]    Script Date: 06/12/2015 11:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Get Person (Coordinator / Contractor / Client) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetSelectedPerson] 
	-- Add the parameters for the stored procedure here
	  @UserRole  VARCHAR(20) = NULL,              -- Contractor
	  @RoleData  VARCHAR(20) = NULL,              -- Client
	  @UserLogin VARCHAR(50) = NULL               -- eg. 'bill.jones@software.com'
AS
BEGIN
      SET NOCOUNT ON;
   
    IF @RoleData != ''
    BEGIN
      IF @UserRole IN ('Admin', 'Coordinator' )
      BEGIN
      	-- SELECT *
		SELECT title, firstname, lastname, emailprimary, emailalternate, fax, phoneprimary, phonehome, phonemobile, phonework, phoneemergency, companyname, position, description, person_id 
		FROM Person p, PersonType t
		WHERE p.person_type_ref = t.person_type_id
		AND p.isactive = 1
		AND t.person_type = @RoleData
      END       
      ELSE IF @UserRole IN ('Contractor')
      BEGIN
	IF @UserLogin != ''
	BEGIN
		-- SELECT *
		SELECT title, firstname, lastname, emailprimary, emailalternate, fax, phoneprimary, phonehome, phonemobile, phonework, phoneemergency, companyname, position, description, person_id 
		FROM Person p, PersonType t
		WHERE p.person_type_ref = t.person_type_id
		AND p.isactive = 1
		AND t.person_type = @RoleData        -- 'Client'
		AND p.person_id IN
		(SELECT client_person_ref
			FROM Request r, Person p, PersonType t 
			WHERE p.person_id = r.contractor_person_ref
			AND	p.person_type_ref = t.person_type_id
			AND	t.person_type = @UserRole           -- 'Contractor'
			AND	contractor_person_ref = (SELECT person_id FROM person WHERE emailprimary = @UserLogin AND isactive = 1))
	 END
         ELSE
            BEGIN
                  SELECT -3 [person_id] -- @UserLogin  not specified.  REQUEST BY WHO.
            END
	 END
      ELSE
      BEGIN
                  SELECT -2 [person_id] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.  
      END
    END
    ELSE
     BEGIN
                  SELECT -1 [person_id] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
     END
END
GO
/****** Object:  ForeignKey [FK_Person_PersonType]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_PersonType] FOREIGN KEY([person_type_ref])
REFERENCES [dbo].[PersonType] ([person_type_id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_PersonType]
GO
/****** Object:  ForeignKey [FK_ContractorSkill_Skill]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[ContractorSkill]  WITH CHECK ADD  CONSTRAINT [FK_ContractorSkill_Skill] FOREIGN KEY([skill_ref])
REFERENCES [dbo].[Skill] ([skill_id])
GO
ALTER TABLE [dbo].[ContractorSkill] CHECK CONSTRAINT [FK_ContractorSkill_Skill]
GO
/****** Object:  ForeignKey [FK_Job_Location]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Location] FOREIGN KEY([location_ref])
REFERENCES [dbo].[Location] ([location_id])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Location]
GO
/****** Object:  ForeignKey [FK_Job_Person]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Person] FOREIGN KEY([client_person_ref])
REFERENCES [dbo].[Person] ([person_id])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Person]
GO
/****** Object:  ForeignKey [FK_Job_Skill]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Skill] FOREIGN KEY([skill_ref])
REFERENCES [dbo].[Skill] ([skill_id])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Skill]
GO
/****** Object:  ForeignKey [FK_Availability_Person]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Availability]  WITH CHECK ADD  CONSTRAINT [FK_Availability_Person] FOREIGN KEY([person_ref])
REFERENCES [dbo].[Person] ([person_id])
GO
ALTER TABLE [dbo].[Availability] CHECK CONSTRAINT [FK_Availability_Person]
GO
/****** Object:  ForeignKey [FK_Rostered_Job]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Rostered]  WITH CHECK ADD  CONSTRAINT [FK_Rostered_Job] FOREIGN KEY([job_ref])
REFERENCES [dbo].[Job] ([job_id])
GO
ALTER TABLE [dbo].[Rostered] CHECK CONSTRAINT [FK_Rostered_Job]
GO
/****** Object:  ForeignKey [FK_Rostered_Person]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Rostered]  WITH CHECK ADD  CONSTRAINT [FK_Rostered_Person] FOREIGN KEY([contractor_person_ref])
REFERENCES [dbo].[Person] ([person_id])
GO
ALTER TABLE [dbo].[Rostered] CHECK CONSTRAINT [FK_Rostered_Person]
GO
/****** Object:  ForeignKey [FK_Request_Client_Person]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Client_Person] FOREIGN KEY([client_person_ref])
REFERENCES [dbo].[Person] ([person_id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Client_Person]
GO
/****** Object:  ForeignKey [FK_Request_Contractor_Person]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Contractor_Person] FOREIGN KEY([contractor_person_ref])
REFERENCES [dbo].[Person] ([person_id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Contractor_Person]
GO
/****** Object:  ForeignKey [FK_Request_Job]    Script Date: 06/12/2015 11:40:16 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Job] FOREIGN KEY([job_ref])
REFERENCES [dbo].[Job] ([job_id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Job]
GO
