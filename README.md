# Library-management
This project is a simple database-based Library Management System designed to handle operations like book rentals, customer management, and branch operations using SQL queries.
Features
Employee Management

Retrieve and manage employee details, such as their positions, salaries, and branch assignments.
Branch Operations

Link employees to specific branches and display branch addresses.
Book Rentals

Track issued books and their corresponding rental prices.
Customer Management

Identify customers who issued books based on specific conditions, such as rental price thresholds.
Database Schema
Tables
Employee Table

Stores employee details (Employee ID, Name, Position, Salary, Branch Number).
Branch Table

Contains branch details (Branch ID, Branch Address, etc.).
Books Table

Holds information about books, including rental prices and ISBN.
Customer Table

Includes customer details (Customer ID, Customer Name, etc.).
IssueStatus Table

Tracks the issue status of books, linking books to customers.
How to Run
Set up a relational database (e.g., MySQL or PostgreSQL).
Create the tables using the schema provided.
Insert sample data into the tables.
Execute the SQL queries to interact with the system.
Future Enhancements
Add a user interface for easier interaction.
Implement CRUD (Create, Read, Update, Delete) operations.
Enhance query optimization for better performance.



