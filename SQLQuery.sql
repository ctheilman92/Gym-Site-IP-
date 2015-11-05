DROP TABLE User_Tbl;
DROP TABLE Message_Tbl;
DROP TABLE Server_Tbl;


CREATE TABLE User_Tbl (
UserID		int IDENTITY(1,1) PRIMARY KEY,
UserName		nvarchar(50),
passwd			nvarchar(50),
FirstName		nvarchar(50),
LastName		nvarchar(50),
Email		nvarchar(50),
Paypal		nvarchar(50),
SDays		int,
Adminornot		bit);

CREATE TABLE Emp_Tbl (
empID		int IDENTITY(1,1) PRIMARY KEY,
empName		nvarchar(50),
empasswd			nvarchar(50),
emFirstName		nvarchar(50),
emLastName		nvarchar(50),
emEmail		nvarchar(50),
emPaypal		nvarchar(50),
emSDays		int,
emAdminornot		bit);

INSERT INTO User_Tbl VALUES('Admin', 'admin', 'Christian', 'Habihirwe', 'test@gmail.com', 'test@gmail.com', '10', '1');

SELECT * FROM User_Tbl;

CREATE TABLE Message_Tbl (
MessID		int IDENTITY(1,1) PRIMARY KEY,
UserID		nvarchar(50),
Messg			nvarchar(144),
MessRead		bit);

INSERT INTO Message_Tbl VALUES('Admin', 'Hello I will need your help admin', '0');

SELECT * From Message_Tbl;

CREATE TABLE Server_Tbl(
SverID		int IDENTITY(1,1) PRIMARY KEY,
TimeUpdate	smalldatetime,
PTime		numeric(18, 0),
MemCommit	numeric(18, 0),
PCacheFault	numeric(18, 0),
DiskTime	numeric(18, 0),
SrvLoad		int);

INSERT INTO Server_Tbl VALUES('2012-06-09 09:10:30', '21.537842358415', '26.5862204918437', '4.98152428321346', '0.0348585648589413', '13' );
SELECT * From Server_Tbl;