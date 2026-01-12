SELECT
    start_date,
    -- Rozłożenie na rok, miesiąc, dzień
    YEAR(start_date) AS rok,
    MONTH(start_date) AS miesiac,
    DAY(start_date) AS dzien,
    
    -- Data o 3 dni późniejsza
    DATE_ADD(start_date, INTERVAL 3 DAY) AS final_date,
    
    -- Dzisiejsza data
    CURDATE() AS dzisiejsza_data,
    
    -- Nazwa obecnego miesiąca
    MONTHNAME(CURDATE()) AS obecny_miesiac,
    
    -- Numer tygodnia, nazwa miesiąca start_date, kwartał, numer dnia w roku
    WEEK(start_date, 1) AS numer_tygodnia,
    MONTHNAME(start_date) AS nazwa_miesiaca_start,
    QUARTER(start_date) AS kwartal,
    DAYOFYEAR(start_date) AS numer_dnia_roku
FROM Pracownicy;
