-- 1. Stworzenie bazy danych
CREATE DATABASE IF NOT EXISTS sklep_odziezowy
CHARACTER SET utf8mb4
COLLATE utf8mb4_polish_ci;

USE sklep_odziezowy;

-- 2. Tabela Producenci
CREATE TABLE Producenci (
    id_producenta INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_producenta VARCHAR(100) NOT NULL UNIQUE,
    adres_producenta VARCHAR(255) NOT NULL,
    nip_producenta CHAR(10) NOT NULL UNIQUE,
    data_podpisania_umowy DATE NOT NULL,
    CONSTRAINT chk_nip CHECK (nip_producenta REGEXP '^[0-9]{10}$')
);

-- 3. Tabela Produkty (+ 6. Klucz obcy)
CREATE TABLE Produkty (
    id_produktu INT AUTO_INCREMENT PRIMARY KEY,
    id_producenta INT NOT NULL,
    nazwa_produktu VARCHAR(100) NOT NULL,
    opis_produktu TEXT,
    cena_netto_zakupu DECIMAL(10,2) NOT NULL CHECK (cena_netto_zakupu > 0),
    cena_brutto_zakupu DECIMAL(10,2) NOT NULL CHECK (cena_brutto_zakupu > 0),
    cena_netto_sprzedazy DECIMAL(10,2) NOT NULL CHECK (cena_netto_sprzedazy > 0),
    cena_brutto_sprzedazy DECIMAL(10,2) NOT NULL CHECK (cena_brutto_sprzedazy > 0),
    procent_vat_sprzedazy INT NOT NULL DEFAULT 23,
    CONSTRAINT fk_produkty_producenci FOREIGN KEY (id_producenta) REFERENCES Producenci(id_producenta)
);

-- 5. Tabela Klienci
CREATE TABLE Klienci (
    id_klienta INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(255) NOT NULL
);

-- 4. Tabela Zamówienia (+ 6. Klucze obce)
CREATE TABLE Zamowienia (
    id_zamowienia INT AUTO_INCREMENT PRIMARY KEY,
    id_klienta INT NOT NULL,
    id_produktu INT NOT NULL,
    data_zamowienia DATE NOT NULL,
    CONSTRAINT fk_zamowienia_klienci FOREIGN KEY (id_klienta) REFERENCES Klienci(id_klienta),
    CONSTRAINT fk_zamowienia_produkty FOREIGN KEY (id_produktu) REFERENCES Produkty(id_produktu)
);

-- 7. Uzupełnienie danych
INSERT INTO Producenci (nazwa_producenta, adres_producenta, nip_producenta, data_podpisania_umowy) VALUES
('Nike', 'USA, Oregon', '1234567890', '2022-01-10'),
('Adidas', 'Niemcy, Herzogenaurach', '2345678901', '2021-03-15'),
('Puma', 'Niemcy, Herzogenaurach', '3456789012', '2020-06-20'),
('Reebok', 'UK, London', '4567890123', '2019-11-05');

INSERT INTO Produkty (id_producenta, nazwa_produktu, opis_produktu, cena_netto_zakupu, cena_brutto_zakupu, cena_netto_sprzedazy, cena_brutto_sprzedazy, procent_vat_sprzedazy) VALUES
(1,'Koszulka Sport','Treningowa',50,61.5,80,98.4,23), (1,'Bluza','Kaptur',120,147.6,180,221.4,23),
(1,'Spodnie','Dresowe',90,110.7,140,172.2,23), (1,'Czapka','Zimowa',30,36.9,55,67.6,23),
(1,'Kurtka','Sportowa',200,246,300,369,23), (2,'Buty A','Sportowe',250,307.5,400,492,23),
(2,'Koszulka A','Casual',60,73.8,95,116.8,23), (2,'Spodnie A','Sport',100,123,160,196.8,23),
(3,'Buty P','Bieganie',220,270.6,350,430.5,23), (3,'Bluza P','Bluza',130,159.9,200,246,23),
(4,'Koszulka R','Koszulka',55,67.6,90,110.7,23), (4,'Spodnie R','Spodnie',95,116.8,150,184.5,23),
(1,'Torba','Torba',70,86.1,120,147.6,23), (1,'Skarpetki','Stopki',15,18.4,25,30.7,23),
(1,'Plecak','Miejski',110,135.3,170,209.1,23), (1,'Opaska','Frotka',20,24.6,35,43,23),
(1,'Rękawiczki','Zima',25,30.7,45,55.3,23), (1,'Bidon','0.5L',18,22.1,30,36.9,23),
(1,'Koszulka Pro','Pro',75,92.2,120,147.6,23), (1,'Bluza Pro','Pro',150,184.5,230,282.9,23);

