-- Q1. Create a table STUDENTS with columns: name, marks.
CREATE TABLE STUDENTS (
    name VARCHAR2(50),
    marks NUMBER
);

-- Q2. Insert 5 sample students with marks.
INSERT INTO STUDENTS (name, marks) VALUES ('Alice', 95);
INSERT INTO STUDENTS (name, marks) VALUES ('Bob', 85);
INSERT INTO STUDENTS (name, marks) VALUES ('Charlie', 72);
INSERT INTO STUDENTS (name, marks) VALUES ('David', 65);
INSERT INTO STUDENTS (name, marks) VALUES ('Eve', 50);

-- Q3. Use CASE to assign grades.
SELECT name,
       marks,
       CASE 
           WHEN marks >= 90 THEN 'A'
           WHEN marks >= 80 THEN 'B'
           WHEN marks >= 70 THEN 'C'
           ELSE 'F'
       END AS grade
FROM STUDENTS;