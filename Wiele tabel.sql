-- =======================================
-- Tworzenie bazy danych i tabel
-- =======================================
DROP DATABASE IF EXISTS wiele_tabel_zadanie;
CREATE DATABASE wiele_tabel_zadanie;
USE wiele_tabel_zadanie;

-- Tabela agents
CREATE TABLE agents (
    AGENT_CODE varchar(6) PRIMARY KEY NOT NULL,
    AGENT_NAME varchar(40),
    WORKING_AREA varchar(35),
    COMMISSION decimal(10,2),
    PHONE_NO varchar(15),
    COUNTRY varchar(25)
);

INSERT INTO agents (AGENT_CODE, AGENT_NAME, WORKING_AREA, COMMISSION, PHONE_NO, COUNTRY) VALUES
('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', ''),
('A003', 'Alex', 'London', 0.13, '075-12458969', ''),
('A008', 'Alford', 'New York', 0.12, '044-25874365', ''),
('A011', 'Ravi Kumar', 'Bangalore', 0.15, '077-45625874', ''),
('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', ''),
('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', ''),
('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', ''),
('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', ''),
('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', ''),
('A006', 'McDen', 'London', 0.15, '078-22255588', ''),
('A004', 'Ivan', 'Torento', 0.15, '008-22544166', ''),
('A009', 'Benjamin', 'Hampshair', 0.11, '008-22536178', '');

-- Tabela customer
CREATE TABLE customer (
    CUST_CODE varchar(6) PRIMARY KEY NOT NULL,
    CUST_NAME varchar(40) NOT NULL,
    CUST_CITY varchar(35),
    WORKING_AREA varchar(35) NOT NULL,
    CUST_COUNTRY varchar(20) NOT NULL,
    GRADE decimal(10,0),
    OPENING_AMT decimal(12,2) NOT NULL,
    RECEIVE_AMT decimal(12,2) NOT NULL,
    PAYMENT_AMT decimal(12,2) NOT NULL,
    OUTSTANDING_AMT decimal(12,2) NOT NULL,
    PHONE_NO varchar(17) NOT NULL,
    AGENT_CODE varchar(6)
);

