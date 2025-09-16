-- Q1. Create a table customers with a full_name column. Insert names with extra spaces.
CREATE TABLE customers (
    full_name VARCHAR2(100)
);

INSERT INTO customers (full_name) VALUES ('   John Smith   ');
INSERT INTO customers (full_name) VALUES ('  Jane Doe  ');

-- Q2. Write a query to remove both leading and trailing spaces from the names using TRIM.
SELECT TRIM(full_name) AS trimmed_name FROM customers;

-- Q3. Display only the names with leading spaces removed using LTRIM.
SELECT LTRIM(full_name) AS ltrimmed_name FROM customers;

-- Q4. Display only the names with trailing spaces removed using RTRIM.
SELECT RTRIM(full_name) AS rtrimmed_name FROM customers;

-- Q5. Trim specific characters (e.g., $, *, or #) from both sides of a given string.
SELECT TRIM('$' FROM '$$$Hello$$$') AS trimmed_string FROM dual;