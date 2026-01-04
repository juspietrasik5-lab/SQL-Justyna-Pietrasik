CREATE DATABASE Moje_zainteresowania
CHARACTER SET utf8mb4
COLLATE utf8mb4_polish_ci;

USE Moje_zainteresowania;

CREATE TABLE Zainteresowania (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nazwa VARCHAR(100) NOT NULL,
    Opis TEXT NOT NULL,
    Data_realizacji DATE DEFAULT CURRENT_DATE
);

INSERT INTO Zainteresowania (Nazwa, Opis) VALUES
('Programowanie', 'Tworzenie aplikacji i stron internetowych'),
('Fotografia', 'Robienie zdjęć krajobrazów i ludzi'),
('Sport', 'Aktywność fizyczna i zdrowy tryb życia'),
('Muzyka', 'Słuchanie i tworzenie muzyki'),
('Podróże', 'Zwiedzanie nowych miejsc');

SELECT * FROM Zainteresowania;

INSERT INTO Zainteresowania (Nazwa, Opis, Data_realizacji)
VALUES ('Gotowanie', 'Eksperymentowanie w kuchni', '2025-01-01');

UPDATE Zainteresowania
SET Data_realizacji = '2024-12-31'
WHERE ID = 4;

SELECT * FROM Zainteresowania;

DELETE FROM Zainteresowania
WHERE Nazwa IS NULL
   OR Opis IS NULL
   OR Data_realizacji IS NULL;

SELECT * FROM Zainteresowania;
