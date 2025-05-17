
-- 1. Total churn count
SELECT Churn, COUNT(*) AS Total FROM churn_data GROUP BY Churn;

-- 2. Average Monthly Charges by Churn status
SELECT Churn, ROUND(AVG(MonthlyCharges), 2) AS AvgMonthlyCharges FROM churn_data GROUP BY Churn;

-- 3. Churn rate by PlanType
SELECT PlanType,
       COUNT(*) AS TotalCustomers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS ChurnRatePercent
FROM churn_data GROUP BY PlanType;

-- 4. Avg CustServCalls for churned vs non-churned
SELECT Churn, ROUND(AVG(CustServCalls), 2) AS AvgServiceCalls FROM churn_data GROUP BY Churn;

-- 5. Avg Tenure for churned customers
SELECT Churn, ROUND(AVG(Tenure), 2) AS AvgTenure FROM churn_data GROUP BY Churn;

-- 6. Gender-based churn breakdown
SELECT Gender,
       COUNT(*) AS Total,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned
FROM churn_data GROUP BY Gender;
