CREATE DATABASE [MariaCafe]
USE [MariaCafe]
GO
/****** Object:  Table [dbo].[FindUs]    Script Date: 10/8/2019 5:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FindUs](
	[id] [int] NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[tel] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[dayClose] [nvarchar](20) NOT NULL,
	[weekDays] [nvarchar](20) NOT NULL,
	[holiday] [nvarchar](20) NOT NULL,
	[photoPath] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 10/8/2019 5:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) not NULL,
	[content] [nvarchar](max) not NULL,
	[updateTime] date not null,
	[price] float NOT NULL,
	[photoPath] [nvarchar](500) not NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[FindUs] ([id], [address], [tel], [email], [dayClose], [weekDays], [holiday], [photoPath]) VALUES (1, N'Hanoi, Vietnam', N'0983450322', N'hieufusw@gmail.com', N'Closed', N'10:00-20:00', N'11:00-21:00', N'map/map.jpg')
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [title], [content], [updateTime], [price], [photoPath]) VALUES (1, N'Cake 1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet.', CAST(N'2019-03-19' AS Date), 25, N'cake/topcake1.jpg')
INSERT [dbo].[Menu] ([id], [title], [content], [updateTime], [price], [photoPath]) VALUES (2, N'Traditional Cakes', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet.', CAST(N'2019-08-19' AS Date), 20, N'cake/topcake2.jpg')
INSERT [dbo].[Menu] ([id], [title], [content], [updateTime], [price], [photoPath]) VALUES (3, N'In the Afternoon', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet.', CAST(N'2019-10-21' AS Date), 40, N'cake/topcake1.jpg')
INSERT [dbo].[Menu] ([id], [title], [content], [updateTime], [price], [photoPath]) VALUES (4, N'Cake 4', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet.', CAST(N'2019-10-08' AS Date), 30, N'cake/topcake2.jpg')
INSERT [dbo].[Menu] ([id], [title], [content], [updateTime], [price], [photoPath]) VALUES (5, N'Maria''s Cosy Cafe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet.', CAST(N'2019-08-24' AS Date), 35, N'cake/maria.jpg')
SET IDENTITY_INSERT [dbo].[Menu] OFF
