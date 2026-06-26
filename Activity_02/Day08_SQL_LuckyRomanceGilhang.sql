    -- Q1: Headcount per department
    SELECT department, COUNT(*) AS headcount
    FROM employees
    GROUP BY department
    ORDER BY headcount DESC;
    -- Result (top 3):
    -- IT        | 13
    -- Sales     | 12
    -- Finance   | 10


    -- Q2: Total salary per city
    SELECT city, SUM(salary) AS total_salary
    FROM employees
    GROUP BY city
    ORDER BY total_salary DESC;
    -- Result (top 3):
    -- Manila     | 1175790
    -- Cebu City  | 511870
    -- Davao City | 360600


    -- Q3: Average salary per position
    SELECT position, ROUND(AVG(salary), 0) AS avg_salary
    FROM employees
    GROUP BY position
    ORDER BY avg_salary DESC;
    -- Result (top 3):
    -- IT Manager        | 85000
    -- HR Manager        | 82000
    -- Finance Manager   | 78800


    -- Q4: Headcount per (department, city) combination
    SELECT department, city, COUNT(*) AS headcount
    FROM employees
    GROUP BY department, city
    ORDER BY headcount DESC;
    -- Result (top 3):
    -- IT        | Manila     | 7
    -- Sales     | Manila     | 6
    -- Finance   | Manila     | 5


    -- Q5: Headcount per hire year
    SELECT substr(hire_date, 1, 4) AS hire_year, COUNT(*) AS headcount
    FROM employees
    GROUP BY hire_year
    ORDER BY headcount DESC;
    -- Result (top 3):
    -- 2024      | 11
    -- 2023      | 10
    -- 2022      | 9