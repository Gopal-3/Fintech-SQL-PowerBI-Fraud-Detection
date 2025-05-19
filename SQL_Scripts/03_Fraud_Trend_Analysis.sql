-- 03_Fraud_Trend_Analysis.sql
-- Purpose: Compare fraud vs. non-fraud transactions in terms of count and amount

-- STEP 1: Summary of transaction counts by class (fraud vs. non-fraud)
SELECT 
  fraud_label,
  COUNT(*) AS total_transactions,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM transactions), 2) AS percentage
FROM transactions
GROUP BY fraud_label
ORDER BY fraud_label;

-- STEP 2: Total transaction amount comparison between fraud and non-fraud
SELECT 
  fraud_label,
  ROUND(SUM(amount)::NUMERIC, 2) AS total_amount
FROM transactions
GROUP BY fraud_label
ORDER BY fraud_label;
