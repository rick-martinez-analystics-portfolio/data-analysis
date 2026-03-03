WITH customer_year AS (
    SELECT 
        CustomerID,
        Segment,
        Category,
        STRFTIME('%Y', OrderDate) AS OrderYear,
        SUM(Sales) AS YearlySales
    FROM superstore
    GROUP BY 
        CustomerID, Segment, Category, STRFTIME('%Y', OrderDate)
)
SELECT *
FROM customer_year
LIMIT 20;

