CREATE TABLE Manger(id NUMBER(3) NOT NULL, name VARCHAR2(50) , age NUMBER(3), birth_date DATE, address VARCHAR2(150) );

ALTER TABLE MANGER DROP (address);

alter table manger add  (city_address VARCHAR2(50) , street VARCHAR2(50) );

ALTER TABLE MANGER RENAME COLUMN  name TO full_name  ;

ALTER TABLE MANGER READ ONLY;

CREATE TABLE OWNER AS SELECT id,full_name , birth_date FROM manger WHERE 1=0;

ALTER TABLE MANGER RENAME To Master;

DROP TABLE MASTER;
DROP TABLE OWner;

