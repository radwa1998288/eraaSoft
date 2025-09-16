


   SELECT * FROM employees WHERE employee_id BETWEEN 100 AND 105;
   SELECT * FROM employees WHERE employee_id IN (151, 152, 153, 154, 155);
   SELECT * FROM employees WHERE first_name LIKE 'P%' OR first_name LIKE 'p%';
   SELECT * FROM employees WHERE first_name LIKE '%A' OR first_name LIKE '%a';
   SELECT * FROM employees WHERE first_name LIKE '%A%' OR first_name LIKE '%a%';
   SELECT * FROM employees WHERE SUBSTR(first_name, 3, 1) = 'e' OR SUBSTR(first_name, 3, 1) = 'E';
   SELECT * FROM employees WHERE manager_id IS NULL;
   SELECT * FROM employees WHERE manager_id IS NOT NULL;
 INSERT INTO HR.EMPLOYEES
(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES(10000, 'Radwa', 'Ahmed', 'd', '515.123.4567', SYSDATE, 'AD_PRES', 24000, NULL, NULL, 90);
    SELECT * FROM employees WHERE job_id IN ('AD_VP', 'IT_PROG');
    SELECT * FROM employees ORDER BY last_name ASC;
    SELECT * FROM employees ORDER BY hire_date DESC;
    SELECT * FROM employees ORDER BY department_id ASC, salary DESC;
    SELECT LOWER(last_name) AS last_name FROM employees;
    SELECT UPPER(first_name) AS first_name FROM employees;
    SELECT INITCAP(first_name) AS first_name, INITCAP(last_name) AS last_name FROM employees;
    SELECT * FROM employees WHERE LOWER(last_name) = 'smith';
