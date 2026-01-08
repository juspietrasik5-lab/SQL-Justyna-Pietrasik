SELECT
  CONCAT(first_name, ' ', last_name) AS Pracownik,                                -- a
  CONCAT(gift, ' – cena: ', price) AS cennik,                                    -- b
  CONCAT(first_name, ' ', last_name, ': ', gift, ' – cena: ', price) AS cennik2, -- c
  UPPER(gift) AS prezent,                                                        -- d

  LOWER(first_name) AS imie_male_litery,                                          -- e
  last_name AS nazwisko,                                                         -- f
  LENGTH(last_name) AS dlugosc,                                                   -- f
  LEFT(first_name, 2) AS pierwsze_dwie_litery_imienia,                            -- g
  CONCAT(
    LOWER(LEFT(first_name, 1)),
    LOWER(LEFT(last_name, 3))
  ) AS login                                                                      -- h
FROM aggregates.batman;