INSERT INTO customer (CUST_CODE, CUST_NAME, CUST_CITY, WORKING_AREA, CUST_COUNTRY, GRADE, OPENING_AMT, RECEIVE_AMT, PAYMENT_AMT, OUTSTANDING_AMT, PHONE_NO, AGENT_CODE) VALUES
('C00013', 'Holmes', 'London', 'London', 'UK', 2, 6000.00, 5000.00, 7000.00, 4000.00, 'BBBBBBB', 'A003'),
('C00001', 'Micheal', 'New York', 'New York', 'USA', 2, 3000.00, 5000.00, 2000.00, 6000.00, 'CCCCCCC', 'A008'),
('C00020', 'Albert', 'New York', 'New York', 'USA', 3, 5000.00, 7000.00, 6000.00, 6000.00, 'BBBBSBB', 'A008'),
('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', 2, 5000.00, 7000.00, 4000.00, 8000.00, 'AVAVAVA', 'A011'),
('C00024', 'Cook', 'London', 'London', 'UK', 2, 4000.00, 9000.00, 7000.00, 6000.00, 'FSDDSDF', 'A006'),
('C00015', 'Stuart', 'London', 'London', 'UK', 1, 6000.00, 8000.00, 3000.00, 11000.00, 'GFSGERS', 'A003'),
('C00002', 'Bolt', 'New York', 'New York', 'USA', 3, 5000.00, 7000.00, 9000.00, 3000.00, 'DDNRDRH', 'A008'),
('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', 2, 7000.00, 7000.00, 9000.00, 5000.00, 'NHBGVFC', 'A005'),
('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', 1, 7000.00, 7000.00, 7000.00, 7000.00, 'WERTGDF', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', 1, 8000.00, 7000.00, 7000.00, 8000.00, 'ZZZZBFV', 'A010'),
('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', 1, 7000.00, 11000.00, 7000.00, 11000.00, '147-25896312', 'A002'),
('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', 1, 7000.00, 11000.00, 9000.00, 9000.00, 'GHRDWSD', 'A010'),
('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', 2, 7000.00, 11000.00, 9000.00, 9000.00, '113-12345678', 'A002'),
('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', 1, 5000.00, 8000.00, 7000.00, 6000.00, 'AAAAAAA', 'A005'),
('C00023', 'Karl', 'London', 'London', 'UK', 0, 4000.00, 6000.00, 7000.00, 3000.00, 'AAAABAA', 'A006'),
('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', 1, 10000.00, 7000.00, 6000.00, 11000.00, 'DDDDDDD', 'A004'),
('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', 3, 6000.00, 4000.00, 5000.00, 5000.00, 'MMMMMMM', 'A009'),
('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', 2, 8000.00, 4000.00, 3000.00, 9000.00, 'AAAAAAB', 'A007'),
('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', 1, 5000.00, 7000.00, 9000.00, 3000.00, 'KRFYGJK', 'A012'),
('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', 1, 7000.00, 7000.00, 9000.00, 5000.00, 'HJKORED', 'A004'),
('C00003', 'Martin', 'Torento', 'Torento', 'Canada', 2, 8000.00, 7000.00, 7000.00, 8000.00, 'MJYURFD', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', 3, 8000.00, 7000.00, 3000.00, 12000.00, 'Phone No', 'A002'),
('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', 2, 8000.00, 11000.00, 7000.00, 12000.00, 'AAAATGF', 'A001'),
('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', 2, 8000.00, 11000.00, 7000.00, 12000.00, 'JRTVFDD', 'A007'),
('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', 3, 7000.00, 11000.00, 7000.00, 11000.00, 'PPHGRTS', 'A010');

-- Tabela orders
CREATE TABLE orders (
    ORD_NUM decimal(6,0) PRIMARY KEY NOT NULL,
    ORD_AMOUNT decimal(12,2) NOT NULL,
    ADVANCE_AMOUNT decimal(12,2) NOT NULL,
    ORD_DATE date NOT NULL,
    CUST_CODE varchar(6) NOT NULL,
    AGENT_CODE varchar(6) NOT NULL,
    ORD_DESCRIPTION varchar(60) NOT NULL
);

INSERT INTO orders (ORD_NUM, ORD_AMOUNT, ADVANCE_AMOUNT, ORD_DATE, CUST_CODE, AGENT_CODE, ORD_DESCRIPTION) VALUES
(200100, 1000.00, 600.00, '2008-01-08', 'C00015', 'A003', 'SOD'),
(200101, 3000.00, 1000.00, '2008-07-15', 'C00001', 'A008', 'SOD'),
(200102, 2000.00, 300.00, '2008-05-25', 'C00012', 'A012', 'SOD'),
(200103, 1500.00, 700.00, '2008-05-15', 'C00021', 'A005', 'SOD'),
(200104, 1500.00, 500.00, '2008-03-13', 'C00006', 'A004', 'SOD'),
(200105, 2500.00, 500.00, '2008-07-18', 'C00025', 'A011', 'SOD'),
(200106, 2500.00, 700.00, '2008-04-20', 'C00005', 'A002', 'SOD'),
(200107, 4500.00, 900.00, '2008-08-30', 'C00007', 'A010', 'SOD'),
(200108, 4000.00, 600.00, '2008-02-15', 'C00008', 'A004', 'SOD'),
(200109, 3500.00, 800.00, '2008-07-30', 'C00011', 'A010', 'SOD'),
(200110, 3000.00, 500.00, '2008-04-15', 'C00019', 'A010', 'SOD'),
(200111, 1000.00, 300.00, '2008-07-10', 'C00020', 'A008', 'SOD'),
(200112, 2000.00, 400.00, '2008-05-30', 'C00016', 'A007', 'SOD'),
(200113, 4000.00, 600.00, '2008-06-10', 'C00022', 'A002', 'SOD'),
(200114, 3500.00, 2000.00, '2008-08-15', 'C00002', 'A008', 'SOD');

-- =======================================
-- Zadania
-- =======================================

-- 1a
SELECT c.*
FROM customer c
JOIN orders o ON c.CUST_CODE = o.CUST_CODE
WHERE o.ORD_DATE = '2008-01-08';

-- 1b
SELECT a.AGENT_CODE, a.AGENT_NAME, a.WORKING_AREA,
       c.CUST_CODE, c.CUST_NAME, c.WORKING_AREA
FROM agents a
JOIN customer c ON a.AGENT_CODE = c.AGENT_CODE;

-- 2a
SELECT c.CUST_CODE, c.CUST_NAME, c.WORKING_AREA,
       a.AGENT_NAME AS Salesman, a.COMMISSION
FROM customer c
INNER JOIN agents a ON c.AGENT_CODE = a.AGENT_CODE
WHERE a.COMMISSION > 0.12;

-- 2b
SELECT o.ORD_NUM, o.ORD_DATE, o.ORD_AMOUNT,
       c.CUST_NAME AS "Customer Name",
       a.AGENT_NAME AS Salesman, a.COMMISSION * o.ORD_AMOUNT AS Commission_Amount
FROM orders o
INNER JOIN customer c ON o.CUST_CODE = c.CUST_CODE
INNER JOIN agents a ON o.AGENT_CODE = a.AGENT_CODE;

-- 3a
SELECT c.CUST_CODE, c.CUST_NAME, c.WORKING_AREA,
       a.AGENT_CODE, a.AGENT_NAME AS Salesman, a.WORKING_AREA
FROM customer c
LEFT JOIN agents a ON c.AGENT_CODE = a.AGENT_CODE
ORDER BY c.CUST_CODE ASC;

-- 4a
SELECT a.AGENT_CODE, a.AGENT_NAME AS Salesman, a.WORKING_AREA,
       c.CUST_CODE
FROM agents a
RIGHT JOIN customer c ON a.AGENT_CODE = c.AGENT_CODE
ORDER BY a.AGENT_CODE ASC;

-- 5a
SELECT a.AGENT_CODE, a.AGENT_NAME, c.CUST_CODE, c.CUST_NAME
FROM agents a
CROSS JOIN customer c;

-- 5b
SELECT a.AGENT_CODE, a.AGENT_NAME, c.CUST_CODE, c.CUST_NAME
FROM agents a
CROSS JOIN customer c
WHERE a.WORKING_AREA = c.WORKING_AREA;

-- 5c
SELECT a.AGENT_CODE, a.AGENT_NAME, c.CUST_CODE, c.CUST_NAME, c.GRADE
FROM agents a
CROSS JOIN customer c
WHERE a.WORKING_AREA <> c.WORKING_AREA
  AND c.GRADE IS NOT NULL;

-- 6a
SELECT AGENT_CODE AS ID, AGENT_NAME AS Name, 'Salesman' AS Rodzaj
FROM agents
WHERE WORKING_AREA = 'London'
UNION
SELECT CUST_CODE AS ID, CUST_NAME AS Name, 'Customer' AS Rodzaj
FROM customer
WHERE WORKING_AREA = 'London';

-- 6b
SELECT ORD_DATE, MAX(ORD_AMOUNT) AS Max_Order, MIN(ORD_AMOUNT) AS Min_Order
FROM orders
GROUP BY ORD_DATE
ORDER BY ORD_DATE;

-- 7a
CREATE VIEW londonstaff AS
SELECT *
FROM agents
WHERE WORKING_AREA = 'London' AND COMMISSION > 0.14;

-- 7b
CREATE VIEW gradecount AS
SELECT GRADE AS grade, COUNT(*) AS number
FROM customer
GROUP BY GRADE;

-- 7c
CREATE VIEW total_per_dzien AS
SELECT ORD_DATE AS ord_date,
       COUNT(DISTINCT CUST_CODE) AS customer_count,
       AVG(ORD_AMOUNT) AS avg_order,
       SUM(ORD_AMOUNT) AS total_order
FROM orders
GROUP BY ORD_DATE;
