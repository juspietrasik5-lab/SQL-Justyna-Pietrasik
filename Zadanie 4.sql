CREATE DATABASE Lista_Pracownikow;
USE Lista_Pracownikow;

CREATE TABLE Employees (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL,
    Job VARCHAR(100) NOT NULL,
    Department VARCHAR(100) DEFAULT 'Unassigned'
);

INSERT INTO Employees (ID, Name, Surname, Job, Department)
VALUES 
    (1, 'Anna', 'Kowalczyk', 'Risk Analyst', 'Risk'),
    (2, 'Michał', 'Dąbrowski', 'Junior Auditor', 'Audit'),
    (3, 'Karolina', 'Lewandowska', 'Data Specialist', 'Operations'),
    (4, 'Tomasz', 'Wójcik', 'Process Coordinator', 'Compliance'),
    (5, 'Daniel', 'Brown', 'Business Support Analyst', 'Support');

SELECT * FROM Employees;

ALTER TABLE Employees 
ADD COLUMN Hire_Date DATE;

INSERT INTO Employees (ID, Name, Surname, Job, Department, Hire_Date)
VALUES 
    (6, 'Natalia', 'Zielińska', 'Compliance Assistant', 'Compliance', '2023-11-15');

SELECT * FROM Employees;

UPDATE Employees SET Hire_Date = '2021-03-10' WHERE ID = 1;
UPDATE Employees SET Hire_Date = '2019-07-01' WHERE ID = 2;
UPDATE Employees SET Hire_Date = '2022-02-18' WHERE ID = 3;
UPDATE Employees SET Hire_Date = '2020-10-05' WHERE ID = 4;
UPDATE Employees SET Hire_Date = '2024-01-20' WHERE ID = 5;

SELECT * FROM Employees;
