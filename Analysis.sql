SELECT store, SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY store
ORDER BY total_sales DESC;

SELECT holiday_flag, AVG(weekly_sales) AS average_sales
FROM walmart_sales
GROUP BY holiday_flag
ORDER BY average_sales DESC;

SELECT EXTRACT(MONTH FROM TO_DATE(date, 'DD-MM-YYYY')) AS month, AVG(weekly_sales) AS average_sales
FROM walmart_sales
GROUP BY month
ORDER BY average_sales DESC;

SELECT store, AVG(weekly_sales) AS average_sales, STDDEV(weekly_sales) AS standard_deviation
FROM walmart_sales
GROUP BY store
ORDER BY standard_deviation DESC;

SELECT store, AVG(weekly_sales) AS average_weekly_sales
FROM walmart_sales
GROUP BY store;