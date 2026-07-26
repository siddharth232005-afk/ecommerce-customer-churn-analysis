CREATE TABLE customers (
    CustomerID INTEGER,
    Churn INTEGER,
    Tenure NUMERIC,
    PreferredLoginDevice TEXT,
    CityTier INTEGER,
    WarehouseToHome NUMERIC,
    PreferredPaymentMode TEXT,
    Gender TEXT,
    HourSpendOnApp NUMERIC,
    NumberOfDeviceRegistered INTEGER,
    PreferedOrderCat TEXT,
    SatisfactionScore INTEGER,
    MaritalStatus TEXT,
    NumberOfAddress INTEGER,
    Complain INTEGER,
    OrderAmountHikeFromlastYear NUMERIC,
    CouponUsed NUMERIC,
    OrderCount NUMERIC,
    DaySinceLastOrder NUMERIC,
    CashbackAmount NUMERIC
);

SELECT ROUND(AVG(Churn) * 100, 2) AS overall_churn_rate
FROM customers;

SELECT
    CASE
        WHEN Tenure <= 6 THEN '0-6 months'
        WHEN Tenure <= 12 THEN '6-12 months'
        WHEN Tenure <= 24 THEN '12-24 months'
        ELSE '24+ months'
    END AS tenure_group,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate,
    COUNT(*) AS total_customers
FROM customers
GROUP BY tenure_group
ORDER BY churn_rate DESC;

SELECT
    Complain,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate,
    COUNT(*) AS total_customers
FROM customers
GROUP BY Complain
ORDER BY churn_rate DESC;

SELECT
    PreferedOrderCat,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate,
    COUNT(*) AS total_customers
FROM customers
GROUP BY PreferedOrderCat
ORDER BY churn_rate DESC;

SELECT
    MaritalStatus,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate,
    COUNT(*) AS total_customers
FROM customers
GROUP BY MaritalStatus
ORDER BY churn_rate DESC;

SELECT
    CityTier,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate,
    COUNT(*) AS total_customers
FROM customers
GROUP BY CityTier
ORDER BY churn_rate DESC;

SELECT
    PreferredPaymentMode,
    ROUND(AVG(Churn) * 100, 2) AS churn_rate,
    COUNT(*) AS total_customers
FROM customers
GROUP BY PreferredPaymentMode
ORDER BY churn_rate DESC;

SELECT
    Churn,
    ROUND(AVG(Tenure), 2) AS avg_tenure,
    ROUND(AVG(CashbackAmount), 2) AS avg_cashback,
    ROUND(AVG(SatisfactionScore), 2) AS avg_satisfaction
FROM customers
GROUP BY Churn;
