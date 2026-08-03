# Database

A **Database** is an organized collection of data that is stored electronically and designed for easy access, management, and updating.

Think of a database as a **digital storage system** where information is stored in structured formats such as tables, making it easy to retrieve, modify, and analyze data.

---

# Why Do We Need a Database?

Imagine managing the records of:

- A school with 10,000 students
- An e-commerce website with millions of products
- A bank with millions of customer accounts
- A hospital maintaining patient records

Storing this information in Excel sheets or text files becomes inefficient and error-prone. Databases solve this problem by providing:

- Organized storage
- Fast searching
- Secure access
- Data consistency
- Concurrent access by multiple users
- Backup and recovery mechanisms

---

# Real-World Examples

Almost every modern application uses databases.

| Application | Stores |
|-------------|--------|
| Instagram | Users, Posts, Likes, Comments |
| Amazon | Products, Orders, Customers, Payments |
| Netflix | Movies, Users, Watch History |
| Swiggy | Restaurants, Orders, Delivery Partners |
| Banking Apps | Customers, Accounts, Transactions |

---

# What is Data?

**Data** refers to raw facts or information.

Examples:

| ID | Name | Age |
|----|------|-----|
| 1 | Binod | 20 |
| 2 | Rahul | 22 |
| 3 | Priya | 21 |

Each record represents a piece of data.

---

# What is a Database Management System (DBMS)?

A **Database Management System (DBMS)** is software that allows users to create, store, retrieve, update, and manage databases.

Instead of interacting with files directly, users communicate with the DBMS.

Popular DBMS include:

- MySQL
- PostgreSQL
- Oracle Database
- Microsoft SQL Server
- SQLite
- MariaDB

---

# What is an RDBMS?

An **RDBMS (Relational Database Management System)** stores data in the form of related tables.

Example:

### Employees Table

| EmployeeID | Name | DepartmentID |
|------------|------|--------------|
| 101 | Binod | 1 |
| 102 | Rahul | 2 |

### Departments Table

| DepartmentID | DepartmentName |
|--------------|----------------|
| 1 | IT |
| 2 | HR |

Both tables are connected using **DepartmentID**.

Examples of RDBMS:

- MySQL
- PostgreSQL
- Oracle
- SQL Server

---

# Database Terminology

## Database

A collection of related tables.

Example:

```
CompanyDB
```

---

## Table

A table stores related data in rows and columns.

Example:

```
Employees
```

---

## Row (Record)

A single entry inside a table.

Example:

| EmployeeID | Name |
|------------|------|
| 101 | Binod |

This is one row.

---

## Column (Field)

A column stores a specific type of information.

Example:

| EmployeeID | Name | Salary |
|------------|------|---------|

Here,

- EmployeeID
- Name
- Salary

are columns.

---

## Primary Key

A Primary Key uniquely identifies each row in a table.

Example:

```text
EmployeeID
```

No two employees can have the same EmployeeID.

---

## Foreign Key

A Foreign Key creates a relationship between two tables.

Example:

```
Employees.DepartmentID
        ↓
Departments.DepartmentID
```

---

# What is SQL?

**SQL (Structured Query Language)** is the standard language used to communicate with relational databases.

Using SQL, we can:

- Create databases
- Create tables
- Insert records
- Retrieve data
- Update records
- Delete records
- Filter data
- Analyze data

Example:

```sql
SELECT *
FROM Employees;
```

---

# Types of Databases

## Relational Databases (SQL)

Data is stored in tables.

Examples:

- MySQL
- PostgreSQL
- Oracle
- SQL Server

---

## NoSQL Databases

Data is stored as documents, key-value pairs, graphs, or wide-column structures.

Examples:

- MongoDB
- Redis
- Cassandra
- Neo4j

---

# Database vs Spreadsheet

| Feature | Database | Spreadsheet |
|----------|----------|-------------|
| Stores Large Data | ✅ | ❌ |
| Multiple Users | ✅ | ❌ |
| Relationships | ✅ | ❌ |
| Security | ✅ | Limited |
| Query Language | SQL | Formulas |
| Scalability | High | Low |

---

# How SQL Works

```
User

   │

   ▼

SQL Query

   │

   ▼

Database Management System (DBMS)

   │

   ▼

Database

   │

   ▼

Result
```

Example:

```sql
SELECT Name
FROM Employees
WHERE Salary > 50000;
```

The DBMS processes the query and returns the matching records.

---

# Popular SQL Databases

| Database | Developed By |
|----------|---------------|
| MySQL | Oracle |
| PostgreSQL | PostgreSQL Global Development Group |
| Oracle Database | Oracle Corporation |
| SQL Server | Microsoft |
| SQLite | SQLite Consortium |
| MariaDB | MariaDB Foundation |

---

# Advantages of Databases

- Organized data storage
- High performance
- Data integrity
- Reduced redundancy
- Better security
- Easy backup and recovery
- Supports concurrent users
- Scalable for large applications

---

# Summary

- A **Database** is an organized collection of data.
- A **DBMS** is software used to manage databases.
- An **RDBMS** stores data in related tables.
- **SQL** is the language used to interact with relational databases.
- Tables consist of rows and columns.
- Primary Keys uniquely identify records.
- Foreign Keys establish relationships between tables.
- Databases power almost every modern application, from social media platforms to banking systems.