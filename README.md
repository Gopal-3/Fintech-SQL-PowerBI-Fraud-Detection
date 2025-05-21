# 💳 Credit Card Fraud Detection – SQL + Power BI Project

![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-blue)
![PowerBI](https://img.shields.io/badge/Visualization-PowerBI-yellow)
![SQL](https://img.shields.io/badge/Language-SQL-green)
![Project Type](https://img.shields.io/badge/Project-Type_Fintech-orange)

---

## 📊 Project Overview

This end-to-end data analytics project focuses on **fraud detection in credit card transactions** using **SQL for analysis** and **Power BI for visualization**.

It covers:
- Advanced SQL queries using PostgreSQL
- Fraud trend identification
- Amount-based binning and segmentation
- Time-based behavioral insights
- Dashboard creation in Power BI with KPI Cards

---

## 🧾 Dataset Summary

- **Source**: Anonymized credit card transaction data
- **Columns**: 
  - `time` (in seconds)
  - `amount`
  - `class` (1 = fraud, 0 = non-fraud)
- **Total Records**: 1.85 million+
- **No personally identifiable information (PII)** included

---
## ❓ Business Questions Solved

This project was designed to address the following real-world fintech and fraud risk challenges:

1. **What percentage of credit card transactions are fraudulent?**  
   Helps measure the baseline fraud risk in the dataset.

2. **At what times of day is fraud most likely to occur?**  
   Enables banks to optimize fraud monitoring during high-risk hours.

3. **How does fraud distribution vary across transaction amounts?**  
   Identifies high-risk transaction brackets for alert systems or manual review.

4. **Can we create a dashboard that provides real-time fraud insights?**  
   Delivers a visual tool for fraud analysts and business stakeholders.

5. **What are the key KPIs to track for fraud monitoring?**  
   Provides summary metrics for leadership and compliance teams.

🎯 These questions map directly to **fraud risk prevention**, **resource allocation**, and **business intelligence optimization**.

---
## 🛠️ Tools Used

- **SQL** (PostgreSQL)
- **Power BI**
- **Git & GitHub** (Version Control and Portfolio Hosting)
- **VS Code**

---

## 📈 Dashboard Insights

| 🔢 Visual | 📌 Title                               | 💡 Insight                                                                 |
|----------|----------------------------------------|---------------------------------------------------------------------------|
| 📊 1     | Fraud vs Non-Fraud (Bar Chart)         | Only ~0.17% of transactions are fraud, but they pose significant risk     |
| 🕒 2     | Hourly Fraud Trend (Combo Chart)        | Fraud spikes occur during late-night and early-morning hours              |
| 💰 3     | Amount Bin Fraud Rate (Column Chart)    | High-value bins show disproportionately higher fraud rate                 |
| 📌 KPIs | Total Txns, Total Frauds, Fraud Rate    | At-a-glance insights for business stakeholders                           |

---

## 📘 Learnings & Skills Demonstrated

- ✅ Writing advanced SQL queries using **CTEs**, **aggregations**, and **CASE WHEN**
- ⏳ Analyzing time-based trends from second-level timestamp data
- 📊 Creating dynamic, interactive dashboards in Power BI
- 💡 Turning raw data into **business-ready insights**
- 🧠 Performing exploratory, behavioral, and segmentation analysis

---

## 📂 Repository Structure

Fintech-SQL-PowerBI-Fraud-Detection/
│
├── 📁 SQL_Scripts/
│ ├── 01_EDA.sql
│ ├── 02_Data_Cleaning.sql
│ ├── 03_Fraud_Trend_Analysis.sql
│ ├── 04_Hourly_Insights.sql
│ ├── 05_Amount_Bin_Analysis.sql
│ └── 06_KPI_Metrics.sql
│
├── 📁 PowerBI_Exports/
│ ├── fraud_vs_nonfraud.csv
│ ├── hourly_fraud.csv
│ ├── fraud_by_amount_bins.csv
│
├── 📁 Dashboard/
│ └── CreditCard_Fraud_Dashboard.pbix
│
├── 📁 Assets/
│ └── screenshots_of_dashboard.png
│
└── 📄 README.md



---

## 🚀 How to Use This Project

1. **Fork or Clone** this repo
2. Run the `.sql` files on any PostgreSQL server
3. Load the exported `.csv` files into Power BI
4. Rebuild or customize the dashboard visuals
5. Use insights for presentations, interviews, or further analysis

---

## 🔖 Hashtags & SEO Tags

#SQLPortfolio #DataAnalytics #PowerBI #Fintech #FraudDetection  
#CreditCardAnalytics #SQLProject #BusinessIntelligence #DataStorytelling  
#DataAnalystPortfolio #RoshniPanda #PostgreSQL

---

## ✨ Created By

**Gopal Panda**  
Aspiring Data Analyst | Specializing in SQL, BI Tools & Fintech Insights  
📬 [LinkedIn](https://www.linkedin.com/in/gopal-panda-5141b2316/) • 🌐 Portfolio Coming Soon

---

