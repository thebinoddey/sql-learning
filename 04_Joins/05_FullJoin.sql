-- Full Join
USE sql_learning;

SELECT
    e.EmployeeID,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID

UNION

SELECT
    e.EmployeeID,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;