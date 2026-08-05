USE sql_learning;

INSERT INTO Departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Marketing');

INSERT INTO Employees VALUES
(101,'Binod','Dey','M',20,60000,1),
(102,'Rahul','Sharma','M',24,45000,2),
(103,'Priya','Singh','F',22,75000,1),
(104,'Aman','Verma','M',26,52000,3),
(105,'Sneha','Gupta','F',25,68000,4),
(106,'Rohit','Kumar','M',23,58000,1),
(107,'Neha','Jain','F',27,82000,3),
(108,'Ankit','Joshi','M',21,47000,2),
(109,'Pooja','Mehta','F',24,62000,4),
(110,'Arjun','Patel','M',29,91000,1);

INSERT INTO Projects VALUES 
    (1, 'Project101', '2025-10-10', '2026-12-10', 20000, 1, 'Rahul Sharma'),
    (2, 'Project103', '2025-10-15', '2026-04-10', 45000, 1, 'Kapil Kumar'),
    (3, 'ProjectAB1', '2025-05-01', '2026-02-05', 25000, 1, 'Shailesh'),
    (4, 'Project105', '2025-10-10', '2026-04-10', 40000, 1, 'Binod Dey'),
    (5, 'Project101', '2025-05-01', '2025-12-01', 19000, 1, 'Priya Prakash'),
    (6, 'Project103', '2025-03-15', '2025-04-15', 15000, 1, 'Jaanvi Verma'),
    (7, 'Project101', '2026-01-10', '2026-12-10', 30500, 1, 'Kiran Sharma'),
    (8, 'Project103', '2026-03-03', '2026-10-08', 50000, 1, 'Madhur Sirdhi'),
    (9, 'Project101', '2025-11-10', '2026-04-04', 20200, 1, 'Rahul Singh'),
    (10, 'Project103', '2025-10-15', '2026-04-10', 40000, 1, 'Dheeraj Kumar');


    -- 2nd level insertion
    INSERT INTO Departments VALUES 
    (5,'Sales'),
    (6,'AI'),
    (7,'Data'),
    (8,'Content');

    INSERT INTO Employees VALUES
    (111,'Gaurav','Kirad','M',26,60000,7),
    (112,'Jaya','Sharma','F',24,55000,6),
    (113,'Jyoti','Nathawat','F',28,70000,8),
    (114,'Kanishk','Pal','M',30,78000,7),
    (115,'Garvit','Jain','M',26,40000,6),
    (116,'Kabir','Khan','M',31,70000,7),
    (117,'Palash','Choudhary','M',28,25000, NULL),
    (118,'Arohi','Jangid','F',26,42000,8);

    INSERT INTO Departments VALUES 
    (9, NULL);