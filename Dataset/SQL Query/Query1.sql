
use Telco_churn;

select *
from telco_customer;

-- Total Customers
SELECT count(*) AS Total_Customers
FROM telco_customer;

-- Total Customers Churned
select count(*) as churned_customers
from telcochurn.churn.telco_customer_churn
where Churn = 'Yes';