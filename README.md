# Oracle Order Entry (OE) – Sales & Revenue Analysis

## Project Overview
This project focuses on analyzing sales performance and customer behavior using SQL queries on the Oracle Order Entry (OE) sample database. The objective is to extract business insights related to revenue trends, order channels, customer value, and product performance.

## Business Objectives
- Analyze monthly, quarterly, and yearly revenue trends.
- Calculate Month-over-Month (MoM) and Year-over-Year (YoY) revenue growth.
- Compare online and direct order performance.
- Segment customers based on revenue contribution and purchasing behavior.
- Identify top-performing products and categories.
- Perform Pareto (80/20) analysis to understand revenue concentration.

## SQL Concepts Used
- Aggregate Functions: SUM(), COUNT(), MAX()
- Date Functions: TO_CHAR()
- Joins and GROUP BY
- CASE WHEN statements
- Analytic Functions: LAG(), RANK(), DENSE_RANK()
- Common Table Expressions (CTEs)
- Window Functions and Running Totals
- Percentage Contribution and Growth Analysis

## Project Structure
```text
oracle-order-entry-sales-analysis/
├── README.md
└── sql/
    ├── File_01_revenue_trend_analysis.sql
    ├── File_02_growth_analysis.sql
    ├── File_03_order_mode_analysis.sql
    ├── File_04_customer_rfm_analysis.sql
    ├── File_05_product_category_analysis.sql
    └── File_06_pareto_80_20_analysis.sql
```

## Database
Oracle Order Entry (OE) sample schema.

The SQL scripts are intended for an Oracle database with the required OE tables and appropriate access permissions.

## Key Learning Outcomes
- Translating business questions into SQL queries.
- Analyzing sales and revenue performance.
- Using analytic functions for ranking and growth calculations.
- Evaluating customer value and product revenue contribution.

## Notes
This is a learning and portfolio project. Query results depend on the database contents and the analysis period.

## Author
SQL Portfolio Project | Oracle SQL | Sales Analytics

