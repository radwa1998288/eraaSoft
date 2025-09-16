-- Q1. Replace all occurrences of the letter 'o' with '0' in the word “promotion”.
SELECT REPLACE('promotion', 'o', '0') AS new_word FROM dual;

-- Q2. Replace the word “basic” with “advanced” in the sentence “This is a basic course”.
SELECT REPLACE('This is a basic course', 'basic', 'advanced') AS new_sentence FROM dual;

-- Q3. Create a departments table with dept_name column. Insert at least 3 department names.
CREATE TABLE departments (
    dept_name VARCHAR2(50)
);

INSERT INTO departments (dept_name) VALUES ('HR');
INSERT INTO departments (dept_name) VALUES ('IT');
INSERT INTO departments (dept_name) VALUES ('Finance');

-- Q4. Format each department name to 15 characters by padding with ‘*’ on the left using LPAD.
SELECT LPAD(dept_name, 15, '*') AS formatted_dept_name FROM departments;

-- Q5. Format each department name to 15 characters by padding with '-' on the right using RPAD.
SELECT RPAD(dept_name, 15, '-') AS formatted_dept_name FROM departments;