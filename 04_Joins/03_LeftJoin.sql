-- Left Join
USE sql_learning;

SELECT
    e.EmployeeID,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;