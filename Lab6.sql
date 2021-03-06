CREATE DATABASE Java5
USE [Java5]
GO
/****** Object:  Table [dbo].[Departs]    Script Date: 04/28/2018 20:06:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departs](
	[id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Departs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/28/2018 20:06:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 04/28/2018 20:06:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staffs](
	[id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[BirthDay] [date] NULL,
	[Photo] [nvarchar](100) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [int] NULL,
	[Salary] [float] NULL,
	[Notes] [nvarchar](50) NULL,
	[DepartId] [varchar](50) NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Records]    Script Date: 04/28/2018 20:06:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Records](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [bit] NULL,
	[Reason] [nvarchar](max) NULL,
	[Date] [date] NULL,
	[StaffId] [varchar](50) NULL,
 CONSTRAINT [PK_Records] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Records_Records]    Script Date: 04/28/2018 20:06:54 ******/
ALTER TABLE [dbo].[Records]  WITH CHECK ADD  CONSTRAINT [FK_Records_Records] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staffs] ([id])
GO
ALTER TABLE [dbo].[Records] CHECK CONSTRAINT [FK_Records_Records]
GO
/****** Object:  ForeignKey [FK_Staffs_Departs]    Script Date: 04/28/2018 20:06:54 ******/
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD  CONSTRAINT [FK_Staffs_Departs] FOREIGN KEY([DepartId])
REFERENCES [dbo].[Departs] ([id])
GO
ALTER TABLE [dbo].[Staffs] CHECK CONSTRAINT [FK_Staffs_Departs]
GO

INSERT INTO Users(Username,Password,Fullname)
VALUES ('doannv', '123456', N'Nguyễn Văn Đoàn');
INSERT INTO Users(Username,Password,Fullname)
VALUES ('nghiant', '123456', N'Ngô Trọng Nghĩa');
INSERT INTO Users(Username,Password,Fullname)
VALUES ('huanpv', '123456', N'Phạm Văn Huấn');

INSERT INTO Departs(id,Name)
VALUES ('P101', N'Phòng IT');
INSERT INTO Departs(id,Name)
VALUES ('P102', N'Phòng Kế Toán');
INSERT INTO Departs(id,Name)
VALUES ('P103', N'Phòng Marketing');

INSERT INTO Staffs(id,Name,BirthDay,Gender,Phone,Salary,DepartId)
VALUES ('PH04705', N'Nguyễn Văn Đoàn', '1997-09-14',1,0167932654,1500,'P101');

INSERT INTO Records(Type,Reason,Date,StaffId)
VALUES (1, N'OK', '2018-06-20','PH04705');