USE [band_tracker]
GO
/****** Object:  Table [dbo].[bands]    Script Date: 7/22/2016 2:07:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bands](
	[name] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bands_venues]    Script Date: 7/22/2016 2:07:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bands_venues](
	[band_id] [int] NULL,
	[venue_id] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[venues]    Script Date: 7/22/2016 2:07:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[venues](
	[name] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[bands] ON 

INSERT [dbo].[bands] ([name], [id]) VALUES (N'Simple Twist of Fate', 1)
INSERT [dbo].[bands] ([name], [id]) VALUES (N'The Allman Brothers', 2)
INSERT [dbo].[bands] ([name], [id]) VALUES (N'The Byrds', 3)
INSERT [dbo].[bands] ([name], [id]) VALUES (N'The Meat Puppets', 4)
INSERT [dbo].[bands] ([name], [id]) VALUES (N'The Red Hot Chili Peppers', 5)
INSERT [dbo].[bands] ([name], [id]) VALUES (N'The Sunset Yodelers', 6)
INSERT [dbo].[bands] ([name], [id]) VALUES (N'The Happy Racoons', 7)
SET IDENTITY_INSERT [dbo].[bands] OFF
SET IDENTITY_INSERT [dbo].[bands_venues] ON 

INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (1, 1, 1)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (1, 2, 2)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (1, 3, 3)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (1, 4, 4)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 1, 5)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 5, 6)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 6, 7)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 7, 8)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (3, 6, 9)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (3, 7, 10)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (3, 5, 11)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (4, 3, 12)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (4, 4, 13)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (4, 2, 14)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (4, 1, 15)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (5, 2, 16)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (5, 3, 17)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (5, 4, 18)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (5, 7, 19)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (6, 6, 20)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (6, 5, 21)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (6, 4, 22)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (6, 2, 23)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (7, 1, 24)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (7, 3, 25)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (7, 5, 26)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (7, 6, 27)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (7, 7, 28)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (1, 7, 29)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (1, 6, 30)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (7, 4, 31)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 8, 32)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 9, 33)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 10, 34)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 11, 35)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 12, 36)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 4, 37)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 0, 38)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 0, 39)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 3, 40)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (5, 0, 41)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (2, 6, 42)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (4, 6, 43)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (4, 6, 44)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (4, 6, 45)
SET IDENTITY_INSERT [dbo].[bands_venues] OFF
SET IDENTITY_INSERT [dbo].[venues] ON 

INSERT [dbo].[venues] ([name], [id]) VALUES (N'Woodstock', 1)
INSERT [dbo].[venues] ([name], [id]) VALUES (N'Red Rocks', 2)
INSERT [dbo].[venues] ([name], [id]) VALUES (N'McMennamins Edgefield', 3)
INSERT [dbo].[venues] ([name], [id]) VALUES (N'Crystal Ballroom', 4)
INSERT [dbo].[venues] ([name], [id]) VALUES (N'Wonder Ballroom', 5)
INSERT [dbo].[venues] ([name], [id]) VALUES (N'Rose Garden', 6)
INSERT [dbo].[venues] ([name], [id]) VALUES (N'Filmore East', 7)
SET IDENTITY_INSERT [dbo].[venues] OFF
