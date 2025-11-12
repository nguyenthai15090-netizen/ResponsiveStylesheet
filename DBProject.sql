-- Tạo Database
CREATE DATABASE ProjectPRJ;
GO
USE ProjectPRJ;
GO

-- 1. Users
CREATE TABLE [dbo].[Users] (
    [userID] INT IDENTITY(1,1) PRIMARY KEY,
    [name] NVARCHAR(50) NOT NULL,
    [email] NVARCHAR(100) UNIQUE NOT NULL,
    [password] NVARCHAR(255) NOT NULL,
    [phone] NVARCHAR(20),
    [address] NVARCHAR(255),
    [role] NVARCHAR(10) DEFAULT 'customer', -- admin, customer

);


CREATE TABLE [dbo].[Factories](
    [factoryID] INT IDENTITY(1,1) PRIMARY KEY,
    [factoryName] NVARCHAR(50) NOT NULL,
);

-- 3. Products (gộp hình ảnh vào bảng này)
CREATE TABLE [dbo].[Products] (
    [productID] INT IDENTITY(1,1) PRIMARY KEY,
    [productName] NVARCHAR(100) NOT NULL,
    [price] DECIMAL(12,2) NOT NULL,
    [quantity] INT DEFAULT 0,
    [image] NVARCHAR(255),
    [specs] NVARCHAR(255), 
    [description] NVARCHAR(MAX),
    [factoryID] INT,    
    [discount] INT,
    FOREIGN KEY (factoryID) REFERENCES Factories(factoryID)
);


-- 4. Cart (Mỗi dòng là 1 sản phẩm trong giỏ của user)
CREATE TABLE [dbo].[Cart] (
    [cartItemID] INT IDENTITY(1,1) PRIMARY KEY,
    [userID] INT,
    [productID] INT,
    [quantity] INT DEFAULT 1,
    FOREIGN KEY (userID) REFERENCES Users(userID),
    FOREIGN KEY (productID) REFERENCES Products(productID)
);

-- 5. Orders
CREATE TABLE [dbo].[Orders] (
    [orderID] INT IDENTITY(1,1) PRIMARY KEY,
    [userID] INT,
    [orderDate] DATETIME DEFAULT GETDATE(),
    [total] DECIMAL(12,2),
    [status] INT DEFAULT '1', --1=cho xac nhan,2=xac nhan thanh cong,3=giao hang thanh cong,4=huy
    FOREIGN KEY (userID) REFERENCES Users(userID)
);

-- 6. Order Details
CREATE TABLE [dbo].[OrderDetails] (
    [detailID] INT IDENTITY(1,1) PRIMARY KEY,
    [orderID] INT,
    [productID] INT,
    [price] DECIMAL(12,2),
    [quantity] INT,
    FOREIGN KEY (orderID) REFERENCES Orders(orderID),
    FOREIGN KEY (productID) REFERENCES Products(productID)
);

-- 7. Wish List
CREATE TABLE [dbo].[WishList] (
    [wishID] INT IDENTITY(1,1) PRIMARY KEY,
    [userID] INT,
    [productID] INT,
    FOREIGN KEY (userID) REFERENCES Users(userID),
    FOREIGN KEY (productID) REFERENCES Products(productID)
);