-- Left Anti Join -> Return EmployeeID who is not appointed to any dept
USE sql_learning;

SELECT
    e.EmployeeID,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;


-- Right Anti Join -> Return DepartmentID that has no employee

SELECT
    e.EmployeeID,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL;

