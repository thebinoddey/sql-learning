# SQL (Structured Query Language)

**SQL (Structured Query Language)** is the standard language used to communicate with relational databases.

Using SQL, you can create databases, create tables, insert data, retrieve information, update records, delete records, and manage database security.

Whether you're building a banking system, an e-commerce platform, or a social media application, SQL is one of the most essential technologies used behind the scenes.

---

# Why Learn SQL?

Almost every software application stores data.

For example:

- Instagram stores users, posts, likes, and comments.
- Amazon stores products, customers, and orders.
- Netflix stores movies, watch history, and subscriptions.
- Banks store customer accounts and transactions.

SQL allows developers and data analysts to efficiently interact with this data.

---

# What Can SQL Do?

Using SQL, you can:

- Create databases
- Create tables
- Insert records
- Retrieve data
- Update existing records
- Delete records
- Filter data
- Sort data
- Group data
- Join multiple tables
- Perform calculations
- Analyze large datasets
- Manage users and permissions

---

# Example

Retrieve all employees from a table.

```sql
SELECT *
FROM Employees;
```

Retrieve employees whose salary is greater than ₹60,000.

```sql
SELECT *
FROM Employees
WHERE Salary > 60000;
```

---

# History of SQL

SQL was developed at **IBM** during the early 1970s by **Donald D. Chamberlin** and **Raymond F. Boyce**.

It was originally called **SEQUEL (Structured English Query Language)** before being renamed SQL.

Today, SQL is an international standard maintained by ANSI (American National Standards Institute) and ISO (International Organization for Standardization).

---

# Features of SQL

- Easy to learn
- English-like syntax
- Standardized language
- High performance
- Supports large databases
- Works across multiple database systems
- Used by developers, analysts, and data scientists

---

# SQL is Not Case Sensitive

The following queries are identical.

```sql
SELECT *
FROM Employees;
```

```sql
select *
from employees;
```

```sql
SeLeCt *
FrOm Employees;
```

Although SQL keywords are case-insensitive, it is considered a best practice to write keywords in uppercase.

---

# SQL Statements

SQL statements are instructions given to the database.

Example:

```sql
CREATE DATABASE CompanyDB;
```

```sql
USE CompanyDB;
```

```sql
SELECT *
FROM Employees;
```

Each SQL statement should end with a semicolon (`;`).

---

# Categories of SQL Commands

SQL commands are divided into five major categories.

## 1. DDL (Data Definition Language)

Used to define and modify the structure of database objects.

Commands:

- CREATE
- ALTER
- DROP
- TRUNCATE
- RENAME

Example:

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100)
);
```

---

## 2. DML (Data Manipulation Language)

Used to insert, update, and delete data.

Commands:

- INSERT
- UPDATE
- DELETE

Example:

```sql
INSERT INTO Employees
VALUES (101, 'Binod');
```

---

## 3. DQL (Data Query Language)

Used to retrieve data.

Main command:

- SELECT

Example:

```sql
SELECT *
FROM Employees;
```

---

## 4. DCL (Data Control Language)

Used to control user permissions.

Commands:

- GRANT
- REVOKE

Example:

```sql
GRANT SELECT
ON Employees
TO User1;
```

---

## 5. TCL (Transaction Control Language)

Used to manage database transactions.

Commands:

- COMMIT
- ROLLBACK
- SAVEPOINT

Example:

```sql
COMMIT;
```

---

# Basic SQL Workflow

A typical SQL workflow looks like this:

```text
Create Database
        ↓
Create Table
        ↓
Insert Data
        ↓
Retrieve Data
        ↓
Update Data
        ↓
Delete Data
        ↓
Analyze Data
```

---

# SQL Syntax Rules

- SQL keywords are not case-sensitive.
- Table and column names may be case-sensitive depending on the database system.
- Every statement should end with a semicolon (`;`).
- Text values are enclosed in single quotes (`' '`).
- Numeric values are written without quotes.
- Comments improve readability.

---

# SQL Comments

### Single-Line Comment

```sql
-- Display all employees
SELECT *
FROM Employees;
```

### Multi-Line Comment

```sql
/*
This query
retrieves all employees
from the Employees table.
*/

SELECT *
FROM Employees;
```

---

# Popular SQL Database Systems

| Database | Developed By |
|----------|---------------|
| MySQL | Oracle Corporation |
| PostgreSQL | PostgreSQL Global Development Group |
| Microsoft SQL Server | Microsoft |
| Oracle Database | Oracle Corporation |
| SQLite | SQLite Consortium |
| MariaDB | MariaDB Foundation |

---

# SQL vs MySQL

Many beginners confuse SQL and MySQL.

| SQL | MySQL |
|-----|--------|
| A language | A Database Management System |
| Used to write queries | Executes SQL queries |
| Standardized | One implementation of SQL |

Think of it this way:

- **SQL** is like the English language.
- **MySQL** is like a person who understands and speaks English.

Similarly, PostgreSQL, SQL Server, and Oracle also understand SQL.

---

# Where is SQL Used?

SQL is widely used in:

- Software Development
- Data Analysis
- Data Science
- Business Intelligence
- Machine Learning
- Banking Systems
- Healthcare
- E-commerce
- Social Media Platforms
- Government Systems

---

# Advantages of SQL

- Easy to learn
- Fast data retrieval
- Standardized language
- Highly scalable
- Secure
- Supports complex queries
- Used worldwide
- Supported by almost every relational database

---

# Summary

- SQL stands for **Structured Query Language**.
- It is the standard language for interacting with relational databases.
- SQL is used to create, retrieve, update, and delete data.
- SQL commands are categorized into DDL, DML, DQL, DCL, and TCL.
- SQL is supported by MySQL, PostgreSQL, SQL Server, Oracle, SQLite, and many other database systems.
- Learning SQL is a fundamental skill for software engineers, data analysts, data scientists, and backend developers.