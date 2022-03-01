USE [uchubd]
GO

/****** Object:  Table [dbo].[Food]    Script Date: 27.02.2022 20:24:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Food](
	
	[Product] [nchar](10) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Category](
	
	[Category] [nchar](10) NULL
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[Category]
	Add FoodID  int  null
GO

ALTER TABLE [dbo].[Food]
	Add Categoryid  int  null
GO

SElect Product,Category From Food a left outer join Category b on a.Categoryid = b.FoodID 
