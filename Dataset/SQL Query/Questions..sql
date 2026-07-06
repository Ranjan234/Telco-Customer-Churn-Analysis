use telco_churn;

-- Show tables
SELECT * FROM telco_churn.telco_customer;

-- 1.	Find the total number of customers. 
select count(distinct customerID) as Total_Customers
from telco_churn.telco_customer;

-- 2.	Count customers who churned. 
select count(*) as Churned_Customers
from telco_churn.telco_customer
where Churn = 'Yes';

-- 3.	Calculate the churn rate. 
 select
    COUNT(*) as Total_customers,
    SUM(case when Churn = 'Yes' then 1 else 0 end) as Churned_customers,
    ROUND(SUM(case when Churn = 'Yes' then 1 else 0 end) * 100.0 / COUNT(*), 2) as Churn_rate_percent
from  telco_churn.telco_customer;

-- 4.	Find the average monthly charges. 
select round(avg(MonthlyCharges),2) AS Avg_monthly_charges
from telco_churn.telco_customer;

-- 5.	Find total revenue. 
select 
      round(sum(TotalCharges),2) AS Total_Revenue
from telco_churn.telco_customer;

-- 6.	Find churn by contract type. 
select Contract,
      count(*) as Churned_customers
from telco_churn.telco_customer
where Churn = 'Yes'
group by Contract;

-- 7.	Find churn by internet service. 
select InternetService,
      count(*) as Churned_customers
from telco_churn.telco_customer
where Churn = 'Yes'
group by InternetService
order by Churned_customers desc;

-- 8.	Find churn by payment method
select PaymentMethod,
      count(*) as Churned_customers
from telco_churn.telco_customer
where Churn = 'Yes'
group by PaymentMethod
order by Churned_customers desc;

-- 9.	Find the average tenure of churned customers. 
select
     avg(tenure) as Avg_tenure,
     count(*) as Churned_Customers
from telco_churn.telco_customer
where Churn = 'Yes';

-- 10.	List the top 10 customers with the highest total charges. 
select
    customerID,
    sum(TotalCharges) as Total_revenue
from telco_churn.telco_customer
group by customerID
order by Total_revenue desc
limit 10;

