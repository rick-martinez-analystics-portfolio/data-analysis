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
),
decline_flag AS (
    SELECT
        CustomerID,
        Segment,
        Category,
        OrderYear,
        YearlySales,
        LAG(YearlySales) OVER (
            PARTITION BY CustomerID, Category
            ORDER BY OrderYear
        ) AS PrevYearSales,
        CASE 
            WHEN YearlySales < LAG(YearlySales) OVER (
                PARTITION BY CustomerID, Category
                ORDER BY OrderYear
            ) THEN 1
            ELSE 0
        END AS IsDeclining
    FROM customer_year
)
SELECT *
FROM decline_flag
ORDER BY CustomerID, OrderYear
LIMIT 20;

