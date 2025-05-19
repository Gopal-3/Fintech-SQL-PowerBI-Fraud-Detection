-- 02_Data_Cleaning.sql
-- Purpose: Clean the dataset and engineer useful columns for downstream analysis

-- STEP 1: Create a cleaned version of the transaction table
DROP TABLE IF EXISTS transactions;
CREATE TABLE transactions AS
SELECT 
  CAST(time AS INTEGER) AS time,
  CAST(amount AS NUMERIC(10,2)) AS amount,
  class,
  -- Preserve V1-V28 untouched since they are anonymized features used in ML
  v1, v2, v3, v4, v5, v6, v7, v8, v9, v10,
  v11, v12, v13, v14, v15, v16, v17, v18, v19, v20,
  v21, v22, v23, v24, v25, v26, v27, v28
FROM raw_creditcard_data;

-- STEP 2: Add a derived column for "hour of day"
ALTER TABLE transactions ADD COLUMN hour_of_day INT;

UPDATE transactions
SET hour_of_day = FLOOR(time / 3600) % 24;

-- STEP 3: Create transaction amount bins
ALTER TABLE transactions ADD COLUMN amount_bin TEXT;

UPDATE transactions
SET amount_bin = CASE 
  WHEN amount < 10 THEN 'Below ₹10'
  WHEN amount >= 10 AND amount < 100 THEN '₹10 - ₹99'
  WHEN amount >= 100 AND amount < 500 THEN '₹100 - ₹499'
  WHEN amount >= 500 AND amount < 1000 THEN '₹500 - ₹999'
  ELSE '₹1000+'
END;

-- STEP 4: Add a readable label for class
ALTER TABLE transactions ADD COLUMN fraud_label TEXT;

UPDATE transactions
SET fraud_label = CASE 
  WHEN class = 1 THEN 'Fraud'
  ELSE 'Non-Fraud'
END;

-- STEP 5: Verify changes
SELECT * FROM transactions LIMIT 10;
