 E-Commerce SQL Analysis Project

 Project Overview

This project was created to train my Excel and SQL querying abilities and gain my first practical experience with common data analyst tasks. The main goal of this project was to sharpen my existing skills, learn new concepts, and understand how data analysts approach business problems using data.

The project focuses on answering common business questions such as total business revenue, revenue by category and brand, identifying the best customers, analyzing monthly revenue trends, checking stock quantities, examining average product ratings, and many more.

The dataset was created using Google Sheets with functions such as `RANDBETWEEN()` and `INDEX()` combined with randomization methods to generate realistic numbers and text values. The database was designed to simulate a real company environment with fully populated tables. A smaller dataset was intentionally used because increasing the size would not improve the learning exercise.

The final dataset contains:

* 300 Customers
* 50 Products
* 500 Orders

After creating the dataset, the Excel file was converted into `.csv` files using LibreOffice and imported into PostgreSQL through pgAdmin, table by table. SQL queries were then created to analyze the data and answer the previously defined business questions.



 Tools Used

* Google Sheets - dataset creation and random data generation
* LibreOffice - converting `.xlsx` files into `.csv` format
* PostgreSQL - database creation and SQL analysis
* pgAdmin 4 - running queries and managing the database



 Database Structure

The database consists of the following tables:

* Employees
* Customers
* Products
* Categories
* Suppliers
* Orders
* Order_Items

These tables were connected through primary and foreign key relationships to simulate a real e-commerce database structure.



 SQL Concepts Used

The project uses SQL concepts including:

* `SELECT`
* `FROM`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`
* `JOIN`
* `DATE_TRUNC()`
* `TO_CHAR()`

Aggregate functions used:

* `SUM()`
* `COUNT()`
* `AVG()`
* `MIN()`
* `MAX()`



 Business Questions Answered

The analysis was divided into three main areas:

 1. Basic Business Metrics

The project analyzes overall business performance through:

* Total revenue
* Total number of orders
* Average order value
* Highest and lowest order values
* Revenue by payment method
* Revenue by order status
* Order count by status

 2. Product Performance Analysis

The project analyzes product-related performance through:

* Revenue by category
* Top-selling products by quantity
* Revenue by brand
* Average product rating by category
* Average product price by category
* Inventory value by category
* Products below reorder level

 3. Customer & Sales Analysis

The project analyzes customer behavior and sales trends through:

* Highest-value orders
* Top customers by revenue
* Average order value by payment method
* Monthly revenue trends
* Customer order frequency



 Key Insights

The analysis provided several interesting insights.

The company currently holds inventory worth **1,597,117.00** across all categories. Smartphones represent the largest share of inventory value with **585,990.00** (**36.69%** of total inventory), while Laptops represent **474,240.00** (**29.69%**). Together, these two categories account for **66.38%** of the total inventory value.

Revenue analysis showed that Laptops generated the highest revenue with **567,654.00**, representing **42.02%** of total revenue, while Smartphones generated **355,308.00**, representing **26.30%**. The total analyzed revenue from the dataset was **1,350,930.00**.



 Project Structure


- `README.md`
- `SQL/`
  - `e-commerce_analysis.sql`
- `data/`
  - `customers.csv`
  - `products.csv`
  - `categories.csv`
  - `suppliers.csv`
  - `employees.csv`
  - `orders.csv`
  - `order_items.csv`
- `screenshots/`
  - `database_structure.png`
  - `dataset_example.png`
  - `revenue_by_category.png`
  - `top_customers.png`
  - `monthly_revenue.png`
  - `inventory_value.png`




 Future Improvements

Possible improvements for this project:

* Create a Power BI dashboard using the analyzed data
* Add profit margin analysis
* Include customer segmentation
* Expand the dataset with more transactions
* Add more advanced SQL analysis



 Author

Davit Sandodze

Business Administration & Finance Student

Learning SQL and Data Analytics

