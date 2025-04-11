# SQL-Bookstore-Analysis

# SQL Bookstore Data Analysis Project

## Overview

This project demonstrates fundamental SQL skills by analyzing a sample dataset representing transactions from an online bookstore. The project involves creating a database schema, populating it with sample data, performing data cleaning and transformation tasks, and finally, conducting basic data analysis to gain insights into book sales and customer behavior.

This project serves as a portfolio piece to showcase proficiency in SQL for data manipulation and analysis.

## Database Schema

The project utilizes two primary tables:

* **`Books` Table:** Stores information about the books available in the bookstore.
    * `BookID` (INT, Primary Key, Auto-incrementing)
    * `Title` (VARCHAR(255))
    * `Author` (VARCHAR(255))
    * `Genre` (VARCHAR(50))
    * `PublicationYear` (INT)
    * `Price` (DECIMAL(5, 2))
    * `StockQuantity` (INT)
    * `Author_First_Name` (NVARCHAR(255)) - Extracted from `Author`
    * `Author_LAST_Name` (NVARCHAR(255)) - Extracted from `Author`

* **`Sales` Table:** Records details of each book sale transaction.
    * `SaleID` (INT, Primary Key, Auto-incrementing)
    * `BookID` (INT, Foreign Key referencing `Books.BookID`)
    * `CustomerID` (INT)
    * `SaleDate` (DATETIME)
    * `QuantitySold` (INT)
    * `TotalPrice` (DECIMAL(6, 2))
    * `SaleDateOnly` (DATE) - Extracted from `SaleDate`

## Project Files

The project is organized into the following SQL files:

* **`create_tables.sql`**: Contains the SQL Data Definition Language (DDL) statements to create the `Books` and `Sales` tables with their respective columns, data types, primary keys, and foreign key constraints.
* **`insert_data.sql`**: Contains the SQL Data Manipulation Language (DML) statements to populate the `Books` and `Sales` tables with sample data. This data includes multiple books by the same authors and various sales transactions.
* **`data_cleaning.sql`**: Contains SQL queries to clean and transform the data:
    * Standardizing the `SaleDate` to a date-only format in the `Sales` table.
    * Populating missing `PublicationYear` values in the `Books` table based on the most common publication year for each author.
    * Breaking down the full `Author` name into `Author_First_Name` and `Author_LAST_Name` in the `Books` table.
    * Standardizing the capitalization of the `Genre` column in the `Books` table.
* **`analysis_queries.sql`**: Contains SQL queries to perform basic data analysis:
    * Identifying the top 5 best-selling books based on the total quantity sold.
    * Finding customers who have made purchases in every genre.
    * Calculating monthly sales trends over time.

## How to Run the Scripts

To execute these SQL scripts, you will need a SQL Server instance and a client tool like SQL Server Management Studio (SSMS). Follow these steps:

1.  **Connect to your SQL Server instance.**
2.  **Create a new database named `Oriental Book Store`** (or ensure you have a database with this name).
3.  **Open each `.sql` file in SSMS in the following order:**
    * `create_tables.sql`
    * `insert_data.sql`
    * `data_cleaning.sql`
    * `analysis_queries.sql`
4.  **Execute each file by clicking the "Execute" button** (or pressing F5).

The scripts will create the tables, populate them with data, perform the data cleaning steps, and finally, execute the analysis queries, displaying the results in the SSMS "Results" pane.

## Tools Used

* **SQL Server:** The relational database management system used for this project.
* **SQL Server Management Studio (SSMS):** The primary tool used to interact with SQL Server, execute queries, and manage the database.

## Learning Outcomes

By reviewing this project, you can see my ability to:

* Design and create relational database schemas.
* Populate databases with sample data.
* Perform data cleaning and transformation using SQL.
* Write SQL queries for basic data analysis and to extract meaningful insights.
* Organize SQL code into logical scripts for better maintainability.

## Further Enhancements (Optional)

Future enhancements for this project could include:

* Implementing more complex data analysis queries.
* Adding more tables (e.g., `Customers`).
* Performing more advanced data cleaning techniques.
* Visualizing the analysis results using external tools.

---

Feel free to use and adapt this `README.md` file for your GitHub repository. It provides a good overview of your project and the skills you've demonstrated. Remember to commit this file along with your SQL scripts to your repository. Good luck!
