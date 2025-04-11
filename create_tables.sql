-- Create the Books table
USE [Oriental Book Store];
GO

CREATE TABLE Books (
    BookID INT PRIMARY KEY IDENTITY (1,1),
    Title VARCHAR(255),
    Author VARCHAR(255),
    Genre VARCHAR(50),
    PublicationYear INT,
    Price DECIMAL(5, 2),
    StockQuantity INT
);
GO

-- Create the Sales table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    BookID INT,
    CustomerID INT,
    SaleDate DATETIME,
    QuantitySold INT,
    TotalPrice DECIMAL(6, 2),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
GO
