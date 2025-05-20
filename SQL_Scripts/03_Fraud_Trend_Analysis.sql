-- 03_Fraud_Trend_Analysis.sql
-- Purpose: Analyze fraud vs non-fraud patterns

-- Step 1: Fraud vs Non-Fraud transaction volume
SELECT 
  class,
  COUNT(*) AS total_txns,
  SUM(amount) AS total_amount
FROM transactions
GROUP BY class;

-- Step 2: Hourly fraud distribution
SELECT 
  EXTRACT(HOUR FROM TO_TIMESTAMP(time)) AS hour_of_day,
  COUNT(*) AS total_txns,
  SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS fraud_txns,
  ROUND(100.0 * SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions
GROUP BY hour_of_day
ORDER BY hour_of_day;

-- Step 3: Fraud trend by time-based bins (advanced binning optional)
WITH bins AS (
  SELECT 
    amount,
    CASE 
      WHEN amount < 10 THEN 'Below 10'
      WHEN amount >= 10 AND amount < 100 THEN '10 - 99'
      WHEN amount >= 100 AND amount < 500 THEN '100 - 499'
      WHEN amount >= 500 AND amount < 1000 THEN '500 - 999'
      ELSE '1000+'
    END AS amount_bin,
    class
  FROM transactions
)
SELECT 
  amount_bin,
  COUNT(*) AS total_txns,
  SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS fraud_txns,
  ROUND(100.0 * SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) / COUNT(*)::numeric, 2) AS fraud_rate_pct
FROM bins
GROUP BY amount_bin
ORDER BY amount_bin;

