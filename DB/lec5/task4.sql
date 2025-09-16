-- Create Employee table
CREATE TABLE Employee (
    id NUMBER NOT NULL PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER
);

-- Create Phone table
CREATE TABLE Phone (
    id NUMBER NOT NULL PRIMARY KEY,
    phoneNumber VARCHAR2(15),
    employee_id NUMBER UNIQUE,
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES Employee(id)
);