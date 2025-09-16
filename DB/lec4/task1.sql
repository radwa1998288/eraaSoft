-- Q1. Create a table called EMP_TEST with a column NAME having leading and trailing spaces.
CREATE TABLE EMP_TEST (
    NAME VARCHAR2(50)
);

INSERT INTO EMP_TEST (NAME) VALUES ('   John Doe   ');
INSERT INTO EMP_TEST (NAME) VALUES ('  Jane Smith  ');

-- Q2. Display all names using TRIM to remove both leading and trailing spaces.
SELECT TRIM(NAME) AS NAME FROM EMP_TEST;

-- Q3. Use LTRIM to remove only leading spaces.
SELECT LTRIM(NAME) AS NAME FROM EMP_TEST;

-- Q4. Use RTRIM to remove only trailing spaces.
SELECT RTRIM(NAME) AS NAME FROM EMP_TEST;

-- Q5. Use TRIM to remove a specific character (e.g., ‘*’ or ‘#’) from both sides of a string.
SELECT TRIM('*' FROM '***Hello World***') AS TRIMMED_STRING FROM dual;