# SQL Joins

A **JOIN** is used to combine rows from two or more tables based on a related column between them.

In real-world databases, data is rarely stored in a single table. Instead, it is distributed across multiple related tables to reduce redundancy and improve data integrity.

For example:

- Employees belong to Departments.
- Students enroll in Courses.
- Customers place Orders.
- Products belong to Categories.

SQL Joins allow us to retrieve related data from multiple tables.

---

# Why Do We Need Joins?

Consider the following tables.

## Employees

| EmployeeID | Name | DepartmentID |
|------------|------|--------------|
| 101 | Binod | 1 |
| 102 | Rahul | 2 |
| 103 | Priya | 1 |
| 104 | Aman | 4 |

---

## Departments

| DepartmentID | DepartmentName |
|--------------|----------------|
| 1 | IT |
| 2 | HR |
| 3 | Finance |

The Employees table stores only the DepartmentID.

To display the department name, SQL must combine both tables.

This is exactly what JOINs do.

---

# Syntax

```sql
SELECT columns
FROM Table1
JOIN Table2
ON Table1.column = Table2.column;
```

---

# Types of Joins

1. No Join
2. Inner Join
3. Left Join
4. Right Join
5. Full Join
6. Left Anti Join
7. Right Anti Join
8. Full Anti Join
9. Cross Join

---

# Sample Tables

## Employees

| EmployeeID | Name | DepartmentID |
|------------|------|--------------|
| 101 | Binod | 1 |
| 102 | Rahul | 2 |
| 103 | Priya | 1 |
| 104 | Aman | 4 |

---

## Departments

| DepartmentID | DepartmentName |
|--------------|----------------|
| 1 | IT |
| 2 | HR |
| 3 | Finance |

---

# 1. No Join

A query without a JOIN retrieves data from only one table.

Example

```sql
SELECT *
FROM Employees;
```

Result

| EmployeeID | Name | DepartmentID |
|------------|------|--------------|
| 101 | Binod | 1 |
| 102 | Rahul | 2 |
| 103 | Priya | 1 |
| 104 | Aman | 4 |

Use this when all required information is available in a single table.

---

# 2. INNER JOIN

An INNER JOIN returns only the matching records from both tables.

If there is no match, the row is excluded.

Syntax

```sql
SELECT columns
FROM Table1
INNER JOIN Table2
ON Table1.column = Table2.column;
```

Example

```sql
SELECT
    e.EmployeeID,
    e.Name,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;
```

Result

| EmployeeID | Name | Department |
|------------|------|------------|
| 101 | Binod | IT |
| 102 | Rahul | HR |
| 103 | Priya | IT |

Employee Aman is not returned because DepartmentID = 4 does not exist.

---

# 3. LEFT JOIN

A LEFT JOIN returns

- All rows from the left table
- Matching rows from the right table

If no match exists, NULL values are returned.

Syntax

```sql
SELECT columns
FROM Table1
LEFT JOIN Table2
ON Table1.column = Table2.column;
```

Example

```sql
SELECT
    e.Name,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;
```

Result

| Name | Department |
|------|------------|
| Binod | IT |
| Rahul | HR |
| Priya | IT |
| Aman | NULL |

---

# 4. RIGHT JOIN

A RIGHT JOIN returns

- All rows from the right table
- Matching rows from the left table

If no match exists, NULL values appear for the left table.

Example

```sql
SELECT
    e.Name,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;
```

Result

| Name | Department |
|------|------------|
| Binod | IT |
| Priya | IT |
| Rahul | HR |
| NULL | Finance |

Finance has no employee.

---

# 5. FULL JOIN

A FULL JOIN returns

- All rows from the left table
- All rows from the right table

Matching rows are combined.

MySQL does **not** support FULL JOIN directly.

Equivalent query in MySQL

```sql
SELECT
    e.Name,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID

UNION

SELECT
    e.Name,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;
```

Result

| Name | Department |
|------|------------|
| Binod | IT |
| Priya | IT |
| Rahul | HR |
| Aman | NULL |
| NULL | Finance |

---

# 6. LEFT ANTI JOIN

Returns rows that exist only in the left table.

There is no direct LEFT ANTI JOIN keyword in SQL.

Example

```sql
SELECT
    e.*
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;
```

Result

| EmployeeID | Name |
|------------|------|
| 104 | Aman |

---

# 7. RIGHT ANTI JOIN

Returns rows that exist only in the right table.

Example

```sql
SELECT
    d.*
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL;
```

Result

| Department |
|------------|
| Finance |

---

# 8. FULL ANTI JOIN

Returns rows that exist in only one table.

Example

```sql
SELECT
    e.Name,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL

UNION

SELECT
    e.Name,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL;
```

Result

| Name | Department |
|------|------------|
| Aman | NULL |
| NULL | Finance |

---

# 9. CROSS JOIN

A CROSS JOIN returns every possible combination of rows.

If

Employees has 4 rows

Departments has 3 rows

Then

Result = 4 × 3 = 12 rows

Syntax

```sql
SELECT
    e.Name,
    d.DepartmentName
FROM Employees e
CROSS JOIN Departments d;
```

Example Result

| Employee | Department |
|----------|------------|
| Binod | IT |
| Binod | HR |
| Binod | Finance |
| Rahul | IT |
| Rahul | HR |
| Rahul | Finance |
| Priya | IT |
| Priya | HR |
| Priya | Finance |
| Aman | IT |
| Aman | HR |
| Aman | Finance |

---

# Visual Representation

```
Inner Join

Employees ∩ Departments

Only Matching Rows

----------------------------

Left Join

All Employees

+ Matching Departments

----------------------------

Right Join

All Departments

+ Matching Employees

----------------------------

Full Join

Everything from both tables

----------------------------

Left Anti Join

Employees Only

----------------------------

Right Anti Join

Departments Only

----------------------------

Full Anti Join

Employees Only

+

Departments Only

----------------------------

Cross Join

Every Employee

×

Every Department
```

---

# Join Comparison

| Join | Returns |
|------|----------|
| No Join | Data from one table only |
| Inner Join | Matching rows only |
| Left Join | All left rows + matching right rows |
| Right Join | All right rows + matching left rows |
| Full Join | All rows from both tables |
| Left Anti Join | Left-only rows |
| Right Anti Join | Right-only rows |
| Full Anti Join | Non-matching rows from both tables |
| Cross Join | Every possible combination |

---

# Summary

- **INNER JOIN** returns only matching rows.
- **LEFT JOIN** keeps all rows from the left table.
- **RIGHT JOIN** keeps all rows from the right table.
- **FULL JOIN** combines all rows from both tables (not directly supported in MySQL).
- **LEFT ANTI JOIN** returns rows only in the left table.
- **RIGHT ANTI JOIN** returns rows only in the right table.
- **FULL ANTI JOIN** returns all non-matching rows from both tables.
- **CROSS JOIN** returns the Cartesian product of both tables.