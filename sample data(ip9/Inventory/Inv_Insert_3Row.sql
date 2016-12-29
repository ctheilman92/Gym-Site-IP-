CREATE TABLE Inventory 
(
ProdID		int		PRIMARY KEY,
ProdName	nvarchar(50),
Description nvarchar(50),
Price		float,
Image_Name	nvarchar(50),
Image		varbinary(MAX),
Category	nvarchar(50)
)


CREATE TABLE CART
(
ProdID		int		PRIMARY KEY,
ProdName	nvarchar(50),
ProdPrice	int,
SubTotal	float
)








INSERT INTO [Inventory] (ProdName, BrandName, Price, Description, Units, Category, Image_Name, Image)
VALUES ('Complex2', 'BCAA', '55.99', '400 Tablet Amino Chaining Protein', '8500', 'Protein', 'BCAA_Complex2.jpg', (SELECT * FROM OPENROWSET(BULK N'C:\Users\Milky\Dropbox\sample data(ip9\Inventory\BCAA_Complex2.jpg', SINGLE_BLOB) AS Image))

INSERT INTO [Inventory] (ProdName, BrandName, Price, Description, Units, Category, Image_Name, Image)
VALUES ('BCAA and Glutamine', 'BCAA', '24.99', '13.8oz Glutamine support', '3000', 'Protein', 'BCAA_Glutamine.jpg', (SELECT * FROM OPENROWSET(BULK N'C:\Users\Milky\Dropbox\sample data(ip9\Inventory\BCAA_Glutamine.jpg', SINGLE_BLOB) AS Image))


INSERT INTO [Inventory] (ProdName, BrandName, Price, Description, Units, Category, Image_Name, Image)
VALUES ('BCAA PRO', 'BCAA', '41.99', '64oz Glutamine support', '2000', 'Protein', 'AminoX-Pro.jpg', (SELECT * FROM OPENROWSET(BULK N'C:\Users\Milky\Dropbox\sample data(ip9\Inventory\BCAA_Pro.jpg', SINGLE_BLOB) AS Image))
