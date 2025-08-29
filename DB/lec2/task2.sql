CREATE TABLE Employees (EmployeeID NUMBER(3) NOT NULL, FirstName varchar2(15), LastName varchar2(15),Department varchar2(2),Salary Number(6));

INSERT INTO Employees values('101','John1','Doe1','HR','20000');
INSERT INTO Employees values('102','John2','Doe2','IT','50000');
INSERT INTO Employees values('103','John3','Doe3','CS','40000');
INSERT INTO Employees values('104','John4','Doe4','IT','10000');
INSERT INTO Employees values('105','John5','Doe5','ZX','30000');

UPDATE Employees SET salary ='600000' WHERE EmployeeID='101';
DELETE from Employees  WHERE EmployeeID='101';

SELECT * FROM Employees WHERE department ='IT';

SELECT EmployeeID , FirstName || ' '||LastName AS name , department , salary FROM Employees;