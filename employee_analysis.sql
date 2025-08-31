- 1. Average salary by department
SELECT department_id, ROUND(AVG(salary),2) AS avg_salary
FROM EMPLOYEES
GROUP BY department_id
ORDER BY avg_salary DESC;

-- 2. Salary range
SELECT MIN(salary) AS min_salary,
       MAX(salary) AS max_salary
FROM EMPLOYEES;

-- 3. Top 5 highest earning job roles
SELECT job_id, ROUND(AVG(salary),2) AS avg_salary
FROM EMPLOYEES
GROUP BY job_id
ORDER BY avg_salary DESC
FETCH FIRST 5 ROWS ONLY;

-- 4. Number of employees in each department
SELECT department_id, COUNT(*) AS emp_count
FROM EMPLOYEES
GROUP BY department_id
ORDER BY emp_count DESC;

-- 5. Highest paid employee
SELECT employee_id, first_name, last_name, salary
FROM EMPLOYEES
WHERE salary = (SELECT MAX(salary) FROM EMPLOYEES);

-- 6. Average salary by job role
SELECT job_id, ROUND(AVG(salary),2) AS avg_salary
FROM EMPLOYEES
GROUP BY job_id
ORDER BY avg_salary DESC;
