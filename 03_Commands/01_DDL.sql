-- DDL (Data Definition Language)

USE sql_learning;

-- CREATE
CREATE TABLE Projects(
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(120),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(10,2),
    DepartmentID INT,

    FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);

-- ALTER (Add Column ProjectLead in Projects)
ALTER TABLE Projects
ADD ProjectLead VARCHAR(50) NOT NULL;

-- DROP (Delete Table)
-- DROP TABLE Projects;

