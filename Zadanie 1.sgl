CREATE DATABASE biblioteka;
USE biblioteka;
CREATE TABLE Biblioteczka (
    ID INTEGER,
    Tytul TEXT,
    Data_zakupu DATE
);
INSERT INTO Biblioteczka (ID, Tytul, Data_zakupu)
VALUES (1, 'Władca Pierścieni', '2023-05-10');
SELECT * FROM Biblioteczka;
INSERT INTO Biblioteczka (ID, Tytul, Data_zakupu)
VALUES
(2, 'Hobbit', '2022-03-15'),
(3, 'Metro 2033', '2021-11-01');
UPDATE Biblioteczka
SET Tytul = 'Nie lubię tej książki'
WHERE ID = 1;
ALTER TABLE Biblioteczka
ADD Autor TEXT;
UPDATE Biblioteczka SET Autor = 'J.R.R. Tolkien' WHERE ID = 1;
UPDATE Biblioteczka SET Autor = 'J.R.R. Tolkien' WHERE ID = 2;
UPDATE Biblioteczka SET Autor = 'Dmitrij Głuchowski' WHERE ID = 3;
DELETE FROM Biblioteczka WHERE ID IN (1, 2);
SELECT Autor FROM Biblioteczka;
