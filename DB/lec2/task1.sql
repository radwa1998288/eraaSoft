CREATE TABLE Doctor (id Number(3) NOT NULL , name varchar2(15) , salary NUMBER(6) , address varchar2(50));

insert INTO Doctor values('1','Radwa','1000','alexandria');
INSERT INTO Doctor VALUES('2', 'Ahmed', '2000', 'cairo');
INSERT INTO Doctor VALUES('3', 'Sara', '3500', 'giza');
INSERT INTO Doctor VALUES('4', 'Mohammed', '7000', 'luxor');
INSERT INTO Doctor VALUES('5', 'Hala', '4800', 'aswan');
INSERT INTO Doctor VALUES('6', 'Omar', '7200', 'sharm el-sheikh');
INSERT INTO Doctor VALUES('7', 'Laila', '5300', 'hurghada');
INSERT INTO Doctor VALUES('8', 'Youssef', '6200', 'port said');
INSERT INTO Doctor VALUES('9', 'Nadia', '5900', 'suez');
INSERT INTO Doctor VALUES('10', 'Khaled', '7500', 'tanta');


UPDATE DOCTOR SET salary ='20000' WHERE id ='3'; 

DELETE FROM DOCTOR WHERE id ='9';

SELECT  'my name is : ' || name || ' and my salary is : ' || salary AS Name_salary FROM DOCTOR ;


SELECT id , name, address, salary*2 FROM doctor;

SELECT * FROM DOCTOR WHERE SALARY IN (1000,2000,3000);

ALTER TABLE  Doctor RENAME TO  PRD_DOCTOR;