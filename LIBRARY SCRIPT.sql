/*creating databse*/
CREATE DATABASE LIBRARY;
USE LIBRARY;
/*creating branch table*/
CREATE TABLE Branch(
Branch_no INT PRIMARY KEY,
Manager_id INT,
Branch_ddress VARCHAR(255),
Contact_no VARCHAR(15)
);
INSERT INTO Branch VALUES
(1, 101, 'Main Street, City A', '1234567890'),
(2, 102, 'Elm Road, City B', '9876543210'),
(3, 103, 'Maple Avenue, City C', '1112233445'),
(4, 104, 'Oak Street, City D', '5556677889'),
(5, 105, 'Cedar Lane, City E', '8887766554'),
(6, 106, 'Pine Drive, City F', '3334445556'),
(7, 107, 'Birch Way, City G', '6667778889'),
(8, 108, 'Ash Boulevard, City H', '1231231234'),
(9, 109, 'Spruce Place, City I', '3213213210'),
(10, 110, 'Willow Crescent, City J', '9879879870');
/*creating employee table*/
CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(100),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);
INSERT INTO Employee VALUES
(201, 'Alice', 'Manager', 50000.00, 1),
(202, 'Bob', 'Clerk', 30000.00, 1),
(203, 'Charlie', 'Assistant', 25000.00, 2),
(204, 'Diana', 'Manager', 50000.00, 2),
(205, 'Eve', 'Clerk', 30000.00, 3),
(206, 'Frank', 'Assistant', 25000.00, 3),
(207, 'Grace', 'Manager', 50000.00, 4),
(208, 'Heidi', 'Clerk', 30000.00, 4),
(209, 'Ivan', 'Assistant', 25000.00, 5),
(210, 'Judy', 'Manager', 50000.00, 5);
/*creating book table*/
CREATE TABLE Books (
    ISBN INT PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(50),
    Rental_Price DECIMAL(10, 2),
    Status VARCHAR(10),
    Author VARCHAR(100),
    Publisher VARCHAR(100)
);

INSERT INTO Books VALUES
(1001, 'The Great Gatsby', 'Fiction', 50.00, 'Yes', 'F. Scott Fitzgerald', 'Scribner'),
(1002, 'To Kill a Mockingbird', 'Fiction', 40.00, 'Yes', 'Harper Lee', 'J.B. Lippincott'),
(1003, '1984', 'Dystopian', 45.00, 'No', 'George Orwell', 'Secker & Warburg'),
(1004, 'Moby Dick', 'Adventure', 55.00, 'Yes', 'Herman Melville', 'Harper & Brothers'),
(1005, 'War and Peace', 'Historical', 60.00, 'Yes', 'Leo Tolstoy', 'The Russian Messenger'),
(1006, 'Hamlet', 'Drama', 35.00, 'Yes', 'William Shakespeare', 'Folger Library'),
(1007, 'Pride and Prejudice', 'Romance', 40.00, 'No', 'Jane Austen', 'Whitehall'),
(1008, 'The Odyssey', 'Epic', 50.00, 'Yes', 'Homer', 'Penguin Classics'),
(1009, 'The Alchemist', 'Fable', 45.00, 'Yes', 'Paulo Coelho', 'HarperOne'),
(1010, 'Inferno', 'Mystery', 50.00, 'Yes', 'Dan Brown', 'Doubleday');
creating customer table*/
CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Customer_address VARCHAR(255),
    Reg_date DATE
);

INSERT INTO Customer VALUES
(301, 'John Doe', '123 Elm St, City A', '2024-01-01'),
(302, 'Jane Smith', '456 Pine St, City B', '2024-01-02'),
(303, 'Michael Brown', '789 Maple St, City C', '2024-01-03'),
(304, 'Emily Davis', '321 Oak St, City D', '2024-01-04'),
(305, 'Daniel Wilson', '654 Birch St, City E', '2024-01-05'),
(306, 'Sophia Johnson', '987 Cedar St, City F', '2024-01-06'),
(307, 'Chris Miller', '147 Ash St, City G', '2024-01-07'),
(308, 'Olivia Garcia', '258 Spruce St, City H', '2024-01-08'),
(309, 'David Martinez', '369 Willow St, City I', '2024-01-09'),
(310, 'Emma White', '753 Oakwood St, City J', '2024-01-10');
/*creating table issuestatus*/
CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE,
    ISBN_Book INT,
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (ISBN_Book) REFERENCES Books(ISBN)
);

