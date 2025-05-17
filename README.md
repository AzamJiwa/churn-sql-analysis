readme_final = """
# Customer Churn Analysis (SQL Project)

This project explores customer churn behavior using SQL. The dataset simulates a telecom business with customer demographics, billing data, tenure, and churn status.

## Project Overview

- **Goal:** Identify behavioral patterns among customers who churn vs those who stay.
- **Skills Used:** SQL (GROUP BY, CASE, aggregation, filtering)
- **Dataset:** 100 rows of telecom churn data

## Key SQL Queries

- Total churned vs retained customer counts
- Average monthly charges by churn status
- Churn rate by plan type
- Average customer service calls for churned users
- Average tenure of churned vs retained customers
- Gender-based churn breakdown

## Live SQL Demo (DB Fiddle)

You can view and run all queries live here:  
[Run on DB Fiddle](https://www.db-fiddle.com/f/c9GkJGRvZKMPK2W7BQEwng/1)

Click the **"Run"** button in the top-right to execute queries and see results.

## Files in This Repository

- `churn_data.csv` — The dataset
- `churn_queries.sql` — Full SQL script with all queries
- `README.md` — This file

## Insights Preview

Here’s a sample query from the project:

```sql
-- Churn rate by PlanType
SELECT PlanType,
       COUNT(*) AS TotalCustomers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS ChurnRatePercent
FROM churn_data
GROUP BY PlanType;

