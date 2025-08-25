--Database Schema: Consider a simple database with one tables: BankAccount BankAccount 

--Query : >>

mysql> create database Bank;

mysql>  CREATE TABLE BankAccount (
    ->     account_id INT PRIMARY KEY,
    ->     account_holder_name VARCHAR(100),
    ->     account_balance DECIMAL(12, 2)
    -> );
mysql>desc BankAccount;


/* Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance 

+---------------------+---------------+------+-----+---------+-------+
| Field               | Type          | Null | Key | Default | Extra |
+---------------------+---------------+------+-----+---------+-------+
| account_id          | int           | NO   | PRI | NULL    |       |
| account_holder_name | varchar(100)  | YES  |     | NULL    |       |
| account_balance     | decimal(12,2) | YES  |     | NULL    |       |
+---------------------+---------------+------+-----+---------+-------+*/



 --Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table.

--Query :>>


mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES (101, 'Shreeman', 45000.00);


mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES (102, 'Superman', 50000.00);

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES (103, 'Harsh', 45000.00);

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES (104, 'Rajat', 30000.00);

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES (105, 'Yash', 60000.00);

/*
mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Shreeman            |        45000.00 |
|        102 | Superman            |        50000.00 |
|        103 | Harsh               |        45000.00 |
|        104 | Rajat               |        30000.00 |
|        105 | Yash                |        60000.00 |
+------------+---------------------+-----------------+ 
*/
 
/*Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.*/

--Query :>>

mysql> SELECT account_holder_name, account_balance From BankAccount;

/*
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Shreeman            |        45000.00 |
| Superman            |        50000.00 |
| Harsh               |        45000.00 |
| Rajat               |        30000.00 |
| Yash                |        60000.00 |
+---------------------+-----------------+
*/

 Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 

-- Query :>>

mysql> SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;
/*
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Shreeman            |        45000.00 |
| Superman            |        50000.00 |
| Harsh               |        45000.00 |
| Yash                |        60000.00 |
+---------------------+-----------------+
*/

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

--Query :>>

mysql> UPDATE BankAccount SET account_balance = 50000.00 WHERE account_id = 101;


/*
mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Shreeman            |        50000.00 |
|        102 | Superman            |        50000.00 |
|        103 | Harsh               |        45000.00 |
|        104 | Rajat               |        30000.00 |
|        105 | Yash                |        60000.00 |
+------------+---------------------+-----------------+
*/