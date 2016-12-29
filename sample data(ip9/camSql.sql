USE [Gym_Site]
GO

/****** Object:  Table [dbo].[Inventory]    Script Date: 11/18/2015 6:08:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inventory](
	[ProdID] [int] IDENTITY(1,1) NOT NULL,
	[ProdName] [nvarchar](50) NOT NULL,
	[BrandName] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NOT NULL,
	[Price] [float] NOT NULL,
	[Units] [int] NULL,
	[ImageName] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[ProdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Inventory] FOREIGN KEY([ProdID])
REFERENCES [dbo].[Inventory] ([ProdID])
GO

ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Inventory]
GO

ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Inventory1] FOREIGN KEY([ProdID])
REFERENCES [dbo].[Inventory] ([ProdID])
GO

ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Inventory1]
GO

