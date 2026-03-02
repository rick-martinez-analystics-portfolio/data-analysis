📊 Power BI Sales Performance Dashboard 
This project demonstrates an end‑to‑end sales performance analysis using Power BI Desktop. The dashboard is designed to support data‑driven decision‑making by providing executives and operational leaders with clear visibility into revenue trends, profitability, product performance, and customer behavior.
The solution emphasizes analytical depth, data modeling best practices, and actionable insights aligned with business strategy.

🎯 Business Problem
Leadership needed a unified view of sales performance that could answer key questions:
- How are sales and profit trending over time?
- Which product categories are driving profitability?
- How volatile are monthly sales, and where are gains or losses concentrated?
- How do YoY and MoM changes reflect underlying business momentum?
- How do regions and product categories contribute to overall performance?
This dashboard consolidates these insights into a single, interactive view.

🎯 Project Objectives
- Provide leadership with a consolidated view of sales and profitability performance
- Identify high‑value customer segments and underperforming product categories
- Highlight regional trends to support territory planning and resource allocation
- Enable drill‑down analysis for operational teams to investigate root causes
- Establish a scalable reporting foundation for future KPI expansion

🛠 Tools & Techniques
- Power BI Desktop
- Power Query for data cleaning and transformation
- DAX for KPI calculations and time‑intelligence metrics
- Data Modeling (star schema approach where applicable)
- Visualization Best Practices for executive‑ready reporting

📈 Key Metrics & DAX Measures
- Total Sales
- Total Profit
- Profit Margin 
- Sales YoY Growth
- Sales MoM Growth
- Top/Bottom Product Performance
- Customer Segment Contribution
These measures were built using DAX to ensure accuracy, reusability, and scalability.

📊 Dashboard Pages
1. Sales Overview
High‑level performance summary and trend analysis designed for leadership review:
- Sales, Profit, and Quantity KPIs
- YoY and MoM sales trends
- Profit Margin by product category
- Monthly sales gains and losses

2. Discount Analysis
Focused evaluation of discount behavior and its impact on performance:
- Weighted Discount % trends over time
- Relationship between discounts and total sales
- Product‑level discount contribution
- Category and sub‑category discount patterns

3. Shipping Performance
Analysis of shipping efficiency and its impact on profitability:
- Shipping Cost vs. Profit by product category
- Average shipping cost trends over time
- Category‑level shipping cost comparison
- Identification of high‑cost, low‑profit product

4. Customer Insights
Customer segmentation and performance analysis designed to support retention and growth strategies:
- Segment distribution and contribution
- Customer‑level sales, profit, and discount metrics
- Identification of declining customers and sales risk
- YoY trends by segment and month


📊 Executive Summary: Sales, Customer Health & Segment Risk (2012–2014)
The business grew consistently from 2012–2014, with rising sales, profit, and strong margins—especially in Technology and Office Supplies. However, customer health deteriorated across all segments. A growing share of revenue now comes from customers who are buying less each year, creating a structural risk beneath top‑line growth. Office Supplies shows the most severe decline, Technology remains the healthiest but is weakening, and Furniture sits in the middle with steady deterioration.

📈 Business Performance Overview
- Sales, quantity, and profit increased each year.
- Profit grew faster than sales from 2012→2013, indicating improved efficiency before a mild correction in 2014.
- Technology and Office Supplies delivered the strongest margins and were the primary profit engines.

👥 Customer Base & Revenue Concentration
- Revenue is widely distributed; the top 10 customers contribute only a small share.
- Losing even the largest customers would have minimal impact on total sales.
- Growth is driven by broad customer activity, not a few major accounts.
- Customer mix is primarily Consumer (51%), followed by Corporate (30%) and Home Office (19%).
Interpretation:
The business operates like a transactional retail model—high volume, low dependency, diversified revenue streams.

📉 Customer Decline & Revenue Exposure
- Declining customers increased from 29% → 34% (2012–2014).
- Sales from declining customers rose from 12.6% → 15.6%.
- Over three years, 22.45% of total revenue ($2.33M) came from customers who are shrinking YoY.
Implication:
Customer health is weakening, and revenue risk is rising. Growth is masking underlying deterioration, increasing future vulnerability if declining customers continue to shrink or churn.

📊 Segment-Level Customer Health & Risk
Technology — Strongest but Weakening
- Declining customers: 13–18%
- Sales from declining customers: 6–9%
- Declining‑customer revenue: $61K → $150K → $570K
Interpretation: Healthiest segment with strong margins, but rising exposure signals emerging risk.
Office Supplies — Highest Churn & Revenue Risk
- Declining customers: 26–30%
- Sales from declining customers: 10–11%
- Declining‑customer revenue: $629K (highest)
Interpretation: Fastest deterioration and largest revenue at risk. Primary driver of overall customer decline.
Furniture — Moderate Decline, Margin Sensitive
- Declining customers: 15–19%
- Sales from declining customers: 6.5–9%
- Declining‑customer revenue: $522K
Interpretation: Middle‑risk segment with volatile margins and discount sensitivity. Requires stabilization.

🎯 Investment & Retention Priorities
1. Office Supplies — Retain First
- Highest decline rate and revenue exposure
- Margins improving despite churn
Strategic role: Stop the bleeding.
2. Furniture — Stabilize
- Volatile margins and rising decline
Strategic role: Prevent further erosion.
3. Technology — Grow + Protect
- Strongest margins and healthiest customers
- Rising declining‑customer dollars → re‑engagement opportunity
Strategic role: Growth engine.

💹 Margin & Pricing Insights
- Discounts loosened slightly (10.36% → 10.52%) but margins held steady.
- Technology and Office Supplies show strong pricing power and resilient product mix.
- Furniture’s margin drop suggests shipping cost pressure and lower‑margin mix.

🔧 Retention Strategy by Segment
- Office Supplies: Target declining customers, personalized offers, reorder reminders, bundle incentives, re‑engage lapsed high‑value buyers.
- Furniture: Optimize shipping, category‑specific promotions, seasonal campaigns, re‑engage prior large‑item buyers.
- Technology: Upsell higher‑margin items, loyalty perks, early access, personalized recommendations for declining customers.


📁 Files Included
- SalesDashboard.pbix — Full Power BI report
- 01Sales Dshbrd- Sales Overview
- 02Sales Dshbrd- Discount Analysis
- 03Sales Dshbrd- Shipping Performance
- 04Sales Dshbrd-Customer Insights

📥 How to Explore the Dashboard
Download the PBIX file and open it in Power BI Desktop to interact with filters, drill‑downs, and detailed views.

📌 Role Demonstrated
This project reflects the responsibilities of a mid‑level to senior data analyst, including:
- Translating business questions into analytical requirements
- Designing scalable data models
- Building executive‑ready dashboards
- Communicating insights with clarity and business context
- Recommending data‑driven actions

