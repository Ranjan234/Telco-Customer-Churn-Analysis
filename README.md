# 📊 Telco Customer Churn Analysis Dashboard | Power BI & MySQL

## 📌 Project Overview

This project analyzes customer churn in a telecommunications company using **MySQL** for data exploration and **Power BI** for interactive dashboard development. The objective is to identify the factors influencing customer churn and provide actionable business insights to improve customer retention.

The project follows an end-to-end Business Intelligence workflow:

**Dataset → MySQL (Data Analysis) → Power BI (Dashboard & Visualization)**

---

## 🎯 Business Problem

Customer churn is a major challenge for telecom companies because losing customers directly impacts revenue and increases customer acquisition costs.

This project helps answer key business questions such as:

- What is the overall customer churn rate?
- Which contract types have the highest churn?
- Which internet service experiences the most churn?
- Does customer tenure affect churn?
- Which payment method has the highest churn?
- Who are the highest revenue-generating customers?

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|-------|---------|
| **MySQL** | Data exploration and SQL analysis |
| **Power BI Desktop** | Dashboard development |
| **Power Query** | Data cleaning and transformation |
| **DAX** | KPI calculations and measures |
| **Excel / CSV** | Source dataset |
| **Git & GitHub** | Version control and project hosting |

---

# 📂 Dataset Information

- Industry: Telecommunications
- Dataset: Telco Customer Churn
- Total Records: 7,043
- Total Columns: 21
- Target Variable: **Churn**

Dataset includes:

- Customer Demographics
- Internet Services
- Contract Details
- Payment Methods
- Monthly Charges
- Total Charges
- Customer Tenure
- Churn Status

---

# 📊 SQL Analysis

The dataset was imported into **MySQL** for exploratory data analysis (EDA).

SQL queries were written to analyze:

- Total Customers
- Active Customers
- Churn Customers
- Churn Rate
- Revenue Analysis
- Average Monthly Charges
- Average Revenue per Customer
- Customer Tenure
- Contract-wise Churn
- Internet Service-wise Churn
- Payment Method Analysis
- Revenue Lost Due to Churn

SQL scripts are available in the repository.

```
SQL/
│
├── Churn_analysis.sql
└── Questions.sql
```

---

# 📈 Power BI Dashboard

The dashboard includes the following KPIs:

- Total Customers
- Active Customers
- Churn Customers
- Churn Rate
- Total Revenue
- Average Monthly Charges
- Average Revenue per Customer
- Average Customer Tenure

---

# 📊 Dashboard Visualizations

- Customers by Contract Type
- Customers by Internet Service
- Customers by Payment Method
- Churned Customers by Tenure Band
- Average Monthly Charges by Tenure
- Top 10 Customers by Revenue

Interactive Filters

- Gender
- Partner

---

# 💡 Key Business Insights

- Customer churn rate is **26.58%**, indicating that approximately one out of every four customers has left.
- Customers with **Month-to-Month contracts** have the highest churn.
- **Fiber Optic** customers experience the highest churn.
- Customers with **0–12 months** of tenure are more likely to leave.
- High-value customers contribute significantly to revenue and require targeted retention strategies.

---

# 📌 Business Recommendations

- Encourage customers to switch from Month-to-Month to annual contracts.
- Improve onboarding during the first year of service.
- Review Fiber Optic service quality and pricing.
- Promote automatic payment methods.
- Introduce loyalty programs for high-value customers.

---

# 📸 Dashboard Preview

https://app.fabric.microsoft.com/view?r=eyJrIjoiNjMyODYwY2QtZjIxYi00OWYwLWJmZmQtNGFhYzFkMzNjOWJiIiwidCI6Ijc1ODk4MjEwLWZiNTUtNDk2ZS1iMDEyLWUxYzAzZDEzYWI2MCJ9

```
Images/
│
├── Dashboard.png
├── Dashboard_Page1.png
└── Dashboard_Page2.png
```

---

# 📁 Repository Structure

```
Telco-Customer-Churn-Analysis/
│
├── Dashboard/
│   └── Telco Customer Churn Dashboard.pbix
│
├── Dataset/
│   └── Telco-Customer-Churn.csv
│
├── SQL/
│   ├── Churn_analysis.sql
│   └── Questions.sql
│
├── Documentation/
│   ├── BUSINESS INSIGHTS.docx
│   ├── Datasets Summary.docx
│   └── Telco Customer Churn Dataset Summary.docx
│
├── Images/
│   ├── Dashboard.png
│   └── Dashboard_Page2.png
│
└── README.md
```

---

# 🚀 Project Highlights

- Performed customer churn analysis using **MySQL**.
- Developed an interactive **Power BI dashboard** with KPI cards and business visualizations.
- Created **DAX measures** for Churn Rate, Revenue, Active Customers, and Average Revenue per Customer.
- Implemented Power Query transformations for data cleaning.
- Delivered business insights to support customer retention strategies.

---

# 🧠 Skills Demonstrated

- MySQL
- SQL
- Power BI
- DAX
- Power Query
- Data Cleaning
- Data Modeling
- Dashboard Design
- Business Intelligence
- Data Visualization
- Exploratory Data Analysis (EDA)
- Business Analysis

---

# 📚 Project Workflow

```
CSV Dataset
      │
      ▼
MySQL
(SQL Queries & Data Analysis)
      │
      ▼
Power Query
(Data Cleaning)
      │
      ▼
Data Modeling
      │
      ▼
DAX Measures
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights & Recommendations
```

---

# 📬 Contact

**Soumya Ranjan Sahoo**

- LinkedIn: https://www.linkedin.com/in/soumyaranjansahoo0
- GitHub: https://github.com/Ranjan234
- Email: soumyanalyst323@gmail.com

---

⭐ If you found this project useful, please consider giving it a star!
