CREATE DATABASE IF NOT EXISTS Pracownicy;

USE Pracownicy;

CREATE TABLE IF NOT EXISTS Pracownicy (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(50) NOT NULL,
    Nazwisko VARCHAR(50) NOT NULL,
    Wiek INT CHECK (Wiek >= 18 AND Wiek <= 100),
    Kurs VARCHAR(100) DEFAULT 'Brak'
);

INSERT INTO Pracownicy (Imie, Nazwisko, Wiek, Kurs) VALUES
('Anna', 'Kowalska', 28, 'SQL Podstawy'),
('Jan', 'Nowak', 35, 'Python dla początkujących'),
('Anna', 'Wiśniewska', 32, 'Excel Zaawansowany'),
('Piotr', 'Lewandowski', NULL, 'SQL Podstawy'),
('Katarzyna', 'Zielińska', 40, 'Python dla początkujących'),
(NULL, 'Kowalczyk', 29, 'Excel Podstawowy'),
('Michał', 'Kamiński', 38, 'Power BI');

SELECT * FROM Pracownicy
WHERE Imie = 'Anna';

SELECT * FROM Pracownicy
WHERE Imie IS NULL;

SELECT Kurs FROM Pracownicy
WHERE Wiek BETWEEN 30 AND 40;

SELECT ID, Wiek FROM Pracownicy
WHERE ID BETWEEN 1 AND 7;

SELECT * FROM Pracownicy
WHERE Wiek IS NULL;

ALTER TABLE Pracownicy
CHANGE COLUMN Kurs Szkolenie VARCHAR(100);
