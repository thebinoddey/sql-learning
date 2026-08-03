USE sql_learning;

-- Select/View all Employees from Employees Table
SELECT * FROM Employees;

-- View Employees whose age is greater than 23
SELECT *
FROM Employees
WHERE Age > 23;

-- Sort the Employee table on Salary
SELECT *
FROM Employees
ORDER BY Salary ASC; 

-- Group by Age
SELECT Age, COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Age;

-- Age Groups Having More Than One Employee
SELECT Age, COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Age
HAVING COUNT(*)>1;

-- Distinct Employee Last Name
SELECT DISTINCT LastName
FROM Employees;

-- SELECT Top 3 rows based on slary
SELECT EmployeeID, FirstName, Salary
FROM Employees
ORDER BY salary DESC
LIMIT 3;