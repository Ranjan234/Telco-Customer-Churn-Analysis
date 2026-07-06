
-- Show tables
SELECT * FROM telco_churn.telco_customer;

-- Total Customers
select count(*) as total_customers
from telco_churn.telco_customer;

-- Total Customers Churned
select count(*) as churned_customers
from telco_churn.telco_customer
where Churn = 'Yes';

-- Total Customers Not Churned
select count(*) as not_churned
from telco_churn.telco_customer
where Churn = 'No';

 -- churn rate
 SELECT 
    COUNT(*) as Total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) as Churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_rate_percent
FROM telco_churn.telco_customer;

-- Total Customers by Gender
select gender,
       count(*) as Total_customers
from telco_churn.telco_customer
group by gender;

-- Total Customers by Contract Type
select Contract,
       count(*) as Total_customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) as Churned_customers
from telco_churn.telco_customer
group by Contract;

-- Total Customers by Payment Method
select PaymentMethod, 
       count(*) as total_customers
from telco_churn.telco_customer
group by PaymentMethod;

-- Total Customers by Internet Service
select InternetService, 
      count(*) as total_customers
from telco_churn.telco_customer
group by InternetService;

-- Total Customers by Senior Citizen
select SeniorCitizen, 
       count(*)  as total_customers
from telco_churn.telco_customer
group by SeniorCitizen;

-- Total Customers by Phone Service
select PhoneService, 
       count(*) as total_customers
from telco_churn.telco_customer
group by PhoneService;

-- Total Customers by Multiple Lines
select MultipleLines, 
     count(*) as total_customers
from telco_churn.telco_customer
group by MultipleLines;

-- Total Customers by Online Security
select OnlineSecurity, 
       count(*) as total_customers
from telco_churn.telco_customer
group by OnlineSecurity;

-- Total Customers by Online Backup
select OnlineBackup, 
       count(*) as total_customers
from telco_churn.telco_customer
group by OnlineBackup;

-- Total Customers by Device Protection
select DeviceProtection, 
       count(*) as total_customers
from telco_churn.telco_customer
group by DeviceProtection;

-- Total Customers by Tech Support
select TechSupport, 
       count(*) as total_customers
from telco_churn.telco_customer
group by TechSupport;

-- Total Customers by Streaming TV
select StreamingTV, 
      count(*) as total_customers
from telco_churn.telco_customer
group by StreamingTV;

-- Total Customers by Streaming Movies
select StreamingMovies, 
      count(*) as total_customers
from telco_churn.telco_customer
group by StreamingMovies;

-- Total Customers by Paperless Billing
select PaperlessBilling, 
        count(*) as total_customers
from telco_churn.telco_customer
group by PaperlessBilling;

-- Total Customers by Partner
select Partner, 
       count(*) as total_customers
from telco_churn.telco_customer
group by Partner;

-- Total Customers by Contract
select Contract, 
       count(*) as total_customers
from telco_churn.telco_customer
group by Contract;

-- Total Customers by Dependents
select Dependents, 
      count(*) as total_customers
from telco_churn.telco_customer
group by Dependents;

-- Total Customers by Monthly Charges
select MonthlyCharges, 
       count(*) as total_customers
from telco_churn.telco_customer
group by MonthlyCharges;
-- check null values 
SELECT COUNT(*) AS null_count
FROM telco_churn.telco_customer
WHERE TotalCharges IS NULL;

-- Average monthly charges 
select round(avg(MonthlyCharges),2) AS Avg_monthly_charges
from telco_churn.telco_customer;

-- Total Revenue
select avg(TotalCharges) as avg_revenue,
      sum(TotalCharges) AS Total_Revenue
from telco_churn.telco_customer;

-- Average Tenure
select avg(Tenure) as Avg_Tenure
from telco_churn.telco_customer;

-- Average Revenue per Customer
-- Average Revenue per Customer (overall metric)
SELECT 
    ROUND(SUM((TotalCharges) / COUNT(*), 2) AS avg_revenue_per_customer
FROM telco_churn.telco_customer;

-- -- Revenue by Customer
SELECT 
    customerID,
    sum(TotalCharges) AS  Total_revenue
FROM telco_churn.telco_customer
group by customerID
ORDER BY Total_revenue DESC
LIMIT 10;


-- Tenure Band Analysis
SELECT 
    CASE 
        WHEN tenure BETWEEN 0 AND 12 THEN '0-12'
        WHEN tenure BETWEEN 13 AND 36 THEN '13-36'
        WHEN tenure > 36 THEN '36+'
    END AS Tenure_band,
    COUNT(*) AS Total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_rate_percent
FROM telco_churn.telco_customer
GROUP BY tenure_band
ORDER BY 
    CASE 
        WHEN tenure_band = '0-12' THEN 1
        WHEN tenure_band = '13-36' THEN 2
        WHEN tenure_band = '36+' THEN 3
    END;

-- Average Monthly Charges by Tenure
SELECT 
    tenure,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    COUNT(*) AS customer_count
FROM telco_churn.telco_customer
GROUP BY tenure
ORDER BY tenure;