# Day8_Introduction_to_Data_Summarization_&_Pivot_Tables

A comprehensive study and practical application of data summarization techniques comparing **Excel Pivot Tables** and **SQL Queries (`GROUP BY`)** using an employee database dataset.

## 📋 Project Overview

This project demonstrates how to effectively aggregate, analyze, and slice data across different platforms. Using a dataset of 50 employees, identical business questions were answered side-by-side using dynamic Excel Pivot Tables and programmatic SQL queries to cross-verify the results.

---

## 📁 Repository Structure

*   **`Activity_01/`** — Contains the Excel workbook containing the original dataset and 5 functional Pivot Tables addressing key HR and operational metrics.
*   **`Activity_02/`** — Contains the SQL script file (`.sql`) featuring optimized queries designed to replicate the pivot table aggregations.
*   **`JOURNAL/`** — Contains the personal learning journal entry reflecting on the differences, advantages, and real-world trade-offs of both systems.

---

## 📊 Core Data Insights & SQL Queries

### Q1: Headcount per Department
*   **Business Goal:** Identify resource distribution across teams.
*   **SQL Query:**
    ```sql
    SELECT department, COUNT(*) AS headcount
    FROM employees
    GROUP BY department
    ORDER BY headcount DESC;
    ```
*   **Top 3 Results:** IT (13) | Sales (12) | Finance (10)

### Q2: Total Salary Spend per City
*   **Business Goal:** Evaluate geographic spending on compensation.
*   **SQL Query:**
    ```sql
    SELECT city, SUM(salary) AS total_salary
    FROM employees
    GROUP BY city
    ORDER BY total_salary DESC;
    ```
*   **Top 3 Results:** Manila (1,175,790) | Cebu City (511,870) | Davao City (360,600)

### Q3: Average Salary per Position
*   **Business Goal:** Establish internal salary benchmarks for job titles.
*   **SQL Query:**
    ```sql
    SELECT position, ROUND(AVG(salary), 0) AS avg_salary
    FROM employees
    GROUP BY position
    ORDER BY avg_salary DESC;
    ```
*   **Top 3 Results:** IT Manager (85,000) | HR Manager (82,000) | Finance Manager (78,800)

### Q4: Department × City Cross-Tabulation
*   **Business Goal:** Determine geographical concentrations of functional departments.
*   **SQL Query:**
    ```sql
    SELECT department, city, COUNT(*) AS headcount
    FROM employees
    GROUP BY department, city
    ORDER BY headcount DESC;
    ```
*   **Top 3 Results:** IT in Manila (7) | Sales in Manila (6) | Finance in Manila (5)

### Q5: Annual Hiring Velocity
*   **Business Goal:** Track organizational growth trends over time.
*   **SQL Query:**
    ```sql
    SELECT substr(hire_date, 1, 4) AS hire_year, COUNT(*) AS headcount
    FROM employees
    GROUP BY hire_year
    ORDER BY headcount DESC;
    ```
*   **Top 3 Results:** 2024 (11) | 2023 (10) | 2022 (9)

---

## 🧠 Key Takeaways (From the Journal)

*   **Excel Pivot Tables** are chosen when data exploration needs to be quick, interactive, visual, and easily shared with non-technical stakeholders who require ad-hoc filtering capabilities.
*   **SQL `GROUP BY`** is chosen for scalability when managing millions of rows, or when handling automated, repeatable data cleaning and pipelines connected straight to an enterprise database.
*   **Cross-Verification:** The totals between Excel and SQL matched perfectly, validating the data integrity of both solutions.
