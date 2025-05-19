-- 01_EDA.sql
-- Purpose: Perform basic exploration on the credit card transaction dataset

-- View total number of transactions
SELECT COUNT(*) AS total_transactions FROM transactions;

-- Check how many fraudulent vs non-fraudulent transactions
SELECT 
  class, 
  COUNT(*) AS count,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM transactions)::numeric, 2) AS percentage
FROM transactions
GROUP BY class;

-- Check basic statistics of amount
SELECT 
  MIN(amount) AS min_amount,
  MAX(amount) AS max_amount,
  AVG(amount) AS avg_amount,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY amount) AS median_amount
FROM transactions;

-- Distribution of transaction time (seconds)
SELECT 
  MIN(time) AS min_time,
  MAX(time) AS max_time
FROM transactions;

-- Preview sample records
SELECT * FROM transactions LIMIT 10;
