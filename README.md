# E-Commerce Sales Performance Dashboard

A multi-tool data analysis project built using **MySQL, Excel, and Power BI** to simulate an end-to-end e-commerce sales analysis workflow.

## Project Overview

This project takes raw e-commerce order data through three stages:

**SQL → Excel → Power BI**

The objective was to extract and aggregate business information using SQL, apply additional business logic and manual analysis in Excel, and finally communicate the results through an interactive Power BI dashboard.

## Dataset

The dataset contains **18 e-commerce orders** from April–June 2026.

| Field          | Description                      |
| -------------- | -------------------------------- |
| Order ID       | Unique order identifier          |
| Date           | Order date                       |
| Customer       | Customer name                    |
| Product        | Product purchased                |
| Category       | Electronics, Stationery, or Home |
| Quantity       | Number of units ordered          |
| Price          | Order/product price              |
| Region         | North, South, East, or West      |
| Payment Method | Card or Cash                     |

The dataset contains:

* 4 customers
* 3 product categories
* 4 regions
* 2 payment methods
* 18 orders
* 3 months of sales data

## Project Workflow

### 1. SQL — Data Extraction & Aggregation

Using MySQL, I:

* Created the sales table
* Inserted the 18 records using `INSERT INTO`
* Calculated total revenue by category
* Calculated monthly revenue
* Calculated total customer spending
* Calculated average order value by region
* Created an additional query for category × payment-method analysis
* Exported the query results as CSV files

### 2. Excel — Business Logic & Analysis

The SQL outputs were imported into separate Excel sheets.

I then:

* Combined and organized SQL outputs
* Classified customers as **VIP** or **Normal**
* Used a **$450 total-spend threshold** for VIP classification
* Created a category × payment-method revenue breakdown
* Used the raw order-level data where additional fields were required

### Customer Classification

| Customer | Total Spend | Status |
| -------- | ----------: | ------ |
| N. Iqbal |     $457.91 | VIP    |
| R. Malik |     $503.78 | VIP    |
| S. Ahmed |     $422.33 | Normal |
| F. Zafar |     $195.68 | Normal |

### 3. Power BI — Dashboard

The final Excel workbook was connected to Power BI Desktop.

The dashboard contains:

* Monthly revenue trend
* Revenue by category
* Revenue by region
* Customer spending and VIP status

The dashboard was designed as a **1920 × 1080 one-page report** using a 2 × 2 visual layout.

## Dashboard

![Power BI Dashboard](screenshots/dashboard.png)

## Key Analysis

### Revenue by Category

* Electronics: **54.42%**
* Home: **24.93%**
* Stationery: **20.65%**

Electronics represents the largest share of revenue in the dataset.

### Customer Segmentation

Two of the four customers exceeded the $450 VIP threshold:

* N. Iqbal
* R. Malik

The remaining customers were classified as Normal.

## Power BI Debugging

One issue encountered during development was that the monthly revenue chart initially displayed months alphabetically rather than chronologically.

I solved this by:

1. Creating a Month Number helper column
2. Selecting the Month field
3. Using Power BI's **Sort by Column** functionality
4. Sorting the Month field using Month Number

This ensured the trend was displayed in chronological order.

## Tools & Skills

### MySQL

* Database/table creation
* Data insertion
* `SELECT`
* Aggregation
* `GROUP BY`
* Revenue analysis
* Customer analysis

### Excel

* Data organization
* Conditional classification
* Cross-tab analysis
* Revenue summarization
* Business logic

### Power BI

* Data import
* Data modeling
* DAX measures
* Visualizations
* Dashboard design
* Sorting and categorization
* Debugging aggregation and visualization issues

## End-to-End Workflow

```text
Raw Order Data
      ↓
    MySQL
      ↓
SQL Aggregation & Analysis
      ↓
    CSV
      ↓
    Excel
      ↓
Business Logic & Summarization
      ↓
   Power BI
      ↓
Final Sales Dashboard
```

## Files

* `data/` — source dataset
* `sql/` — SQL scripts used for analysis
* `excel/` — Excel analysis workbook
* `powerbi/` — Power BI dashboard
* `screenshots/` — project visuals
* `documentation/` — additional project notes

## Skills Demonstrated

**SQL | MySQL | Excel | Power BI | Data Analysis | Data Visualization | Business Logic | Dashboard Development**

