CREATE DATABASE RestauranDB;
GO

USE RestauranDB;
GO
CREATE TABLE Customer (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Phone NVARCHAR(15) NOT NULL,
    Email NVARCHAR(100)
);
CREATE TABLE Table_Restaurant (
    TableID INT IDENTITY(1,1) PRIMARY KEY,
    TableNumber INT NOT NULL,
    Capacity INT NOT NULL,
    Status NVARCHAR(20) NOT NULL
);
CREATE TABLE Food (
    FoodID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Price INT NOT NULL,
    Category NVARCHAR(50)
);
CREATE TABLE [order] (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    OrderDate DATETIME NOT NULL,
    TotalPrice INT NOT NULL,
    CustomerID INT NOT NULL,
    TableID INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (TableID) REFERENCES Table_Restaurant(TableID)
);
CREATE TABLE OrderItem (
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
    Quantity INT NOT NULL,
    OrderID INT NOT NULL,
    FoodID INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID),
    FOREIGN KEY (FoodID) REFERENCES Food(FoodID)
);
INSERT INTO Customer (FullName, Phone, Email)
VALUES
(N'حمیدرضا پور محی ابادی', '09120000001', NULL),
(N'امیررضا اکبری', '09120000002', NULL);
GO


INSERT INTO Table_Restaurant (TableNumber, Capacity, Status)
VALUES
(1, 4, N'خالی'),
(2, 4, N'خالی');
GO


INSERT INTO Food (Name, Price, Category)
VALUES
(N'چلوکباب', 200000, N'غذای اصلی'),
(N'پیتزا', 150000, N'فست فود');
GO


INSERT INTO [Order] (OrderDate, TotalPrice, CustomerID, TableID)
VALUES
(GETDATE(), 200000, 1, 1),
(GETDATE(), 150000, 2, 2);
GO


INSERT INTO OrderItem (Quantity, OrderID, FoodID)
VALUES
(1, 1, 1),
(1, 2, 2);
GO
