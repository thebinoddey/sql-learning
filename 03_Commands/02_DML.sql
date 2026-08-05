-- DDL (Data Definition Language)

USE sql_learning;

-- INSERT
INSERT INTO Projects VALUES 
    (1, 'Project101', '2025-10-10', '2026-12-10', 20000, 1, 'Rahul Sharma'),
    (2, 'Project103', '2025-10-15', '2026-04-10', 45000, 1, 'karan Singh');

SELECT * FROM Projects;

-- Update ProjectLead of Project103 to Kapil Kumar
UPDATE Projects
SET ProjectLead = 'Kapil Kumar'
WHERE ProjectID = 2;

SELECT * FROM Projects;

-- DELETE data with id 2
DELETE FROM Projects
WHERE ProjectId = 2;

-- TRUNCATE (CLear whole table)
TRUNCATE TABLE Projects;