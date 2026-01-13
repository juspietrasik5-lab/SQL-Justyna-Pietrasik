SELECT 
    o.ORD_DATE,
    a.AGENT_CODE,
    a.AGENT_NAME AS Salesman,
    o.ORD_AMOUNT,
    CASE
        WHEN o.ORD_AMOUNT = d.max_amt THEN 'MAX'
        WHEN o.ORD_AMOUNT = d.min_amt THEN 'MIN'
    END AS Order_Type
FROM orders o
JOIN (
    SELECT 
        ORD_DATE,
        MAX(ORD_AMOUNT) AS max_amt,
        MIN(ORD_AMOUNT) AS min_amt
    FROM orders
    GROUP BY ORD_DATE
) d ON o.ORD_DATE = d.ORD_DATE
   AND (o.ORD_AMOUNT = d.max_amt OR o.ORD_AMOUNT = d.min_amt)
JOIN agents a ON o.AGENT_CODE = a.AGENT_CODE
ORDER BY o.ORD_DATE, Order_Type DESC;
