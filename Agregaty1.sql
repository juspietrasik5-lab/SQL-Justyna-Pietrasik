-- a
SELECT COUNT(id) FROM aggregates.batman;

-- b
SELECT COUNT(age) FROM aggregates.batman;

-- c
SELECT COUNT(*) FROM aggregates.batman
WHERE sex = 'M' AND age > 40;

-- d
SELECT SUM(price) FROM aggregates.batman;

-- e
SELECT SUM(age) FROM aggregates.batman
WHERE sex = 'F';

-- f
SELECT SUM(price) FROM aggregates.batman
WHERE gift IN ('komputer','okno');

-- g
SELECT MAX(price) FROM aggregates.batman;

-- h
SELECT MAX(start_date) FROM aggregates.batman;

-- i
SELECT last_name FROM aggregates.batman
ORDER BY last_name DESC
LIMIT 1;

-- j
SELECT MIN(price) FROM aggregates.batman;

-- k
SELECT MIN(start_date) FROM aggregates.batman;

-- l
SELECT last_name FROM aggregates.batman
ORDER BY last_name ASC
LIMIT 1;

-- m
SELECT MIN(price) AS cena_min, MAX(price) AS cena_max
FROM aggregates.batman;

-- n
SELECT MAX(price) - MIN(price) FROM aggregates.batman;

-- o
SELECT AVG(age) FROM aggregates.batman;

-- p
SELECT SUM(age) / COUNT(age) FROM aggregates.batman;

-- q
SELECT sex, AVG(age)
FROM aggregates.batman
WHERE sex IS NOT NULL
GROUP BY sex;
