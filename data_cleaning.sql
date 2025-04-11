-- Data Cleaning Tasks

USE [Oriental Book Store];
GO

-----------------------------------------------------------------------
-- Standardize Date Format in Sales Table

ALTER TABLE Sales
ADD SaleDateOnly DATE;
GO

UPDATE Sales
SET SaleDateOnly = CONVERT(DATE, SaleDate);
GO

SELECT SaleDate, SaleDateOnly
FROM Sales;
GO

-----------------------------------------------------------------------
-- Populate Missing Publication Year in Books Table

-- Identify the most common Publication Year for each author
WITH AuthorCommonYears AS (
    SELECT
        Author,
        PublicationYear,
        COUNT(*) AS BookCount,
        ROW_NUMBER() OVER(PARTITION BY Author ORDER BY COUNT(*) DESC) AS rn
    FROM Books
    WHERE PublicationYear IS NOT NULL
    GROUP BY Author, PublicationYear
)
-- Update the Books table to fill missing Publication Years
UPDATE b
SET PublicationYear = acy.PublicationYear
FROM Books b
INNER JOIN AuthorCommonYears acy ON b.Author = acy.Author
WHERE b.PublicationYear IS NULL AND acy.rn = 1;
GO

SELECT BookID, Author, Title, PublicationYear
FROM Books
WHERE PublicationYear IS NULL; -- Verify updates
GO

-----------------------------------------------------------------------
-- Breaking out Author Full Name into First and Last Name

-- Add new columns
ALTER TABLE Books
ADD Author_First_Name NVARCHAR(255);
GO

ALTER TABLE Books
ADD Author_LAST_Name NVARCHAR(255);
GO

-- Populate the new columns
UPDATE Books
SET Author_First_Name = LTRIM(SUBSTRING(Author, 1, CHARINDEX(' ', Author) - 1))
WHERE CHARINDEX(' ', Author) > 0; -- Only for authors with a space

UPDATE Books
SET Author_LAST_Name = LTRIM(SUBSTRING(Author, CHARINDEX(' ', Author) + 1, LEN(Author)))
WHERE CHARINDEX(' ', Author) > 0; -- Only for authors with a space
GO

SELECT Author, Author_First_Name, Author_LAST_Name
FROM Books;
GO

-----------------------------------------------------------------------
-- Standardize Genre Capitalization

UPDATE Books
SET Genre = UPPER(LEFT(Genre, 1)) + LOWER(SUBSTRING(Genre, 2, LEN(Genre)));
GO

SELECT DISTINCT Genre
FROM Books;
GO