INSERT INTO IssueStatus VALUES
(401, 301, 'The Great Gatsby', '2024-01-10', 1001),
(402, 302, '1984', '2024-01-11', 1003),
(403, 303, 'The Alchemist', '2024-01-12', 1009),
(404, 304, 'Inferno', '2024-01-13', 1010),
(405, 305, 'Moby Dick', '2024-01-14', 1004),
(406, 306, 'War and Peace', '2024-01-15', 1005),
(407, 307, 'Hamlet', '2024-01-16', 1006),
(408, 308, 'Pride and Prejudice', '2024-01-17', 1007),
(409, 309, 'The Odyssey', '2024-01-18', 1008),
(410, 310, 'To Kill a Mockingbird', '2024-01-19', 1002);
/*creating table returnstatus*/
CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE,
    ISBN_Book2 INT,
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (ISBN_Book2) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus VALUES
(501, 301, 'The Great Gatsby', '2024-01-20', 1001),
(502, 302, '1984', '2024-01-21', 1003),
(503, 303, 'The Alchemist', '2024-01-22', 1009),
(504, 304, 'Inferno', '2024-01-23', 1010),
(505, 305, 'Moby Dick', '2024-01-24', 1004),
(506, 306, 'War and Peace', '2024-01-25', 1005),
(507, 307, 'Hamlet', '2024-01-26', 1006),
(508, 308, 'Pride and Prejudice', '2024-01-27', 1007),
(509, 309, 'The Odyssey', '2024-01-28', 1008),
(510, 310, 'To Kill a Mockingbird', '2024-01-29', 1002);
SELECT * FROM employee;
/*retrieving title,category and rental price of available books*/
SELECT Book_title,Category,Rental_Price 
FROM books
WHERE  Status='YES';
/*listing employee names and their salaries in descending order*/
SELECT Emp_name,Salary FROM Employee
ORDER BY Salary DESC;
/*retrieving book titles and their corresponding customers
who have issued those books*/
SELECT issuestatus.Issued_book_name,customer.Customer_name
FROM issuestatus INNER JOIN customer
ON issuestatus.Issued_cust=customer.Customer_id;
/*total count of books in each category*/
SELECT Category,COUNT(*) AS TotL_Books
FROM books
GROUP BY Category;
/*retreiving employee names and their position whose salaries are above 50000*/
SELECT Emp_ID,Emp_name,Position
FROM employee
WHERE Salary>50000;
/*listing customer names who registered before 2024-01-30
and have not issued any books yet*/
SELECT Customer_name,Reg_date
FROM customer
WHERE Reg_date< '2024-01-30'
AND Customer_id NOT IN (SELECT Issued_cust FROM issuestatus);
SELECT * FROM customer;
/*total count of employees in each branch*/
SELECT Branch_no,Count(*) AS Total_employ
FROM employee
GROUP BY Branch_no;
 /*names of customers who have issued books in jan 2024*/
 SELECT customer.Customer_name 
 FROM customer INNER JOIN issuestatus
 ON customer.Customer_id=issuestatus.Issued_cust
 WHERE MONTH(Issue_date)=1  AND YEAR(Issue_date)=2024;
 SELECT * FROM employee;
/*retrieving book title containing the word history*/
 SELECT  Book_title 
 FROM Books 
 WHERE Book_title LIKE "%history%" ;
/*Retrieving branch numbers having more than 5 employees*/
 SELECT Branch_no,COUNT(*) AS Employeee_count
 FROM employee
 GROUP BY Branch_no
 HAVING COUNT(*)>5; 
 /*retrieving employees who manage branches*/
 SELECT employee.Emp_name,branch.Branch_ddress
 FROM employee INNER JOIN branch
 ON employee.Emp_ID=branch.Manager_id;
/*name of customers who have issued books with a rental price higher than rs 25*/
 SELECT customer.Customer_name,books.Rental_Price
 FROM books INNER JOIN issuestatus
 ON issuestatus.Isbn_book=books.ISBN
 JOIN customer 
 ON customer.Customer_id = issuestatus.Issued_cust
 WHERE 
 books.Rental_Price > 25;
 
 
 





