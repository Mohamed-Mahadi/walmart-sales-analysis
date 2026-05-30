Walmart Sales Analysis
Author: Mohamed Mahadi
Tools Used: PostgreSQL, Microsoft Excel

About Me
I am a Business Information Technology graduate from Birmingham City University (2:1). This project is part of my journey into data analytics, where I am building practical skills in SQL and data visualisation. I have academic experience with Power BI and have used this project to grow my confidence in PostgreSQL and Excel.

Project Overview
This project analyses Walmart's weekly sales data across 45 stores using SQL and Excel. I used PostgreSQL to query the dataset and Excel to present the results in a clear and readable format through tables, charts and a dashboard.
Dataset: Walmart Sales Dataset — Kaggle
Records: 6,434 weekly sales entries across 45 stores

Business Questions

Which store has the highest total sales?
Do sales go up during holiday weeks?
Which month has the highest average sales?
Which store is the most consistent vs most volatile?
What is the average weekly sales per store?


SQL Queries
Q1 — Which store has the highest total sales?
sqlSELECT store, SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY store
ORDER BY total_sales DESC;
Q2 — Do sales go up during holiday weeks?
sqlSELECT holiday_flag, AVG(weekly_sales) AS average_sales
FROM walmart_sales
GROUP BY holiday_flag
ORDER BY average_sales DESC;
Q3 — Which month has the highest average sales?
sqlSELECT EXTRACT(MONTH FROM TO_DATE(date, 'DD-MM-YYYY')) AS month, AVG(weekly_sales) AS average_sales
FROM walmart_sales
GROUP BY month
ORDER BY average_sales DESC;
Q4 — Which store is the most consistent vs most volatile?
sqlSELECT store, AVG(weekly_sales) AS average_sales, STDDEV(weekly_sales) AS standard_deviation
FROM walmart_sales
GROUP BY store
ORDER BY standard_deviation DESC;
Q5 — What is the average weekly sales per store?
sqlSELECT store, AVG(weekly_sales) AS average_weekly_sales
FROM walmart_sales
GROUP BY store;

Key Findings

Store 20 has the highest total sales across all 45 stores.
Holiday weeks average 8% more in sales ($1,122,887) compared to non-holiday weeks ($1,041,256), likely driven by people having more time off work or school.
December has the highest average weekly sales at $1,281,863, likely driven by Christmas shopping.
Store 14 is the most volatile store with a standard deviation of $317,570 despite averaging $2,020,978 weekly, suggesting unpredictable footfall possibly due to location or inconsistent promotions. Store 37 is the most consistent with a standard deviation of just $21,837.
Average weekly sales across all 45 stores range from $37,160 (Store 33) to $301,397 (Store 20), showing a significant performance gap between stores.


Dashboard Preview
<img width="1357" height="982" alt="image" src="https://github.com/user-attachments/assets/bdc54c0e-f6cf-4148-a629-0d43d5c2e417" />

What I Learned
This project taught me how to approach data analytically — starting with business questions, querying a real database with SQL, and presenting findings in a clear and visual way. It gave me practical experience with the end-to-end workflow a data analyst follows daily.
