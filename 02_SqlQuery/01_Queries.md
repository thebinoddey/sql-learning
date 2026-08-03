# SQL Queries

Queries are SQL statements used to retrieve, filter, sort, group, and analyze data stored in a database.

---

# Table of Contents

1. SELECT
2. FROM
3. WHERE
4. GROUP BY
5. HAVING
6. ORDER BY
7. LIMIT / TOP
8. Order of Execution
9. Practice Examples

---

# 1. SELECT

The `SELECT` statement is used to retrieve data from one or more columns in a table.

## Syntax

```sql
SELECT column_name
FROM table_name;
```

## Example

```sql
SELECT first_name
FROM employees;
```

### Select Multiple Columns

```sql
SELECT first_name, last_name, salary
FROM employees;
```

### Select All Columns

```sql
SELECT *
FROM employees;
```

---

# 2. FROM

The `FROM` clause specifies the table from which the data should be retrieved.

## Syntax

```sql
SELECT column_name
FROM table_name;
```

## Example

```sql
SELECT *
FROM customers;
```

You can also retrieve data from multiple tables using joins (covered later).

---

# 3. WHERE

The `WHERE` clause filters records based on one or more conditions.

## Syntax

```sql
SELECT columns
FROM table_name
WHERE condition;
```

## Examples

### Equal To

```sql
SELECT *
FROM employees
WHERE department = 'IT';
```

### Greater Than

```sql
SELECT *
FROM employees
WHERE salary > 50000;
```

### Multiple Conditions

```sql
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 50000;
```

### OR Condition

```sql
SELECT *
FROM employees
WHERE department = 'IT'
OR department = 'HR';
```

### NOT Condition

```sql
SELECT *
FROM employees
WHERE NOT department = 'Sales';
```

---

# 4. GROUP BY

`GROUP BY` groups rows having the same values in one or more columns.

It is commonly used with aggregate functions such as:

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

## Syntax

```sql
SELECT column_name,
       aggregate_function(column)
FROM table_name
GROUP BY column_name;
```

## Example

```sql
SELECT department,
       COUNT(*) AS total_employees
FROM employees
GROUP BY department;
```

### Average Salary

```sql
SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department;
```

---

# 5. HAVING

The `HAVING` clause filters grouped data.

Unlike `WHERE`, which filters rows before grouping, `HAVING` filters groups after aggregation.

## Syntax

```sql
SELECT column_name,
       aggregate_function(column)
FROM table_name
GROUP BY column_name
HAVING condition;
```

## Example

```sql
SELECT department,
       COUNT(*) AS employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
```

### Average Salary Example

```sql
SELECT department,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 70000;
```

---

# 6. ORDER BY

`ORDER BY` sorts the result set.

Ascending order is the default.

## Syntax

```sql
SELECT columns
FROM table_name
ORDER BY column_name;
```

## Ascending

```sql
SELECT *
FROM employees
ORDER BY salary ASC;
```

## Descending

```sql
SELECT *
FROM employees
ORDER BY salary DESC;
```

### Multiple Columns

```sql
SELECT *
FROM employees
ORDER BY department ASC,
         salary DESC;
```

---

# 7. LIMIT / TOP

These clauses restrict the number of rows returned.

## MySQL / PostgreSQL / SQLite

```sql
SELECT *
FROM employees
LIMIT 5;
```

### Skip Rows

```sql
SELECT *
FROM employees
LIMIT 5 OFFSET 10;
```

---

## SQL Server

```sql
SELECT TOP 5 *
FROM employees;
```

---

## Oracle / ANSI SQL

```sql
SELECT *
FROM employees
FETCH FIRST 5 ROWS ONLY;
```

---

# Order of SQL Execution

Although we write SQL in this order:

```sql
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT;
```

The database executes it internally in the following order:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. LIMIT / TOP

Understanding this execution order helps explain why aliases created in `SELECT` are generally not available in the `WHERE` clause.

---

# Practice Examples

## Example 1

Display all employees.

```sql
SELECT *
FROM employees;
```

---

## Example 2

Display employees whose salary is greater than 60,000.

```sql
SELECT *
FROM employees
WHERE salary > 60000;
```

---

## Example 3

Count employees in each department.

```sql
SELECT department,
       COUNT(*) AS total_employees
FROM employees
GROUP BY department;
```

---

## Example 4

Show departments having more than 10 employees.

```sql
SELECT department,
       COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 10;
```

---

## Example 5

Display the top 5 highest-paid employees.

### MySQL

```sql
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;
```

### SQL Server

```sql
SELECT TOP 5 *
FROM employees
ORDER BY salary DESC;
```

---

# Summary

| Clause | Purpose |
|----------|----------|
| SELECT | Retrieves columns |
| FROM | Specifies the table |
| WHERE | Filters rows |
| GROUP BY | Groups similar rows |
| HAVING | Filters grouped data |
| ORDER BY | Sorts results |
| LIMIT / TOP | Restricts the number of rows returned |

---