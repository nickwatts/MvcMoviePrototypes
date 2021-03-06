/****** Object:  Table [dbo].[EdmMetadata]    Script Date: 10/18/2012 03:14:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EdmMetadata]') AND type in (N'U'))
DROP TABLE [dbo].[EdmMetadata]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 10/18/2012 03:14:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Movies]') AND type in (N'U'))
DROP TABLE [dbo].[Movies]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 10/18/2012 03:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Movies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Movies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Genre] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Rating] [nvarchar](5) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK__Movies__3214EC2703317E3D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Movies] ON
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [Rating]) VALUES (1, N'When Harry Met Sally', CAST(0x00007F0400000000 AS DateTime), N'Romantic Comedy', CAST(7.99 AS Decimal(18, 2)), N'G')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [Rating]) VALUES (2, N'Ghostbusters ', CAST(0x0000782000000000 AS DateTime), N'Comedy', CAST(8.99 AS Decimal(18, 2)), N'G')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [Rating]) VALUES (3, N'Ghostbusters 2', CAST(0x00007AE800000000 AS DateTime), N'Comedy', CAST(9.99 AS Decimal(18, 2)), N'G')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [Rating]) VALUES (4, N'Rio Bravo', CAST(0x0000549500000000 AS DateTime), N'Western', CAST(3.99 AS Decimal(18, 2)), N'G')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [Rating]) VALUES (5, N'The Lost Boys', CAST(0x0000806800000000 AS DateTime), N'Horror', CAST(10.99 AS Decimal(18, 2)), N'9')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [Rating]) VALUES (6, N'The Shawshank Redemption', CAST(0x0000946000000000 AS DateTime), N'Thriller', CAST(9.95 AS Decimal(18, 2)), N'10')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [Rating]) VALUES (7, N'X-Men First Class', CAST(0x00009FB100000000 AS DateTime), N'Action', CAST(12.99 AS Decimal(18, 2)), N'7')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [Rating]) VALUES (8, N'The Hunger Games', CAST(0x00009F3D00000000 AS DateTime), N'Action', CAST(4.99 AS Decimal(18, 2)), N'2')
SET IDENTITY_INSERT [dbo].[Movies] OFF
/****** Object:  Table [dbo].[EdmMetadata]    Script Date: 10/18/2012 03:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EdmMetadata]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EdmMetadata](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModelHash] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK__EdmMetad__3214EC077F60ED59] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[EdmMetadata] ON
INSERT [dbo].[EdmMetadata] ([Id], [ModelHash]) VALUES (1, N'3B6259618F34A51FCAA12E4F93971413ED692C0F95FB4AD4237DE151CC475341')
SET IDENTITY_INSERT [dbo].[EdmMetadata] OFF
