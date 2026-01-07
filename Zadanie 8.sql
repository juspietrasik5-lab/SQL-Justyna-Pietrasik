CREATE DATABASE IF NOT EXISTS Pracownicy;

USE Pracownicy;

CREATE TABLE IF NOT EXISTS Pracownicy (
    ID INT PRIMARY KEY,
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50) NOT NULL,
    Wiek INT CHECK (Wiek >= 0),
    Kurs VARCHAR(30)
);

INSERT INTO Pracownicy (ID, Imie, Nazwisko, Wiek, Kurs) VALUES
(1, 'Anna', 'NOWAK', 34, 'DS'),
(2, 'Roman', 'KOWALSKI', 42, 'DS'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS'),
(4, 'Agata', 'WÓJCIK', 43, 'DS'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', 'KOWALCZYK', 34, 'Java'),
(7, 'Robert', 'KOWALCZYK', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, NULL, 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, NULL),
(12, 'Robert', 'KOZŁOWSKI', NULL, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, NULL, 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'KOWALCZYK', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

SELECT * FROM Pracownicy WHERE Nazwisko = 'KOWALCZYK';

SELECT * FROM Pracownicy WHERE Wiek BETWEEN 30 AND 40;

SELECT * FROM Pracownicy WHERE Nazwisko NOT LIKE '%AND%';

SELECT * FROM Pracownicy WHERE ID BETWEEN 1 AND 7;

SELECT * FROM Pracownicy
WHERE Imie IS NULL OR Wiek IS NULL OR Kurs IS NULL;

SELECT * FROM Pracownicy WHERE Kurs IS NULL;
