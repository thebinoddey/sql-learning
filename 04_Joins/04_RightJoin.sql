-- Right Join
USE sql_learning;

SELECT
    e.EmployeeID,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;