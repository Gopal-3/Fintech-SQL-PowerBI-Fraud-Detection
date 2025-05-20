-- 05_Amount_Bin_Analysis.sql
-- Purpose: Categorize transactions by amount into bins and analyze fraud distribution

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
  ROUND(100.0 * SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS fraud_rate_pct
FROM bins
GROUP BY amount_bin
ORDER BY 
  CASE 
    WHEN amount_bin = 'Below 10' THEN 1
    WHEN amount_bin = '10 - 99' THEN 2
    WHEN amount_bin = '100 - 499' THEN 3
    WHEN amount_bin = '500 - 999' THEN 4
    ELSE 5
  END;
