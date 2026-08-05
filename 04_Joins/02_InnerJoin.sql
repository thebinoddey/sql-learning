-- InnerJoin

USE sql_learning;

SELECT *
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
ORDER BY e.EmployeeID;