DROP TABLE Admin_Tbl;
DROP TABLE User_Tbl;
DROP TABLE Emp_Tbl;
DROP TABLE Message_Tbl;
DROP TABLE Billing;
DROP TABLE Shipping;
DROP TABLE cart;
DROP TABLE Inventory;
DROP TABLE Orders;

CREATE TABLE Admin_Tbl (
AdminID		int IDENTITY(1,1) PRIMARY KEY,
Admin_Username	nvarchar(50),
Admin_Passwd	nvarchar(50),
Admin_FirstName	nvarchar(50),
Admin_LastName	nvarchar(50),
Admin_Email		nvarchar(50),
Admin_Messg		nvarchar(144));
SELECT * FROM Admin_Tbl;
INSERT INTO Admin_Tbl VALUES('Admin', 'admin', 'Super', 'User', 'Root@superuser.com', '');

CREATE TABLE User_Tbl (
UserID		int IDENTITY(1,1) PRIMARY KEY,
UserName		nvarchar(50),
Passwd			nvarchar(50),
FirstName		nvarchar(50),
LastName		nvarchar(50),
Email			nvarchar(50),
Paypal			nvarchar(50),
MemberDaysleft	int,
User_Messg		nvarchar(144));
SELECT * FROM User_Tbl;
INSERT INTO User_Tbl VALUES('John', 'Commander12345', 'John', 'Snow', 'kingsnow@goth.com', 'kingsnow@goth.com','', '');

CREATE TABLE Emp_Tbl (
emp_ID		int IDENTITY(1,1) PRIMARY KEY,
emp_UserName		nvarchar(50),
em_Passwd			nvarchar(50),
em_FirstName		nvarchar(50),
em_LastName		nvarchar(50),
em_Email		nvarchar(50),
em_Messg		nvarchar(144));
SELECT * FROM Emp_Tbl;
INSERT INTO Emp_Tbl VALUES('employee', 'Commander12345', 'Ned', 'stark', 'Root@superuser.com', '');





CREATE TABLE Message_Tbl (
MessID		int IDENTITY(1,1) PRIMARY KEY,
Messg				nvarchar(144),
Messg_Email			nvarchar(50));





CREATE TABLE Billing (
    [UserID]    INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (50) NOT NULL,
    [LastName]  NVARCHAR (50) NOT NULL,
    [CCType]    NVARCHAR (50) NOT NULL,
    [CCNumber]  INT           NOT NULL,
    [Street]    NVARCHAR (50) NOT NULL,
    [City]      NVARCHAR (50) NOT NULL,
    [zip]       INT           NOT NULL,
);

CREATE TABLE Inventory (
    [ProdID]      INT            IDENTITY (1, 1) NOT NULL,
    [ProdName]    NVARCHAR (50)  NOT NULL,
    [BrandName]   NVARCHAR (50)  NULL,
    [Description] NVARCHAR (250) NOT NULL,
    [Price]       FLOAT (53)     NOT NULL,
    [Units]       INT            NULL,
    [ImageName]   NVARCHAR (50)  NOT NULL,
    [Category]    NVARCHAR (50)  NOT NULL,

);

SET IDENTITY_INSERT Inventory ON
INSERT INTO [dbo].[Inventory] ([ProdID], [ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (2, N'BCAA PRO', N'BCAA      ', N'64oz Glutamine support', 41.99, 2000, N'AminoX-Pro.jpg', N'Protein')
INSERT INTO [dbo].[Inventory] ([ProdID], [ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (3, N'AminoX FRUIT PUNCH', N'BSN       ', N'64oz Amino boosting Fruit Punch', 49.99, 1500, N'AminoX_FP.jpg', N'Protein')
INSERT INTO [dbo].[Inventory] ([ProdID], [ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (4, N'Complex1000', N'BCAA      ', N'400 Tablet Amino Chaining Protein', 55.99, 8500, N'BCAA_1000.jpg', N'Protein')
INSERT INTO [dbo].[Inventory] ([ProdID], [ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (5, N'BCAA 6000', N'BCAA', N'Gaspari Nutrition. 180 Tablet', 39.99, 3000, N'BCAA_6000.jpg', N'Protein')
INSERT INTO [dbo].[Inventory] ([ProdID], [ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (6, N'Classic Fitted Logo', N'bodyBuilding.com', N'60/40 Cotton-Polyester Blend!', 7.99, 1000, N'BodybuildingX_450_white.jpg', N'Apparel')
INSERT INTO [dbo].[Inventory] ([ProdID], [ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (7, N'Gold Package', N'GymLord', N'6-month Gym Membership. Unlimited Access', 49.99, NULL, N'gold_member.png', N'Membership')
INSERT INTO [dbo].[Inventory] ([ProdID], [ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (8, N'The Mat 3mm', N'lululemon', N'3mm reversible yoga mat ', 58.99, 5000, N'themat3mm.jpg', N'Equipment')
INSERT INTO [dbo].[Inventory] ([ProdID], [ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (9, N'Pure Glutamine', N'USN', N'Free-forming anabolic amino Acid. Increas Speed and Strength!', 11.99, 5000, N'Pure_Glutamine.jpg', N'Protein')
INSERT INTO [dbo].[Inventory] ([ProdID], [ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (10, N'Creatine Mega 1250', N'Olimp Nutrition', N'Creatine capsules to fuel your next workout. much creatine. such swoll. ', 54.99, 800, N'Creatine_mega1250.jpg', N'Protein')
SET IDENTITY_INSERT [dbo].[Inventory] OFF


CREATE TABLE cart (
    [UserID]       INT NOT NULL,
    [ProdID]       INT NOT NULL,
	[ProdName]	   INT NOT NULL,
    [UnitsToOrder] INT NOT NULL,
);


CREATE TABLE Orders (
    [OrderID]      INT        IDENTITY (1, 1) NOT NULL,
    [Subtotal]     FLOAT (53) NOT NULL,
    [ItemsOrdered] INT        NOT NULL,
);

CREATE TABLE Shipping (
    [UserID]    INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (50) NOT NULL,
    [LastName]  NCHAR (10)    NOT NULL,
    [Street]    NVARCHAR (50) NOT NULL,
    [City]      NVARCHAR (50) NOT NULL,
    [State]     NVARCHAR (50) NOT NULL,
    [zip]       INT           NOT NULL,
);