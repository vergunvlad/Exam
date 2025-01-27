USE [master]
GO
/****** Object:  Database [DemoExam]    Script Date: 19.06.2024 23:50:40 ******/
CREATE DATABASE [DemoExam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoExam', FILENAME = N'D:\бд\MSSQL15.SQLEXPRESS\MSSQL\DATA\DemoExam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemoExam_log', FILENAME = N'D:\бд\MSSQL15.SQLEXPRESS\MSSQL\DATA\DemoExam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DemoExam] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoExam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoExam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoExam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoExam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoExam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoExam] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoExam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoExam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoExam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoExam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoExam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoExam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoExam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoExam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoExam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoExam] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemoExam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoExam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoExam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoExam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoExam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoExam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoExam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoExam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemoExam] SET  MULTI_USER 
GO
ALTER DATABASE [DemoExam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoExam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoExam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoExam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DemoExam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemoExam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DemoExam] SET QUERY_STORE = OFF
GO
USE [DemoExam]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 19.06.2024 23:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Client_id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 19.06.2024 23:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrgTechModel]    Script Date: 19.06.2024 23:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrgTechModel](
	[Model_id] [int] IDENTITY(1,1) NOT NULL,
	[Name_of_model] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrgTechModel] PRIMARY KEY CLUSTERED 
