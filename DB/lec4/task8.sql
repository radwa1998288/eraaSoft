-- Q1. Write an SQL query to calculate the average salary of all employees from the EMPLOYEES table.
SELECT AVG(salary) AS average_salary FROM EMPLOYEES;

-- Q2. Write an SQL query to count the total number of employees in the EMPLOYEES table.
SELECT COUNT(*) AS total_employees FROM EMPLOYEES;

-- Q3. Write an SQL query to find the maximum salary offered in the EMPLOYEES table.
SELECT MAX(salary) AS max_salary FROM EMPLOYEES;

-- Q4. Write an SQL query to find the minimum salary offered in the EMPLOYEES table.
SELECT MIN(salary) AS min_salary FROM EMPLOYEES;

-- Q5. Write an SQL query to calculate the total salary that the company pays to all employees.
SELECT SUM(salary) AS total_salary FROM EMPLOYEES;

-- Q6. Write an SQL query to display the department ID and the average salary of employees grouped by department from the EMPLOYEES table.
SELECT department_id, AVG(salary) AS average_salary 
FROM EMPLOYEES 
GROUP BY department_id;

-- Q7. Write an SQL query to show job ID and the total number of employees for each job title in the EMPLOYEES table.
SELECT job_id, COUNT(*) AS total_employees 
FROM EMPLOYEES 
GROUP BY job_id;

-- Q8. Write an SQL query to display the department ID and the total salary of employees only for departments where the total salary exceeds 50,000.
SELECT department_id, SUM(salary) AS total_salary 
FROM EMPLOYEES 
GROUP BY department_id 
HAVING SUM(salary) > 50000;

-- Q9. Write a query to find the average commission (COMMISSION_PCT) given to employees who have a non-null commission in the EMPLOYEES table.
SELECT AVG(COMMISSION_PCT) AS average_commission 
FROM EMPLOYEES 
WHERE COMMISSION_PCT IS NOT NULL;

-- Q10. Write a query to count how many employees have a salary greater than 10,000.
SELECT COUNT(*) AS count_above_10000 
FROM EMPLOYEES 
WHERE salary > 10000;

-- Q11. Write a query to find the maximum and minimum salary within each job ID using GROUP BY.
SELECT job_id, MAX(salary) AS max_salary, MIN(salary) AS min_salary 
FROM EMPLOYEES 
GROUP BY job_id;

-- Q12. Write a query to sum the salaries for each manager (MANAGER_ID) in the EMPLOYEES table.
SELECT MANAGER_ID, SUM(salary) AS total_salary 
FROM EMPLOYEES 
GROUP BY MANAGER_ID;

-- Q13. Write a query to display department ID and job ID, and show the total salary for each group (department + job combination).
SELECT department_id, job_id, SUM(salary) AS total_salary 
FROM EMPLOYEES 
GROUP BY department_id, job_id;

-- Q14. Write a query to display job ID and count of employees for each job, only show jobs that have more than 5 employees.
SELECT job_id, COUNT(*) AS employee_count 
FROM EMPLOYEES 
GROUP BY job_id 
HAVING COUNT(*) > 5;

-- Q15. Write a query to show each department ID with total employees, average salary, maximum salary, minimum salary, and group them by department ID.
SELECT department_id, 
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM EMPLOYEES 
GROUP BY department_id;

-- Q16. Write a query to find all departments where the average salary is more than 8000, and the number of employees is less than 10.
SELECT department_id 
FROM EMPLOYEES 
GROUP BY department_id 
HAVING AVG(salary) > 8000 AND COUNT(*) < 10;

-- Q17. Write a query to find the department that has the highest total salary among all departments.
SELECT department_id 
FROM EMPLOYEES 
GROUP BY department_id 
ORDER BY SUM(salary) DESC 
FETCH FIRST 1 ROW ONLY;

-- Q18. Write a query to show department ID, sum of salaries as Total_Salary, and average salary as Average_Salary, grouped by department ID.
SELECT department_id, 
       SUM(salary) AS Total_Salary, 
       AVG(salary) AS Average_Salary 
FROM EMPLOYEES 
GROUP BY department_id;