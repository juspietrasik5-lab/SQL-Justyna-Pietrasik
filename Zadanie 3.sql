CREATE DATABASE IF NOT EXISTS `Lista_Prezentow`;
USE `Lista_Prezentow`;

CREATE TABLE IF NOT EXISTS `Prezenty_2020` (
    `ID` INT PRIMARY KEY AUTO_INCREMENT,
    `Imie_obdarowanego` VARCHAR(50) NOT NULL,
    `Pomysl_na_prezent` VARCHAR(100) NOT NULL,
    `Cena` DECIMAL(8,2) NOT NULL CHECK (`Cena` > 0),
    `Miejsce_zakupu` VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

INSERT INTO `Prezenty_2020` (`Imie_obdarowanego`, `Pomysl_na_prezent`, `Cena`, `Miejsce_zakupu`)
VALUES
('Ania', 'Książka', 49.99, 'Empik'),
('Bartek', 'Słuchawki', 199.99, 'Media Markt'),
('Celina', 'Puzzle', 59.50, 'Ceneo'),
('Dominik', 'Gra planszowa', 120.00, 'Allegro'),
('Ewa', 'Kubek', 25.00, 'Ikea');

SELECT * FROM `Prezenty_2020`;

UPDATE `Prezenty_2020`
SET `Pomysl_na_prezent` = 'Rower'
WHERE `ID` = 3;

SELECT * FROM `Prezenty_2020`
WHERE `ID` = 3;

DELETE FROM `Prezenty_2020`
WHERE `ID` = 1;

SELECT * FROM `Prezenty_2020`;

ALTER TABLE `Prezenty_2020`
DROP COLUMN `Miejsce_zakupu`;

SELECT `Imie_obdarowanego`
FROM `Prezenty_2020`
WHERE `ID` IN (3,4,5);