(
	[Model_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrgTechType]    Script Date: 19.06.2024 23:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrgTechType](
	[Type_id] [int] IDENTITY(1,1) NOT NULL,
	[Name_of_type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrgTechType] PRIMARY KEY CLUSTERED 
(
	[Type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 19.06.2024 23:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[Priority_id] [int] IDENTITY(1,1) NOT NULL,
	[Name_of_priority] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED 
(
	[Priority_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.06.2024 23:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_id] [int] IDENTITY(1,1) NOT NULL,
	[Role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 19.06.2024 23:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Ticket_id] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [datetime] NOT NULL,
	[orgTechType] [int] NOT NULL,
	[orgTechModel] [int] NOT NULL,
	[problemDescryption] [nvarchar](max) NOT NULL,
	[Ticket_status] [int] NOT NULL,
	[completionDate] [datetime] NULL,
	[repairParts] [nvarchar](max) NULL,
	[masterID] [int] NULL,
	[clientID] [int] NOT NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket_status]    Script Date: 19.06.2024 23:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket_status](
	[Status_id] [int] IDENTITY(1,1) NOT NULL,
	[Name_of_status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ticket_status] PRIMARY KEY CLUSTERED 
(
	[Status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket_Сomment]    Script Date: 19.06.2024 23:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket_Сomment](
	[Comment_id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Master_id] [int] NOT NULL,
	[Ticket_id] [int] NOT NULL,
 CONSTRAINT [PK_Ticket_Сomment] PRIMARY KEY CLUSTERED 
(
	[Comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Client_id], [FIO], [Phone], [Login], [Password]) VALUES (5, N'Григорьев Семён Викторович', N'89219567849', N'login11', N'pass11')
INSERT [dbo].[Client] ([Client_id], [FIO], [Phone], [Login], [Password]) VALUES (6, N'Сорокин Дмитрий Ильич', N'89219567841', N'login12', N'pass12')
INSERT [dbo].[Client] ([Client_id], [FIO], [Phone], [Login], [Password]) VALUES (7, N'Белоусов Егор Ярославович', N'89219567842', N'login13', N'pass13')
INSERT [dbo].[Client] ([Client_id], [FIO], [Phone], [Login], [Password]) VALUES (8, N'Суслов Михаил Александрович', N'89219567843', N'login14', N'pass14')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Employee_id], [FIO], [Phone], [Login], [Password], [Role]) VALUES (1, N'Носов Иван Михайлович', N'89210563128', N'login1', N'pass1', 1)
INSERT [dbo].[Employee] ([Employee_id], [FIO], [Phone], [Login], [Password], [Role]) VALUES (2, N'Ильин Александр Андреевич', N'89535078985', N'login2', N'pass2', 2)
INSERT [dbo].[Employee] ([Employee_id], [FIO], [Phone], [Login], [Password], [Role]) VALUES (3, N'Никифоров Иван Дмитриевич', N'89210673849', N'login3', N'pass3', 2)
INSERT [dbo].[Employee] ([Employee_id], [FIO], [Phone], [Login], [Password], [Role]) VALUES (4, N'Елисеев Артём Леонидович', N'89990563748', N'login4', N'pass4', 3)
INSERT [dbo].[Employee] ([Employee_id], [FIO], [Phone], [Login], [Password], [Role]) VALUES (5, N'Титов Сергей Кириллович', N'89994563847', N'login5', N'pass5', 3)
INSERT [dbo].[Employee] ([Employee_id], [FIO], [Phone], [Login], [Password], [Role]) VALUES (6, N'Васильев Вячеслав Александрович', N'89219567844', N'login15', N'pass15', 2)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[OrgTechModel] ON 

INSERT [dbo].[OrgTechModel] ([Model_id], [Name_of_model]) VALUES (1, N'DEXP Aquilon O286')
INSERT [dbo].[OrgTechModel] ([Model_id], [Name_of_model]) VALUES (2, N'DEXP Atlas H388')
INSERT [dbo].[OrgTechModel] ([Model_id], [Name_of_model]) VALUES (3, N'MSI GF76 Katana 11UC-879XRU черный')
INSERT [dbo].[OrgTechModel] ([Model_id], [Name_of_model]) VALUES (4, N'MSI Modern 15 B12M-211RU черный')
INSERT [dbo].[OrgTechModel] ([Model_id], [Name_of_model]) VALUES (5, N'HP LaserJet Pro M404dn')
SET IDENTITY_INSERT [dbo].[OrgTechModel] OFF
GO
SET IDENTITY_INSERT [dbo].[OrgTechType] ON 

INSERT [dbo].[OrgTechType] ([Type_id], [Name_of_type]) VALUES (1, N'Компьютер')
INSERT [dbo].[OrgTechType] ([Type_id], [Name_of_type]) VALUES (2, N'Ноутбук')
INSERT [dbo].[OrgTechType] ([Type_id], [Name_of_type]) VALUES (3, N'Принтер')
INSERT [dbo].[OrgTechType] ([Type_id], [Name_of_type]) VALUES (4, N'Сканер')
SET IDENTITY_INSERT [dbo].[OrgTechType] OFF
GO
SET IDENTITY_INSERT [dbo].[Priority] ON 

INSERT [dbo].[Priority] ([Priority_id], [Name_of_priority]) VALUES (1, N'Срочный')
INSERT [dbo].[Priority] ([Priority_id], [Name_of_priority]) VALUES (2, N'Не срочный')
INSERT [dbo].[Priority] ([Priority_id], [Name_of_priority]) VALUES (3, N'Важный')
INSERT [dbo].[Priority] ([Priority_id], [Name_of_priority]) VALUES (4, N'Неважный')
SET IDENTITY_INSERT [dbo].[Priority] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (1, N'Менеджер')
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (2, N'Мастер')
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (3, N'Оператор')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([Ticket_id], [startDate], [orgTechType], [orgTechModel], [problemDescryption], [Ticket_status], [completionDate], [repairParts], [masterID], [clientID], [Priority]) VALUES (1, CAST(N'2023-06-06T00:00:00.000' AS DateTime), 1, 1, N'Перестал работать', 2, NULL, N'', 2, 6, NULL)
INSERT [dbo].[Ticket] ([Ticket_id], [startDate], [orgTechType], [orgTechModel], [problemDescryption], [Ticket_status], [completionDate], [repairParts], [masterID], [clientID], [Priority]) VALUES (2, CAST(N'2023-05-05T00:00:00.000' AS DateTime), 1, 2, N'Перестал работать', 2, NULL, N'', 3, 7, NULL)
INSERT [dbo].[Ticket] ([Ticket_id], [startDate], [orgTechType], [orgTechModel], [problemDescryption], [Ticket_status], [completionDate], [repairParts], [masterID], [clientID], [Priority]) VALUES (3, CAST(N'2022-07-07T00:00:00.000' AS DateTime), 2, 3, N'Выключается', 3, CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'', 3, 8, NULL)
INSERT [dbo].[Ticket] ([Ticket_id], [startDate], [orgTechType], [orgTechModel], [problemDescryption], [Ticket_status], [completionDate], [repairParts], [masterID], [clientID], [Priority]) VALUES (4, CAST(N'2023-08-02T00:00:00.000' AS DateTime), 2, 4, N'Выключается', 1, NULL, N'', NULL, 7, NULL)
INSERT [dbo].[Ticket] ([Ticket_id], [startDate], [orgTechType], [orgTechModel], [problemDescryption], [Ticket_status], [completionDate], [repairParts], [masterID], [clientID], [Priority]) VALUES (5, CAST(N'2023-08-02T00:00:00.000' AS DateTime), 3, 5, N'Перестала включаться', 1, NULL, N'', NULL, 8, NULL)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket_status] ON 

INSERT [dbo].[Ticket_status] ([Status_id], [Name_of_status]) VALUES (1, N'Новая заявка')
INSERT [dbo].[Ticket_status] ([Status_id], [Name_of_status]) VALUES (2, N'В процессе ремонта')
INSERT [dbo].[Ticket_status] ([Status_id], [Name_of_status]) VALUES (3, N'Готова к выдаче')
SET IDENTITY_INSERT [dbo].[Ticket_status] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket_Сomment] ON 

