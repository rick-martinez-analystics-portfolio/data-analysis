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
