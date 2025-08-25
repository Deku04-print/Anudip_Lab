create database Employee_Management_System;

use  Employee_Management_System;


//1.Create a table called Employees with the following columns:

EmployeeID (INTEGER, Primary Key)

FirstName (VARCHAR(50))

LastName (VARCHAR(50))

Salary (DECIMAL(10,2))  //
desc Employee;

Query:

mysql> CREATE TABLE Employees (
    ->     EmployeeID INT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     Salary DECIMAL(10,2)
    -> );

mysql> desc Employees;


mysql> DESC Employees;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| EmployeeID | int           | NO   | PRI | NULL    |       |
| FirstName  | varchar(50)   | YES  |     | NULL    |       |
| LastName   | varchar(50)   | YES  |     | NULL    |       |
| Salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
4 rows in set (0.01 sec)


//2.Insert  5 employees records.


Query:

mysql> INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary) VALUES
    -> (1001, 'Harsh', 'Dabhade', 60000.00),
    -> (1002, 'Yash', 'Dabhade', 50000.00),
    -> (1003, 'Rohit', 'Chautmol', 70000.00),
    -> (1004, 'kundan', 'Kumar', 55000.00),
    -> (1005, 'shankar', 'Mahadevan', 65000.00);

mysql> select * from Employees;
+------------+-----------+-----------+----------+
| EmployeeID | FirstName | LastName  | Salary   |
+------------+-----------+-----------+----------+
|       1001 | Harsh     | Dabhade   | 60000.00 |
|       1002 | Yash      | Dabhade   | 50000.00 |
|       1003 | Rohit     | Chautmol  | 70000.00 |
|       1004 | kundan    | Kumar     | 55000.00 |
|       1005 | shankar   | Mahadevan | 65000.00 |
+------------+-----------+-----------+----------+
5 rows in set (0.00 sec)


//3.Alter the table to include a new column.:Add a new column Departments (VARCHAR(50)) to the table.

Query:

mysql>ALTER TABLE Employees ADD Department VARCHAR(50);

mysql> select * from Employees;
+------------+-----------+-----------+----------+------------+
| EmployeeID | FirstName | LastName  | Salary   | Department |
+------------+-----------+-----------+----------+------------+
|       1001 | Harsh     | Dabhade   | 60000.00 | NULL       |
|       1002 | Yash      | Dabhade   | 50000.00 | NULL       |
|       1003 | Rohit     | Chautmol  | 70000.00 | NULL       |
|       1004 | kundan    | Kumar     | 55000.00 | NULL       |
|       1005 | shankar   | Mahadevan | 65000.00 | NULL       |
+------------+-----------+-----------+----------+------------+




//4.Get the names and department of employees who earn more than 55000.


Query:
//inserting the deparment values //

UPDATE Employees SET Department = 'HR' WHERE EmployeeID = 101;
UPDATE Employees SET Department = 'Finance' WHERE EmployeeID = 102;
UPDATE Employees SET Department = 'Sales' WHERE EmployeeID = 103;
UPDATE Employees SET Department = 'engineer' WHERE EmployeeID = 104;

mysql> select firstname , lastname , Department from Employees WHERE Salary >55000;
+-----------+-----------+------------+
| firstname | lastname  | Department |
+-----------+-----------+------------+
| Harsh     | Dabhade   | NULL       |
| Rohit     | Chautmol  | NULL       |
| shankar   | Mahadevan | NULL       |
+-----------+-----------+------------+
