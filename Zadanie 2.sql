CREATE DATABASE School_Coding;
USE School_Coding;

CREATE TABLE Mentors (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Person_Name VARCHAR(50) NOT NULL,
    Person_Surname VARCHAR(50) NOT NULL,
    Speciality VARCHAR(50) NOT NULL,
    Hire_Date DATE NOT NULL,
    Contract_Termination DATE
);

INSERT INTO Mentors (ID, Person_Name, Person_Surname, Speciality, Hire_Date, Contract_Termination)
VALUES
    (1, 'Adam', 'Kowalski', 'SQL', '2021-03-15', '2022-03-14'),
    (2, 'Ewa', 'Nowicka', 'SQL', '2020-06-01', '2021-06-01'),
    (3, 'Piotr', 'Wójcik', 'Python', '2022-01-10', '2023-01-10'),
    (4, 'Anna', 'Lewandowska', 'Java', '2019-09-01', '2022-08-31'),
    (5, 'Kamil', 'Grabowski', 'C++', '2023-02-01', '2025-02-01'),
    (6, 'Magda', 'Sikorska', 'C++', '2021-11-15', '2024-11-15'),
    (7, 'Tomasz', 'Kaczmarek', 'C++', '2020-05-20', '2023-05-20'),
    (8, 'Martyna', 'Zawadzka', 'C#', '2022-07-01', '2026-07-01'),
    (9, 'Łukasz', 'Kamiński', 'JavaScript', '2021-04-12', '2024-04-12'),
    (10, 'Natalia', 'Wiśniewska', 'JavaScript', '2018-10-01', '2023-10-01');

SELECT * FROM Mentors;

UPDATE Mentors
SET Person_Surname = 'Grabowska'
WHERE ID = 5;

SELECT * FROM Mentors WHERE ID = 5;

UPDATE Mentors
SET Speciality = 'C++'
WHERE ID = 9;

SELECT * FROM Mentors WHERE ID = 9;

ALTER TABLE Mentors
ADD Salary DECIMAL(10,2) CHECK (Salary >= 0);

UPDATE Mentors SET Salary = 5200 WHERE ID = 1;
UPDATE Mentors SET Salary = 6100 WHERE ID = 2;
UPDATE Mentors SET Salary = 7800 WHERE ID = 3;
UPDATE Mentors SET Salary = 6900 WHERE ID = 4;
UPDATE Mentors SET Salary = 8300 WHERE ID = 5;
UPDATE Mentors SET Salary = 8700 WHERE ID = 6;
UPDATE Mentors SET Salary = 9100 WHERE ID = 7;
UPDATE Mentors SET Salary = 7600 WHERE ID = 8;
UPDATE Mentors SET Salary = 6400 WHERE ID = 9;
UPDATE Mentors SET Salary = 15000 WHERE ID = 10;

UPDATE Mentors
SET Salary = 1200
WHERE ID IN (1, 2, 3);

SELECT * FROM Mentors WHERE ID IN (1, 2, 3);

ALTER TABLE Mentors
DROP COLUMN Wynagrodzenie;

SELECT * FROM Mentors WHERE ID IN (1, 2, 3);
