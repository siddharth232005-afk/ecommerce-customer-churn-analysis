# E-Commerce Customer Churn Analysis

## Overview
An end-to-end data analysis project identifying key drivers of customer churn 
for an e-commerce platform, using Python for data cleaning and exploratory 
analysis, and Power BI for an interactive dashboard.

## Problem Statement
Customer churn directly impacts revenue and growth. This project analyzes 
customer behavior, demographics, and engagement data to identify which factors 
most strongly predict churn, enabling data-driven retention strategies.

## Dataset
- Source: E-Commerce Customer Churn dataset (Kaggle)
- 5,630 customer records, 20 features
- Overall churn rate: 16.8%

## Tools Used
- **Python** (pandas, seaborn, matplotlib) — data cleaning & EDA
- **Google Colab** — analysis environment
- **PostgreSQL** — SQL-based validation of key EDA findings
- **Power BI** — interactive dashboard

## Process

### 1. Data Cleaning
- Fixed data entry errors (e.g., WarehouseToHome outliers of 126/127, likely 
  typos for 26/27)
- Imputed missing values (median) across 7 numeric columns
- Standardized inconsistent categorical labels (e.g., "Phone" vs "Mobile Phone", 
  "CC" vs "Credit Card")

### 2. Exploratory Data Analysis
- Analyzed churn rate against Tenure, Complaints, Order Category, Marital 
  Status, City Tier, Payment Mode, and more
- Built a correlation matrix to rank feature importance

### 3. SQL Analysis
- Loaded the cleaned dataset into a PostgreSQL table (`customers`)
- Wrote `GROUP BY` queries to independently validate the key EDA findings 
  (churn rate by tenure group, complaint status, order category, marital 
  status, city tier, and payment mode) — all results matched the pandas 
  analysis exactly

### 4. Dashboard
- Built an interactive Power BI dashboard with:
  - KPI card for overall churn rate
  - 5 breakdown charts (tenure, order category, city tier, complaints, marital status)
  - Slicers for Gender, Payment Mode, and City Tier

## Key Insights
- **Tenure** is the strongest churn driver: churned customers average just 
  3.9 months tenure vs. 11.4 months for retained customers
- **Complaints** nearly triple churn risk: 31.7% churn rate with a complaint 
  vs. 10.9% without
- **Mobile Phone buyers churn ~6x more** than Grocery buyers (27.4% vs 4.9%)
- **Single customers churn more** than Married customers (26.7% vs 11.5%)
- **Tier 3 cities** show the highest churn (21.4%) compared to Tier 1 (14.5%)


## Files
- `Ecommerce_Churn_Analysis.ipynb` — Python cleaning & EDA notebook
- `churn_analysis_queries.sql` — PostgreSQL queries validating key EDA findings
- `Ecommerce_Churn_Dashboard.pbix` — Power BI dashboard
- `cleaned_ecommerce_churn.csv` — cleaned dataset
- `dashboard_screenshot.png` — screenshot of the Power BI dashboard


