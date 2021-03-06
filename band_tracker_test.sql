USE [band_tracker_test]
GO
/****** Object:  Table [dbo].[bands]    Script Date: 7/22/2016 2:07:02 PM ******/
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
/****** Object:  Table [dbo].[bands_venues]    Script Date: 7/22/2016 2:07:03 PM ******/
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
/****** Object:  Table [dbo].[venues]    Script Date: 7/22/2016 2:07:03 PM ******/
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
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (23, 45, 29)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (27, 52, 30)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (34, 59, 31)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (35, 66, 32)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (39, 73, 33)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (43, 80, 34)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (0, 82, 35)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (47, 88, 36)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (0, 90, 37)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (54, 96, 38)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (0, 98, 39)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (55, 104, 40)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (0, 106, 41)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (59, 112, 42)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (0, 114, 43)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (66, 120, 44)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (0, 122, 45)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (70, 128, 46)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (0, 130, 47)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (74, 136, 48)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (0, 138, 49)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (75, 144, 50)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (76, 146, 51)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (83, 152, 52)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (84, 154, 53)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (85, 160, 54)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (86, 162, 55)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (88, 164, 56)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (92, 170, 58)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (93, 172, 59)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (95, 174, 60)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (99, 180, 62)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (100, 182, 63)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (102, 184, 64)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (105, 189, 65)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (106, 191, 66)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (108, 193, 67)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (111, 198, 68)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (112, 200, 69)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (114, 202, 70)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (119, 204, 72)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (120, 205, 73)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (123, 210, 74)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (126, 214, 76)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (127, 215, 77)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (130, 220, 78)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (132, 228, 80)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (133, 230, 81)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (89, 165, 57)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (96, 175, 61)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (115, 203, 71)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (136, 233, 83)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (124, 212, 75)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (131, 222, 79)
INSERT [dbo].[bands_venues] ([band_id], [venue_id], [id]) VALUES (135, 232, 82)
SET IDENTITY_INSERT [dbo].[bands_venues] OFF
