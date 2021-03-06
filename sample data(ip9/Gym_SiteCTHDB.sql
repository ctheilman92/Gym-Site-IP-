USE [master]
GO
/****** Object:  Database [Gym_Site]    Script Date: 11/19/2015 12:41:43 AM ******/
CREATE DATABASE [Gym_Site]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gym_Site', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MILKYPC\MSSQL\DATA\Gym_Site.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Gym_Site_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MILKYPC\MSSQL\DATA\Gym_Site_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Gym_Site] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gym_Site].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gym_Site] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gym_Site] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gym_Site] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gym_Site] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gym_Site] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gym_Site] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gym_Site] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gym_Site] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gym_Site] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gym_Site] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gym_Site] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gym_Site] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gym_Site] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gym_Site] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gym_Site] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gym_Site] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gym_Site] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gym_Site] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gym_Site] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gym_Site] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gym_Site] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gym_Site] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gym_Site] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gym_Site] SET  MULTI_USER 
GO
ALTER DATABASE [Gym_Site] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gym_Site] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gym_Site] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gym_Site] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Gym_Site] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Gym_Site]
GO
/****** Object:  Table [dbo].[Billing]    Script Date: 11/19/2015 12:41:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billing](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[CCType] [nvarchar](50) NOT NULL,
	[CCNumber] [int] NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[zip] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart]    Script Date: 11/19/2015 12:41:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[UserID] [int] NOT NULL,
	[ProdID] [int] NOT NULL,
	[UnitsToOrder] [int] NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Emp_Tbl]    Script Date: 11/19/2015 12:41:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Tbl](
	[empID] [int] IDENTITY(1,1) NOT NULL,
	[empName] [nvarchar](50) NULL,
	[empasswd] [nvarchar](50) NULL,
	[emFirstName] [nvarchar](50) NULL,
	[emLastName] [nvarchar](50) NULL,
	[emEmail] [nvarchar](50) NULL,
	[emPaypal] [nvarchar](50) NULL,
	[emSDays] [int] NULL,
	[emAdminornot] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 11/19/2015 12:41:43 AM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 11/19/2015 12:41:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Subtotal] [float] NOT NULL,
	[ItemsOrdered] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 11/19/2015 12:41:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nchar](10) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[zip] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Tbl]    Script Date: 11/19/2015 12:41:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Tbl](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[passwd] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Paypal] [nvarchar](50) NOT NULL,
	[SDays] [int] NOT NULL,
	[Adminornot] [bit] NULL,
 CONSTRAINT [PK__User_Tbl__1788CCAC5370F376] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[InvToCart_View]    Script Date: 11/19/2015 12:41:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[InvToCart_View]
AS
SELECT        dbo.Inventory.ProdName, dbo.Inventory.Price
FROM            dbo.cart INNER JOIN
                         dbo.Inventory ON dbo.cart.ProdID = dbo.Inventory.ProdID AND dbo.cart.ProdName = dbo.Inventory.ProdName AND dbo.cart.Price = dbo.Inventory.Price

GO
/****** Object:  View [dbo].[UserShipBill_View]    Script Date: 11/19/2015 12:41:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UserShipBill_View]
AS
SELECT        dbo.User_Tbl.FirstName, dbo.User_Tbl.LastName, dbo.Billing.CCType, dbo.Billing.CCNumber, dbo.User_Tbl.Email, dbo.Shipping.Street, dbo.Shipping.City, dbo.Shipping.State, dbo.Shipping.zip
FROM            dbo.User_Tbl INNER JOIN
                         dbo.Billing ON dbo.User_Tbl.UserID = dbo.Billing.UserID AND dbo.User_Tbl.FirstName = dbo.Billing.FirstName AND dbo.User_Tbl.LastName = dbo.Billing.LastName INNER JOIN
                         dbo.Shipping ON dbo.User_Tbl.UserID = dbo.Shipping.UserID AND dbo.User_Tbl.FirstName = dbo.Shipping.FirstName AND dbo.User_Tbl.LastName = dbo.Shipping.LastName

GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_Inv] FOREIGN KEY([ProdID])
REFERENCES [dbo].[Inventory] ([ProdID])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_Inv]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Tbl] ([UserID])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_Cart_User]
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
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cart"
            Begin Extent = 
               Top = 20
               Left = 874
               Bottom = 145
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Inventory"
            Begin Extent = 
               Top = 14
               Left = 516
               Bottom = 139
               Right = 680
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'InvToCart_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'InvToCart_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[23] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = -1313
      End
      Begin Tables = 
         Begin Table = "User_Tbl"
            Begin Extent = 
               Top = 127
               Left = 356
               Bottom = 252
               Right = 522
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Billing"
            Begin Extent = 
               Top = 114
               Left = 53
               Bottom = 252
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Shipping"
            Begin Extent = 
               Top = 112
               Left = 669
               Bottom = 237
               Right = 835
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserShipBill_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserShipBill_View'
GO
USE [master]
GO
ALTER DATABASE [Gym_Site] SET  READ_WRITE 
GO
