-- Data Analysis Queries

USE [Oriental Book Store];
GO

-----------------------------------------------------------------------
-- Find the Top 5 Best-Selling Books Based on Total Quantity Sold

SELECT TOP 5
    b.Title,
    b.Author,
    SUM(s.QuantitySold) AS TotalQuantitySold
FROM Books b
JOIN Sales s ON b.BookID = s.BookID
GROUP BY b.Title, b.Author
ORDER BY TotalQuantitySold DESC;
GO

-----------------------------------------------------------------------
-- Find Customers Who Have Made Purchases in Every Genre

WITH CustomerGenreCounts AS (
    SELECT
        s.CustomerID,
        b.Genre,
        COUNT(DISTINCT b.Genre) OVER (PARTITION BY s.CustomerID) AS CustomerDistinctGenreCount,
        COUNT(DISTINCT b.Genre) OVER () AS TotalDistinctGenreCount
    FROM Sales s
    JOIN Books b ON s.BookID = b.BookID
    GROUP BY s.CustomerID, b.Genre
)
SELECT DISTINCT
    CustomerID
FROM CustomerGenreCounts
WHERE CustomerDistinctGenreCount = TotalDistinctGenreCount;
GO

-----------------------------------------------------------------------
-- Calculate Monthly Sales Trends Over Time

SELECT
    YEAR(SaleDate) AS SalesYear,
    MONTH(SaleDate) AS SalesMonth,
    COUNT(s.SaleID) AS NumberOfSales,
    SUM(s.TotalPrice) AS MonthlyRevenue
FROM Sales s
GROUP BY YEAR(SaleDate), MONTH(SaleDate)
ORDER BY SalesYear, SalesMonth;
GO
