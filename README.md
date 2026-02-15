\# 🏥 Clinic Patient Analytics (SQL Project)



\## 📌 Project Overview



This project analyzes clinic patient visit data using SQL to answer key business questions:



\- What does the patient population look like by age?

\- What are the top diagnoses?

\- Who are high utilizers?

\- Which procedures (CPT codes) are performed most often?



This project demonstrates real-world healthcare analytics using SQL.



---



\## 🗂 Dataset Structure



Table Name: `clinic\_data`



| Column Name     | Description |

|-----------------|-------------|

| visit\_id       | Unique visit identifier |

| patient\_id     | Unique patient identifier |

| visit\_date     | Date of visit |

| date\_of\_birth  | Patient date of birth |

| patient\_age    | Age at time of visit |

| patient\_sex    | Patient sex |

| icd\_code       | Diagnosis code |

| cpt\_code       | Procedure code |



---



\## 🔎 Key Analyses



\### 1️⃣ Patient Population by Age Band

Patients grouped into:

\- 0–17

\- 18–39

\- 40–64

\- 65+



\### 2️⃣ Diagnosis Analysis

\- Top 10 ICD codes

\- Diagnosis distribution by age band

\- Diagnosis distribution by sex



\### 3️⃣ Visit Utilization

\- Total visits per patient

\- Average visits per patient

\- High utilizers (4+ visits)



\### 4️⃣ Procedure (CPT) Insights

\- Most frequently performed procedures



---



\## 🛠 Skills Demonstrated



\- GROUP BY

\- CASE statements

\- HAVING

\- Subqueries

\- Aggregations

\- Healthcare utilization analysis



---



\## 🚀 How to Run



Run the queries inside `sql/analysis.sql` using:



\- MySQL

\- SQL Server

\- PostgreSQL (minor syntax adjustments may be needed)



---



\## 📈 Future Improvements



\- Add time-based trends

\- Add readmission analysis

\- Create SQL views for dashboard integration

\- Connect to Tableau or Power BI



---



\## 👤 author



Victor Ndagui 

Data Analytics Portfolio Project



