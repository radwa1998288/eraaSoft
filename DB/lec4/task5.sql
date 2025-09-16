-- Q1. Use DECODE to achieve the same result as the CASE example above.
SELECT name,
       marks,
       DECODE(
           SIGN(marks - 90), 
           1, 'A', 
           SIGN(marks - 80), 
           1, 'B', 
           SIGN(marks - 70), 
           1, 'C', 
           'F') AS grade
FROM STUDENTS;

-- Q2. Create a table ORDERS with a column status ('P', 'S', 'D').
CREATE TABLE ORDERS (
    status CHAR(1)
);

-- Q3. Use DECODE to display full form of status: 'P' => 'Pending', 'S' => 'Shipped', 'D' => 'Delivered'.
SELECT status,
       DECODE(status, 
              'P', 'Pending', 
              'S', 'Shipped', 
              'D', 'Delivered') AS status_description
FROM ORDERS;