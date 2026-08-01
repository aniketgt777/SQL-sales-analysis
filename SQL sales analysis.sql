SELECT * FROM sales_data;

SELECT
YEAR(Sale_Date) AS Year,
MONTH(Sale_Date) AS Month,
SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
GROUP BY YEAR(Sale_Date), MONTH(Sale_Date)
ORDER BY Year, Month;

DESCRIBE sales_data;

ALTER TABLE sales_data
ADD COLUMN Sale_Date_New DATE;

SET SQL_SAFE_UPDATES = 0;

UPDATE sales_data
SET Sale_Date_New = STR_TO_DATE(Sale_Date, '%d-%m-%Y');

SET SQL_SAFE_UPDATES = 1;

SELECT Sale_Date, Sale_Date_New
FROM sales_data
LIMIT 10;

SELECT
    YEAR(Sale_Date_New) AS Year,
    MONTH(Sale_Date_New) AS Month,
    SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
GROUP BY YEAR(Sale_Date_New), MONTH(Sale_Date_New)
ORDER BY Year, Month;

SELECT
    YEAR(Sale_Date_New) AS Year,
    MONTH(Sale_Date_New) AS Month,
    SUM(Quantity_Sold) AS Total_Quantity_Sold
FROM sales_data
GROUP BY YEAR(Sale_Date_New), MONTH(Sale_Date_New)
ORDER BY Year, Month;

SELECT
    YEAR(Sale_Date_New) AS Year,
    MONTH(Sale_Date_New) AS Month,
    SUM(Sales_Amount) AS Total_Revenue,
    SUM(Quantity_Sold) AS Total_Quantity_Sold
FROM sales_data
GROUP BY YEAR(Sale_Date_New), MONTH(Sale_Date_New)
ORDER BY Year, Month;

SELECT
    YEAR(Sale_Date_New) AS Year,
    MONTH(Sale_Date_New) AS Month,
    SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
GROUP BY YEAR(Sale_Date_New), MONTH(Sale_Date_New)
ORDER BY Total_Revenue DESC
LIMIT 1;

SELECT
    Region,
    SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
GROUP BY Region
ORDER BY Total_Revenue DESC;

SELECT
    Product_Category,
    SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;

SELECT
    Sales_Rep,
    SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
GROUP BY Sales_Rep
ORDER BY Total_Revenue DESC;

SELECT
    Sales_Channel,
    SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
GROUP BY Sales_Channel
ORDER BY Total_Revenue DESC;

SELECT
    MONTH(Sale_Date_New) AS Month,
    SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
WHERE YEAR(Sale_Date_New) = 2023
GROUP BY MONTH(Sale_Date_New)
ORDER BY Month;