INSERT INTO Klienci (imie, nazwisko, adres) VALUES
('Jan','Kowalski','Warszawa'), ('Anna','Nowak','Kraków'), ('Piotr','Wiśniewski','Gdańsk'),
('Kasia','Mazur','Wrocław'), ('Tomasz','Lewandowski','Poznań'), ('Magda','Zielińska','Łódź'),
('Adam','Kaczmarek','Szczecin'), ('Ewa','Dąbrowska','Lublin'), ('Paweł','Król','Rzeszów'), ('Natalia','Wójcik','Katowice');

INSERT INTO Zamowienia (id_klienta, id_produktu, data_zamowienia) VALUES
(1,1,'2023-01-01'), (2,2,'2023-01-02'), (3,3,'2023-01-02'), (4,4,'2023-01-03'), (5,5,'2023-01-04'),
(6,1,'2023-01-04'), (7,2,'2023-01-05'), (8,3,'2023-01-05'), (9,1,'2023-01-05'), (10,1,'2023-01-06');

-- 8. Produkty od producenta nr 1 (ze wszystkimi danymi producenta)
-- 9. Sortowanie alfabetyczne
SELECT p.*, pr.nazwa_producenta, pr.adres_producenta, pr.nip_producenta 
FROM Produkty p
JOIN Producenci pr ON p.id_producenta = pr.id_producenta
WHERE pr.id_producenta = 1
ORDER BY p.nazwa_produktu ASC;

-- 10. Średnia cena produktów producenta 1
SELECT AVG(cena_brutto_sprzedazy) AS srednia_cena_brutto
FROM Produkty
WHERE id_producenta = 1;

-- 11. Podział na Tanie/Drogie (połowa najtańszych / połowa najdroższych)
-- Używamy ROW_NUMBER, aby precyzyjnie podzielić zbiór na pół
SELECT nazwa_produktu, cena_brutto_sprzedazy,
       CASE 
           WHEN r_num <= (SELECT COUNT(*) FROM Produkty WHERE id_producenta = 1) / 2 THEN 'Tanie'
           ELSE 'Drogie'
       END AS grupa
FROM (
    SELECT nazwa_produktu, cena_brutto_sprzedazy,
           ROW_NUMBER() OVER (ORDER BY cena_brutto_sprzedazy ASC) as r_num
    FROM Produkty
    WHERE id_producenta = 1
) AS sub;

-- 12. Nazwy zamówionych produktów
SELECT DISTINCT p.nazwa_produktu
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu;

-- 13. Wszystkie zamówione produkty (limit 5)
SELECT p.*
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu
LIMIT 5;

-- 14. Łączna wartość zamówień
SELECT SUM(p.cena_brutto_sprzedazy) AS laczna_wartosc_zamowien
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu;

-- 15. Zamówienia z nazwą produktu, od najstarszego
SELECT z.id_zamowienia, p.nazwa_produktu, z.data_zamowienia
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu
ORDER BY z.data_zamowienia ASC;

-- 16. Produkty z brakującymi danymi (kompletny check)
SELECT * FROM Produkty
WHERE id_produktu IS NULL OR id_producenta IS NULL OR nazwa_produktu IS NULL 
   OR cena_netto_zakupu IS NULL OR cena_brutto_sprzedazy IS NULL;

-- 17. Produkt najczęściej sprzedawany
SELECT p.nazwa_produktu, p.cena_brutto_sprzedazy, COUNT(z.id_produktu) AS ilosc_sprzedanych
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu
GROUP BY p.id_produktu
ORDER BY ilosc_sprzedanych DESC
LIMIT 1;

-- 18. Dzień z największą liczbą zamówień
SELECT data_zamowienia, COUNT(*) AS liczba_zamowien
FROM Zamowienia
GROUP BY data_zamowienia
ORDER BY liczba_zamowien DESC
LIMIT 1;