INSERT [dbo].[Ticket_Сomment] ([Comment_id], [Message], [Master_id], [Ticket_id]) VALUES (1, N'Интересно...', 2, 1)
INSERT [dbo].[Ticket_Сomment] ([Comment_id], [Message], [Master_id], [Ticket_id]) VALUES (2, N'Будем разбираться!', 3, 2)
INSERT [dbo].[Ticket_Сomment] ([Comment_id], [Message], [Master_id], [Ticket_id]) VALUES (3, N'Сделаем всё на высшем уровне!', 3, 3)
SET IDENTITY_INSERT [dbo].[Ticket_Сomment] OFF
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Role_id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Client] FOREIGN KEY([clientID])
REFERENCES [dbo].[Client] ([Client_id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Client]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Employee] FOREIGN KEY([masterID])
REFERENCES [dbo].[Employee] ([Employee_id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Employee]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_OrgTechModel] FOREIGN KEY([orgTechModel])
REFERENCES [dbo].[OrgTechModel] ([Model_id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_OrgTechModel]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_OrgTechType] FOREIGN KEY([orgTechType])
REFERENCES [dbo].[OrgTechType] ([Type_id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_OrgTechType]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Priority] FOREIGN KEY([Priority])
REFERENCES [dbo].[Priority] ([Priority_id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Priority]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Ticket_status] FOREIGN KEY([Ticket_status])
REFERENCES [dbo].[Ticket_status] ([Status_id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Ticket_status]
GO
ALTER TABLE [dbo].[Ticket_Сomment]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Сomment_Employee] FOREIGN KEY([Master_id])
REFERENCES [dbo].[Employee] ([Employee_id])
GO
ALTER TABLE [dbo].[Ticket_Сomment] CHECK CONSTRAINT [FK_Ticket_Сomment_Employee]
GO
ALTER TABLE [dbo].[Ticket_Сomment]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Сomment_Ticket] FOREIGN KEY([Ticket_id])
REFERENCES [dbo].[Ticket] ([Ticket_id])
GO
ALTER TABLE [dbo].[Ticket_Сomment] CHECK CONSTRAINT [FK_Ticket_Сomment_Ticket]
GO
USE [master]
GO
ALTER DATABASE [DemoExam] SET  READ_WRITE 
GO
