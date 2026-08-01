3# 📊 Sales Trend Analysis Using SQL Aggregations

## 📌 Project Overview

This project analyzes sales trends using SQL aggregate functions. The analysis focuses on monthly revenue and sales volume by grouping sales data based on date. Additional insights such as revenue by region, product category, sales representative, and sales channel are also included.

---

## 🎯 Objectives

- Analyze monthly sales revenue.
- Analyze monthly sales volume.
- Identify the highest revenue month.
- Generate business insights using SQL aggregation functions.

---

## 🛠️ Tools Used

- MySQL Workbench
- MySQL

---

## 📂 Dataset

The dataset contains sales transaction records with the following columns:

- Product_ID
- Sale_Date
- Sales_Rep
- Region
- Sales_Amount
- Quantity_Sold
- Product_Category
- Unit_Cost
- Unit_Price
- Customer_Type
- Discount
- Payment_Method
- Sales_Channel
- Region_and_Sales_Rep

---

## 🔧 Data Preparation

- Imported the CSV dataset into MySQL.
- Converted the `Sale_Date` column from text format to the `DATE` datatype.
- Used SQL date functions for monthly trend analysis.

---

## 📈 SQL Analysis Performed

- Monthly Revenue Analysis
- Monthly Sales Volume Analysis
- Monthly Revenue and Quantity Sold
- Highest Revenue Month
- Revenue by Region
- Revenue by Product Category
- Revenue by Sales Representative
- Revenue by Sales Channel

---

## 📁 Project Structure

```
Sales-Trend-Analysis/
│
├── SQL sales analysis.sql
├── README.md
├── monthly_revenue.csv
├── monthly_quantity.csv
├── monthly_revenue_quantity.csv
├── highest_revenue_month.csv
├── revenue_by_region.csv
├── revenue_by_category.csv
├── revenue_by_sales_rep.csv
└── revenue_by_sales_channel.csv

```

---

## 💡 SQL Concepts Used

- SELECT
- SUM()
- GROUP BY
- ORDER BY
- YEAR()
- MONTH()
- STR_TO_DATE()
- LIMIT

---

## 📊 Key Insights

- Identified monthly revenue trends.
- Calculated monthly sales volume.
- Determined the month with the highest revenue.
- Compared revenue across regions and product categories.
- Evaluated sales performance by representative and sales channel.

---

## 🚀 How to Run

1. Import the dataset into MySQL.
2. Convert the `Sale_Date` column to the `DATE` datatype.
3. Execute the queries in `SQL sales analysis.sql`.
4. Export the query results as CSV files if required.

---

## 👨‍💻 Author

**Aniket Kumar Gupta**
-
