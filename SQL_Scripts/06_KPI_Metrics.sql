-- 06_KPI_Metrics.sql
-- Purpose: Generate KPI metrics for fraud analysis

-- Total number of transactions
SELECT COUNT(*) AS total_transactions FROM transactions;

-- Total number of fraudulent transactions
SELECT COUNT(*) AS total_frauds 
FROM transactions
WHERE class = 1;

-- Fraud rate as a percentage
SELECT 
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM transactions), 2) AS fraud_rate_pct
FROM transactions
WHERE class = 1;
