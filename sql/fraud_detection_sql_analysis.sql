-- fraud_detection_sql_analysis.sql
-- This file contains SQL queries used for analyzing fraudulent transactions
-- in support of an advanced data analyst project.

-- 1. Count total transactions
SELECT COUNT(*) AS total_transactions
FROM fraud_transactions;

-- 2. Count total fraudulent transactions
SELECT COUNT(*) AS total_fraud_cases
FROM fraud_transactions
WHERE class = 1;

-- 3. Average amount for fraud vs non-fraud
SELECT class, ROUND(AVG(amount), 2) AS avg_amount
FROM fraud_transactions
GROUP BY class;

-- 4. Number of duplicate transactions in fraud class
SELECT COUNT(*) AS fraud_duplicates
FROM fraud_transactions
WHERE is_duplicate = 1 AND class = 1;

-- 5. Fraud rate by risk score
SELECT risk_score, 
       COUNT(*) AS total, 
       SUM(class) AS fraud_count,
       ROUND(AVG(class)*100, 2) AS fraud_rate_percent
FROM fraud_transactions
GROUP BY risk_score
ORDER BY risk_score;

-- 6. Percentage of outliers that are fraud
SELECT 
    ROUND(SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS fraud_rate_outliers
FROM fraud_transactions
WHERE is_outlier = 1;

-- 7. Fraud rate by risk level
SELECT 
    CASE WHEN risk_score >= 2 THEN 'High Risk' ELSE 'Low Risk' END AS risk_level,
    COUNT(*) AS total,
    SUM(class) AS fraud_cases,
    ROUND(AVG(class)*100, 2) AS fraud_rate_percent
FROM fraud_transactions
GROUP BY risk_level;

-- 8. Fraud rate by time window (Morning, Afternoon, Evening, Night)
SELECT
    CASE 
        WHEN hour BETWEEN 0 AND 5 THEN 'Night'
        WHEN hour BETWEEN 6 AND 11 THEN 'Morning'
        WHEN hour BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS time_window,
    COUNT(*) AS total,
    SUM(class) AS frauds,
    ROUND(AVG(class)*100, 2) AS fraud_rate_percent
FROM fraud_transactions
GROUP BY time_window;

-- 9. Top 5 highest amount fraud transactions
SELECT *
FROM fraud_transactions
WHERE class = 1
ORDER BY amount DESC
LIMIT 5;

-- 10. Summary of risk and fraud detection
SELECT 
    COUNT(*) AS total_txns,
    SUM(class) AS total_fraud,
    SUM(is_duplicate) AS total_duplicates,
    SUM(is_outlier) AS total_outliers,
    SUM(CASE WHEN risk_score >= 2 THEN 1 ELSE 0 END) AS high_risk_txns
FROM fraud_transactions;
