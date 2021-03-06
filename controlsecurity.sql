USE [master]
GO
/****** Object:  Database [ControlSecurity]    Script Date: 06/12/2015 11:41:39 ******/
CREATE DATABASE [ControlSecurity] ON  PRIMARY 
( NAME = N'ControlSecurity', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ControlSecurity.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ControlSecurity_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ControlSecurity_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ControlSecurity] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ControlSecurity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ControlSecurity] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ControlSecurity] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ControlSecurity] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ControlSecurity] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ControlSecurity] SET ARITHABORT OFF
GO
ALTER DATABASE [ControlSecurity] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ControlSecurity] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ControlSecurity] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ControlSecurity] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ControlSecurity] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ControlSecurity] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ControlSecurity] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ControlSecurity] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ControlSecurity] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ControlSecurity] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ControlSecurity] SET  DISABLE_BROKER
GO
ALTER DATABASE [ControlSecurity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ControlSecurity] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ControlSecurity] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ControlSecurity] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ControlSecurity] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ControlSecurity] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ControlSecurity] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ControlSecurity] SET  READ_WRITE
GO
ALTER DATABASE [ControlSecurity] SET RECOVERY FULL
GO
ALTER DATABASE [ControlSecurity] SET  MULTI_USER
GO
ALTER DATABASE [ControlSecurity] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ControlSecurity] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ControlSecurity', N'ON'
GO
USE [ControlSecurity]
GO
/****** Object:  Table [dbo].[Controls]    Script Date: 06/12/2015 11:41:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Controls](
	[Page] [varchar](50) NOT NULL,
	[ControlID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ControlPermissions] PRIMARY KEY CLUSTERED 
(
	[Page] ASC,
	[ControlID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Controls] ([Page], [ControlID]) VALUES (N'PotentialClient', N'x')
/****** Object:  Table [dbo].[Applications]    Script Date: 06/12/2015 11:41:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Applications](
	[ApplicationName] [varchar](235) NOT NULL,
	[ApplicationID] [uniqueidentifier] NOT NULL,
	[Description] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Applications] ([ApplicationName], [ApplicationID], [Description]) VALUES (N'BIT', N'47225e37-b9a4-414c-bc2c-17caf9cbd668', N'BIT Support Services version 1.0')
/****** Object:  Table [dbo].[Users]    Script Date: 06/12/2015 11:41:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[password] [varchar](256) NULL,
	[PasswordFormat] [int] NULL,
	[PasswordSalt] [varchar](128) NULL,
	[Email] [varchar](256) NULL,
	[PasswordQuestion] [varchar](256) NULL,
	[PasswordAnswer] [varchar](128) NULL,
	[IsApproved] [bit] NULL,
	[IsLockedOut] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[LastPasswordChangedDate] [datetime] NULL,
	[LastLockoutDate] [datetime] NULL,
	[FailedPasswordAttemptCount] [int] NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NULL,
	[FailedPasswordAnswerAttemptCount] [int] NULL,
	[FailedPasswordAnswerAttemptWindowsStart] [datetime] NULL,
	[Comment] [varchar](256) NULL,
	[FKApplicationID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (1, N'anita.roy@bit.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), CAST(0x0000A49C00BFB217 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (2, N'julie.jon@bit.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), CAST(0x0000A49C00BE5002 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (3, N'swati.singh@bit.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (4, N'mark.burns@services.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), CAST(0x0000A477011A2048 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (5, N'bill.jones@software.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), CAST(0x0000A4770110D430 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (6, N'semi.lek@installer.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (7, N'miles.davis@server.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), CAST(0x0000A49C00BCFD3D AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (8, N'atul.lal@abb.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), CAST(0x0000A49C00E0A4DD AS DateTime), NULL, CAST(0x0000A49C015D849F AS DateTime), NULL, NULL, NULL, NULL, N'User Activated', N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (9, N'shruti.hassan@solar.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (10, N'naga.smith@sr.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (11, N'ardalan.mousavi@tea.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (12, N'matteo.renzi@ute.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (13, N'tony.abott@wl.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (14, N'frank.bainimarama@fiji.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (15, N'stephen.harper@colombia.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (16, N'hovik.abrahamyan@armeni.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), CAST(0x0000A47300986CE2 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (17, N'lee.hsien.loong@singapore.com', N'123456', 1, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), CAST(0x0000A4730095F6E6 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (18, N'admin', N'654321', 1, NULL, N'admin@bit.com', NULL, NULL, 1, 0, CAST(0x0000A17C01090B90 AS DateTime), CAST(0x0000A4A500D7A6B9 AS DateTime), NULL, CAST(0x0000A49C01345E44 AS DateTime), NULL, NULL, NULL, NULL, N'User Activated', N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (19, N'manu.lee@rmit.com', N'123456', 1, NULL, N'manu.lee@rmit.com', NULL, NULL, 1, 1, CAST(0x0000A48E00C311EC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (20, N'anna.silva@silk.com', N'123456', 1, NULL, N'anna.silva@silk.com', NULL, NULL, 1, 0, CAST(0x0000A48E00C47838 AS DateTime), CAST(0x0000A48E00C53418 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (21, N'mark.lee@china.com', N'123456', 1, NULL, N'mark.lee@china.com', NULL, NULL, 1, 0, CAST(0x0000A48E00CC6B42 AS DateTime), CAST(0x0000A48E00CD7AC0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (22, N'amitab.saxena@latrobe.com', N'123456', 1, NULL, N'amitab.saxena@latrobe.com', NULL, NULL, 1, 0, CAST(0x0000A48E016AA8F1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (23, N'shri.sharma@mtt.com', N'123456', 1, NULL, N'shri.sharma@mtt.com', NULL, NULL, 1, 0, CAST(0x0000A48E016E5177 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (24, N'ragesh.kumar@iti.com', N'123456', 1, NULL, N'ragesh.kumar@iti.com', NULL, NULL, 1, 0, CAST(0x0000A48F008055D7 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (25, N'rts.ts@ts.com', N'123456', 1, NULL, N'rts.ts@ts.com', NULL, NULL, 1, 0, CAST(0x0000A48F00AD12F7 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (26, N'tr.tr@tr.com', N'123456', 1, NULL, N'tr.tr@tr.com', NULL, NULL, 1, 0, CAST(0x0000A48F00ADC925 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (27, N'hello.sharma@sh.com', N'123456', 1, NULL, N'hello.sharma@sh.com', NULL, NULL, 1, 0, CAST(0x0000A48F00B14030 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (28, N'hong.ho@google.com', N'123456', 1, NULL, N'hong.ho@google.com', NULL, NULL, 1, 0, CAST(0x0000A48F00B8B24C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (29, N'ar.kumar@trs.com', N'123456', 1, NULL, N'ar.kumar@trs.com', NULL, NULL, 1, 0, CAST(0x0000A48F00BB1341 AS DateTime), CAST(0x0000A49C00BEED26 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (30, N'sanjay.dutt@dutt.com', N'123456', 1, NULL, N'sanjay.dutt@dutt.com', NULL, NULL, 1, 0, CAST(0x0000A4A300C1C331 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (31, N'angela.chan@dy.com', N'123456', 1, NULL, N'angela.chan@dy.com', NULL, NULL, 1, 0, CAST(0x0000A4A300C3F322 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (32, N'gary.yuang@gyg.com', N'123456', 1, NULL, N'gary.yuang@gyg.com', NULL, NULL, 1, 0, CAST(0x0000A4A300C4FD46 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Users] ([UserID], [Name], [password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment], [FKApplicationID]) VALUES (33, N'ajitab.bachchan@abc.com', N'123456', 1, NULL, N'ajitab.bachchan@abc.com', NULL, NULL, 1, 0, CAST(0x0000A4A300FBE8A0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 06/12/2015 11:41:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[FKApplicationID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Roles__8A2B6160023D5A04] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RoleID], [RoleName], [FKApplicationID]) VALUES (1, N'Client', N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Roles] ([RoleID], [RoleName], [FKApplicationID]) VALUES (2, N'Coordinator', N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Roles] ([RoleID], [RoleName], [FKApplicationID]) VALUES (3, N'Contractor', N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
INSERT [dbo].[Roles] ([RoleID], [RoleName], [FKApplicationID]) VALUES (4, N'Admin', N'47225e37-b9a4-414c-bc2c-17caf9cbd668')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[ControlsToRoles]    Script Date: 06/12/2015 11:41:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ControlsToRoles](
	[FKRole] [int] NOT NULL,
	[FKPage] [varchar](50) NOT NULL,
	[FKControlID] [varchar](50) NOT NULL,
	[Invisible] [int] NOT NULL,
	[Disabled] [int] NOT NULL,
 CONSTRAINT [PK_PermissionsToRoles] PRIMARY KEY CLUSTERED 
(
	[FKRole] ASC,
	[FKPage] ASC,
	[FKControlID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ControlsToRoles] ([FKRole], [FKPage], [FKControlID], [Invisible], [Disabled]) VALUES (1, N'PotentialClient', N'x', 1, 1)
INSERT [dbo].[ControlsToRoles] ([FKRole], [FKPage], [FKControlID], [Invisible], [Disabled]) VALUES (3, N'PotentialClient', N'x', 0, 1)
/****** Object:  StoredProcedure [dbo].[usp_DeactivateUser]    Script Date: 06/12/2015 11:41:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Deactivate User (Admin, Coordinator) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_DeactivateUser] 
	-- Add the parameters for the stored procedure here
	  @UserRole					VARCHAR(20) = NULL,              -- Requested by which group?  eg. Admin / Coordinator
	  @RoleData					VARCHAR(20) = NULL,              -- Requested for who?         eg. Client
	  @UserLogin				VARCHAR(50) = NULL,              -- User Login details of requested person? eg. 'julie.jon@bit.com'
	  @Name						VARCHAR(50) = NULL
	  
AS
BEGIN     -- // ** @1
	SET NOCOUNT ON;
    DECLARE @LastLockoutDate DATETIME, @RoleName VARCHAR(50), @RoleID INT, @IsLockedOut BIT = 1
   
	IF @RoleData != ''   
		BEGIN     -- // ** @2
			IF @UserLogin != ''
				BEGIN        -- // ** @3
					IF @UserRole IN ('Admin', 'Coordinator')
						BEGIN
							UPDATE Users
							SET		[IsLockedOut] 				= 	@IsLockedOut,
									[LastLockoutDate] 			= 	GETDATE(),
									[Comment]					=	'User Deactivated'
							WHERE 	[Name] 						= 	@Name

							SELECT u.UserID 
							FROM Users u
							WHERE u.Name = @Name;
						END       
					ELSE
						BEGIN
							SELECT -3 [UserID] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
						END
					-- // **END OF IF @UserRole IN ('Admin', 'Coordinator')
				END  -- // **END OF BEGIN @3
			ELSE
				BEGIN
					SELECT -2 [UserID] -- @UserLogin  not specified.  REQUEST BY WHO.   
				END
			-- // **END OF IF @UserLogin != ''
		END     -- // **END OF BEGIN @2
	ELSE
		BEGIN
			SELECT -1 [UserID] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
		END
	-- // **END OF IF @RoleData != ''  
END    -- // **END OF BEGIN @1
GO
/****** Object:  Table [dbo].[UsersToRoles]    Script Date: 06/12/2015 11:41:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersToRoles](
	[FKUserID] [int] NOT NULL,
	[FKRoleID] [int] NOT NULL,
 CONSTRAINT [PK_UsersToRoles] PRIMARY KEY CLUSTERED 
(
	[FKUserID] ASC,
	[FKRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (1, 2)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (2, 2)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (3, 2)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (4, 3)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (5, 3)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (6, 3)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (7, 3)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (8, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (9, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (10, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (11, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (12, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (13, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (14, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (15, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (16, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (17, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (18, 4)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (19, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (20, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (21, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (22, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (23, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (24, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (25, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (26, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (27, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (28, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (29, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (30, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (31, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (32, 1)
INSERT [dbo].[UsersToRoles] ([FKUserID], [FKRoleID]) VALUES (33, 1)
/****** Object:  StoredProcedure [dbo].[usp_ValidateUser]    Script Date: 06/12/2015 11:41:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ValidateUser]
      @Username VARCHAR(50),
      @Password VARCHAR(256)

AS
BEGIN
      SET NOCOUNT ON;
      DECLARE @UserID INT, @LastLoginDate DATETIME, @RoleName VARCHAR(50), @RoleID INT, @IsLockedOut BIT
     
      SELECT @UserID = u.UserID, @LastLoginDate = u.LastLoginDate, @RoleName = r.RoleName, @IsLockedOut = u.IsLockedOut
      FROM Users u, UsersToRoles t, Roles r 
      WHERE u.UserID = t.FKUserID
      AND r.RoleID = t.FKRoleID
      AND u.IsApproved = 1
      AND u.Name = @Username 
      --AND u.password = @Password
     
      IF @UserID IS NOT NULL
      BEGIN
			IF EXISTS (SELECT u.UserID FROM Users u WHERE u.UserID = @UserID AND u.password = @Password)
			BEGIN
					IF NOT EXISTS(SELECT UserID FROM Users WHERE FKApplicationID IS NULL)
					BEGIN
							IF @IsLockedOut = 0
							BEGIN
											UPDATE Users
											SET LastLoginDate = GETDATE()
											WHERE UserID = @UserID
								 
											SELECT * 
											FROM Users u, UsersToRoles t, Roles r 
											WHERE u.UserID = t.FKUserID
											AND r.RoleID = t.FKRoleID
											AND u.IsApproved = 1
											AND u.IsLockedOut = 0
											AND u.Name = @Username 
											AND u.password = @Password -- User Valid
							END
							ELSE
							BEGIN
									SELECT -4 [UserID], '' [Roles]-- User Locked.
							END
					END
					ELSE
					BEGIN
						  SELECT -3 [UserID], '' [Roles]-- User not activated.
					END	
			END
            ELSE
            BEGIN
                  SELECT -2 [UserID], '' [Roles]-- User password invalid.
            END
      END
      ELSE
      BEGIN
            SELECT -1 [UserID], '' [Roles] -- User invalid.
      END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUser]    Script Date: 06/12/2015 11:41:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Arvind Kumar>
-- Create date: <Create Date,,10-04-2015>
-- Description:	<Description,, Insert User (Admin, Coordinator) details from table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertUser] 
	-- Add the parameters for the stored procedure here
	  @UserRole			VARCHAR(20) = NULL,              -- Requested by which group?  eg. Admin / Coordinator
	  @RoleData			VARCHAR(20) = NULL,              -- Requested for who?         eg. Client
	  @UserLogin			VARCHAR(50) = NULL,              -- User Login details of requested person? eg. 'julie.jon@bit.com'
	  @UserName			VARCHAR(50) = NULL,
	  @Password			VARCHAR(50) = NULL,
	  @Email			VARCHAR(50) = NULL,
	  @IsApproved				BIT = 0,
	  @IsLockedOut				BIT = 0

AS
BEGIN     -- // ** @1
	SET NOCOUNT ON;
	DECLARE @UserID INT, @CreateDate DATETIME = GETDATE(), @RoleID INT, @PasswordFormat INT = 1, @FKApplicationID UNIQUEIDENTIFIER

	IF @RoleData != ''   
		BEGIN     -- // ** @2
			IF @UserLogin != ''
				BEGIN        -- // ** @3
					IF @UserRole IN ('Admin', 'Coordinator')
						BEGIN
							
							
							
							SELECT @RoleID = RoleID, @FKApplicationID = FKApplicationID 
							FROM	Roles	 
							WHERE RoleName = @RoleData;

							INSERT INTO Users([Name], [password], [PasswordFormat], [Email], [IsApproved], [IsLockedOut], [CreateDate], [FKApplicationID])
							VALUES (@UserName,
								@Password,
								@PasswordFormat,
								@Email,
								@IsApproved,
								@IsLockedOut,
								@CreateDate,
								@FKApplicationID);

							SELECT @UserID = (SELECT  TOP 1 u.UserID 
										FROM Users u
										ORDER BY UserID DESC);

							INSERT INTO UsersToRoles([FKUserID], [FKRoleID]) 
							VALUES (@UserID,
								@RoleID);

							SELECT TOP 1 u.UserID 
							FROM Users u
							ORDER BY UserID DESC;
						END       
					ELSE
						BEGIN
							SELECT -3 [UserID] -- @UserRole not specified or not valid.  REQUEST BY WHICH GROUP.
						END
					-- // **END OF IF @UserRole IN ('Admin', 'Coordinator')
				END  -- // **END OF BEGIN @3
			ELSE
				BEGIN
					SELECT -2 [UserID] -- @UserLogin  not specified.  REQUEST BY WHO.   
				END
			-- // **END OF IF @UserLogin != ''
		END     -- // **END OF BEGIN @2
	ELSE
		BEGIN
			SELECT -1 [UserID] -- @RoleData not specified.    (eg. Client)   WHOSE DETAILS.
		END
	-- // **END OF IF @RoleData != ''  
END    -- // **END OF BEGIN @1
GO
/****** Object:  StoredProcedure [dbo].[spInsertNewUserInRole]    Script Date: 06/12/2015 11:41:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertNewUserInRole]
	@UserID int,
	@RoleID int
AS
BEGIN
	insert into usersToRoles (FKUserID, FKRoleID) values (@USERID, @RoleID)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertNewControlToRole]    Script Date: 06/12/2015 11:41:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spInsertNewControlToRole]
@RoleID int,
@PageName varchar(50),
@ControlID varchar(50),
@invisible int,
@disabled int
AS
BEGIN
Begin Transaction
	
	if not exists (select * from Controls where Page = @PageName and ControlID = @ControlID)
		Insert into Controls (Page, ControlID) values (@PageName, @ControlID)
	if @@Error <> 0 goto ErrorHandler

	insert into ControlsToRoles (FKRole, FKPage, FKControlID, invisible, disabled) 
		values (@RoleID, @PageName, @ControlID, @invisible, @disabled)

	if @@Error <> 0 goto ErrorHandler

	commit transaction
	return

ErrorHandler:
	rollback transaction 
	return 

END
GO
/****** Object:  ForeignKey [FK_Users_Applications]    Script Date: 06/12/2015 11:41:40 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Applications] FOREIGN KEY([FKApplicationID])
REFERENCES [dbo].[Applications] ([ApplicationID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Applications]
GO
/****** Object:  ForeignKey [FK_Roles_Applications]    Script Date: 06/12/2015 11:41:40 ******/
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Applications] FOREIGN KEY([FKApplicationID])
REFERENCES [dbo].[Applications] ([ApplicationID])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Applications]
GO
/****** Object:  ForeignKey [FK_PermissionsToRoles_ControlPermissions]    Script Date: 06/12/2015 11:41:40 ******/
ALTER TABLE [dbo].[ControlsToRoles]  WITH CHECK ADD  CONSTRAINT [FK_PermissionsToRoles_ControlPermissions] FOREIGN KEY([FKPage], [FKControlID])
REFERENCES [dbo].[Controls] ([Page], [ControlID])
GO
ALTER TABLE [dbo].[ControlsToRoles] CHECK CONSTRAINT [FK_PermissionsToRoles_ControlPermissions]
GO
/****** Object:  ForeignKey [FK_PermissionsToRoles_Roles]    Script Date: 06/12/2015 11:41:40 ******/
ALTER TABLE [dbo].[ControlsToRoles]  WITH CHECK ADD  CONSTRAINT [FK_PermissionsToRoles_Roles] FOREIGN KEY([FKRole])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[ControlsToRoles] CHECK CONSTRAINT [FK_PermissionsToRoles_Roles]
GO
/****** Object:  ForeignKey [FK_UsersToRoles_Roles]    Script Date: 06/12/2015 11:41:41 ******/
ALTER TABLE [dbo].[UsersToRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersToRoles_Roles] FOREIGN KEY([FKRoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[UsersToRoles] CHECK CONSTRAINT [FK_UsersToRoles_Roles]
GO
/****** Object:  ForeignKey [FK_UsersToRoles_Users]    Script Date: 06/12/2015 11:41:41 ******/
ALTER TABLE [dbo].[UsersToRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersToRoles_Users] FOREIGN KEY([FKUserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UsersToRoles] CHECK CONSTRAINT [FK_UsersToRoles_Users]
GO
