-- 04_Hourly_Insights.sql
-- Purpose: Analyze fraud and transaction volume by hour of the day

-- Step 1: Create hour_of_day using floor division
-- Note: time is in seconds, so divide by 3600 to get hour blocks

SELECT 
  *,
  FLOOR(time / 3600) AS hour_of_day
FROM transactions;

-- Step 2: Transaction count and fraud count by hour
SELECT 
  FLOOR(time / 3600) AS hour_of_day,
  COUNT(*) AS total_txns,
  SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS fraud_txns
FROM transactions
GROUP BY FLOOR(time / 3600)
ORDER BY hour_of_day;

-- Step 3: Add fraud rate percentage column
SELECT 
  FLOOR(time / 3600) AS hour_of_day,
  COUNT(*) AS total_txns,
  SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS fraud_txns,
  ROUND(100.0 * SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END)::NUMERIC / COUNT(*), 2) AS fraud_rate_pct
FROM transactions
GROUP BY FLOOR(time / 3600)
ORDER BY hour_of_day;
