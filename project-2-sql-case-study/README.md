Customer Decline Analysis Using SQL (Superstore Dataset)
Overview
This project analyzes customer purchasing behavior using SQL to identify declining customers, quantify revenue at risk, and surface segment‑level trends that inform retention strategy. The analysis is built on the Superstore dataset and implemented in SQLite.

The goal is to demonstrate:
- Data cleaning and preparation
- Window functions and analytical SQL
- Year‑over‑year customer trend analysis
- Business insights and strategic recommendations

Business Problem
Customer retention is a critical driver of profitability. This analysis answers:
- Which customers are spending less year‑over‑year?
- How much revenue is tied to declining customers?
- Which segments (Consumer, Corporate, Home Office) are most at risk?
- What categories (Furniture, Technology, Office Supplies) show the highest decline?
This enables targeted retention strategies and proactive revenue protection.

Dataset
The dataset includes:
- 9,994 orders
- 793 customers
- 4 years of sales (2011–2014)
- 3 customer segments
- 3 product categories
The OrderDate column was cleaned and standardized to YYYY-MM-DD to support date functions in SQLite.

SQL Workflow
1. Customer‑Year Aggregation
Creates one row per customer, per category, per year.
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
ORDER BY CustomerID, OrderYear;



2. Decline Detection Using LAG()
Compares each customer’s yearly sales to the previous year.
WITH customer_year AS (...),
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
ORDER BY CustomerID, OrderYear;



3. Segment‑Level Decline Summary
Rolls up decline metrics by segment and year.
WITH customer_year AS (...),
decline_flag AS (... )
SELECT
    Segment,
    OrderYear,
    COUNT(DISTINCT CASE WHEN IsDeclining = 1 THEN CustomerID END) AS DecliningCustomers,
    SUM(CASE WHEN IsDeclining = 1 THEN YearlySales END) AS DecliningRevenue,
    SUM(YearlySales) AS TotalRevenue
FROM decline_flag
GROUP BY Segment, OrderYear
ORDER BY Segment, OrderYear;

Key Insights
1. Office Supplies shows the highest customer decline rate
- High purchase frequency → more volatility
- Many low‑value customers → easier to churn
2. Technology has the highest revenue at risk
- Fewer customers, but high‑value orders
- Declines here have outsized impact
3. Furniture shows moderate decline but is margin‑sensitive
- Heavy shipping costs
- Declines often tied to discounting behavior

Strategic Recommendations
1. Prioritize retention in Office Supplies
- Launch loyalty incentives
- Target customers with declining order frequency
- Reduce friction in reordering
2. Protect high‑value Technology customers
- Personalized outreach
- Bundled offers
- Early‑warning churn scoring
3. Improve Furniture profitability
- Reduce discounting
- Optimize shipping cost structure
- Promote high‑margin subcategories

