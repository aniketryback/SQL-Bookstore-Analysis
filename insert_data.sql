-- Insert sample data into the Books table
USE [Oriental Book Store];
GO

INSERT INTO Books (Title, Author, Genre, PublicationYear, Price, StockQuantity) VALUES
(1, 'The Secret Garden', 'Frances Hodgson Burnett', 'Children', 1911, 9.99, 50),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 12.50, 30),
(3, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 10.75, 45),
(4, '1984', 'George Orwell', 'Dystopian', 1949, 11.20, 35),
(5, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 14.99, 25),
(6, 'Little Women', 'Louisa May Alcott', 'Children', 1868, 8.50, 60),
(7, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 11.99, 40),
(8, 'Sense and Sensibility', 'Jane Austen', 'Romance', 1811, 9.25, 55),
(9, 'Brave New World', 'Aldous Huxley', 'Dystopian', 1932, 10.99, 30),
(10, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1954, 29.99, 15);

INSERT INTO Books (Title, Author, Genre, PublicationYear, Price, StockQuantity) VALUES
(NULL, 'The Call of the Wild', 'Jack London', 'Adventure', NULL, 7.99, 70),
(NULL, 'Moby Dick', 'Herman Melville', 'Classic', NULL, 13.25, 20),
(NULL, 'Frankenstein', 'Mary Shelley', 'Gothic', NULL, 10.50, 30),
(NULL, 'Dracula', 'Bram Stoker', 'Gothic', NULL, 11.75, 40),
(NULL, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Philosophical', NULL, 12.99, 25);

INSERT INTO Books (Title, Author, Genre, PublicationYear, Price, StockQuantity) VALUES
(NULL, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', 'Mystery', 1892, 10.50, 35),
(NULL, 'The Hound of the Baskervilles', 'Arthur Conan Doyle', 'Mystery', 1902, 11.75, 40),
(NULL, 'A Study in Scarlet', 'Arthur Conan Doyle', 'Mystery', 1887, 9.99, 50),
(NULL, 'Emma', 'Jane Austen', 'Romance', 1815, 10.25, 45),
(NULL, 'Persuasion', 'Jane Austen', 'Romance', 1817, 9.50, 55),
(NULL, 'Oliver Twist', 'Charles Dickens', 'Classic', 1838, 12.00, 30),
(NULL, 'Great Expectations', 'Charles Dickens', 'Classic', 1861, 13.50, 25),
(NULL, 'The Shining', 'Stephen King', 'Horror', 1977, 14.99, 20),
(NULL, 'It', 'Stephen King', 'Horror', 1986, 16.50, 15),
(NULL, 'The Green Mile', 'Stephen King', 'Fantasy', 1996, 12.75, 30);
GO

-- Insert sample data into the Sales table
INSERT INTO Sales (BookID, CustomerID, SaleDate, QuantitySold, TotalPrice) VALUES
(1, 101, '2025-04-01 10:00:00', 2, 19.98),
(2, 102, '2025-04-01 11:30:00', 1, 12.50),
(3, 101, '2025-04-02 09:15:00', 3, 32.25),
(4, 103, '2025-04-03 14:45:00', 1, 11.20),
(5, 102, '2025-04-03 16:00:00', 2, 29.98),
(1, 104, '2025-04-05 12:20:00', 1, 9.99),
(7, 101, '2025-04-06 18:00:00', 1, 11.99),
(3, 103, '2025-04-07 10:30:00', 2, 21.50),
(9, 102, '2025-04-08 15:10:00', 1, 10.99),
(5, 101, '2025-04-09 08:40:00', 3, 44.97),
(2, 104, '2025-04-10 11:00:00', 1, 12.50),
(10, 103, '2025-04-10 17:25:00', 1, 29.99),
(6, 101, '2025-04-11 09:00:00', 2, 17.00),
(8, 102, '2025-04-11 14:00:00', 1, 9.25);
GO
