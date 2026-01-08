CREATE DATABASE IF NOT EXISTS Pracownicy;
USE Pracownicy;

CREATE TABLE IF NOT EXISTS Pracownicy (
    ID INT PRIMARY KEY,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50),
    Wiek INT CHECK (Wiek >= 18 AND Wiek <= 100),
    Kurs VARCHAR(100)
);

INSERT INTO Pracownicy (ID, Imie, Nazwisko, Wiek, Kurs) VALUES
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Anna', NULL, 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', NULL, 'Tester'),
(6, 'Anna', 'KOWALCZYK', NULL, 'Java'),
(7, 'Robert', 'KOWALCZYK', NULL, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', NULL, 'Java'),
(9, 'Robert', 'WOŹNIAK', NULL, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Tester'),
(11, 'Radosław', 'DĄBROWSKI', 35, NULL),
(12, 'Robert', 'KOZŁOWSKI', NULL, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, NULL),
(16, NULL, 'ZIELIŃSKI', 28, NULL),
(17, 'Andrzej', 'WOŹNIAK', 31, NULL),
(18, 'Andrze', 'LEWANDOWSKI', 30, NULL),
(19, 'Roman', 'KOWALCZYK', 39, NULL),
(20, 'Ewa', 'WOŹNIAK', 31, NULL);

SELECT DISTINCT Imie FROM Pracownicy;
SELECT DISTINCT Nazwisko FROM Pracownicy;
SELECT Kurs FROM Pracownicy WHERE Nazwisko = 'KOWALCZYK';
SELECT * FROM Pracownicy WHERE Wiek IS NULL;
SELECT Wiek FROM Pracownicy WHERE Imie = 'Patryk';

ALTER TABLE Pracownicy
RENAME TO Mentorzy;
