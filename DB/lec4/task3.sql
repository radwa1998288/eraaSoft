-- Q1. Display current date in the format 'DD-MON-YYYY'.
SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') AS CURRENT_DATE FROM dual;

-- Q2. Display current date in the format 'Month YYYY'.
SELECT TO_CHAR(SYSDATE, 'Month YYYY') AS CURRENT_DATE FROM dual;

-- Q3. Convert a number to character using TO_CHAR with formatting (e.g., 12345.67 as '12,345.67').
SELECT TO_CHAR(12345.67, '9,999.99') AS FORMATTED_NUMBER FROM dual;

-- Q4. Show salary formatted with a currency symbol.
SELECT TO_CHAR(5000, '$9,999.99') AS SALARY FROM dual;

-- Q5. Display system date in the format: YYYY/MM/DD HH24:MI:SS.
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS SYSTEM_DATE FROM dual;