SELECT
    Segment,
    OrderYear,
    COUNT(DISTINCT CASE WHEN IsDeclining = 1 THEN CustomerID END) AS DecliningCustomers,
    SUM(CASE WHEN IsDeclining = 1 THEN YearlySales END) AS DecliningRevenue,
    SUM(YearlySales) AS TotalRevenue
FROM decline_flag
GROUP BY Segment, OrderYear
ORDER BY Segment, OrderYear;
