-- Create Doctor table
CREATE TABLE Doctor (
    id NUMBER NOT NULL PRIMARY KEY,
    name VARCHAR2(50),
    salary NUMBER
);

-- Create Patient table
CREATE TABLE Patient (
    id NUMBER NOT NULL PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER
);

-- Create junction table for many-to-many relationship
CREATE TABLE Doctor_Patient (
    doctor_id NUMBER,
    patient_id NUMBER,
    CONSTRAINT fk_doctor FOREIGN KEY (doctor_id) REFERENCES Doctor(id),
    CONSTRAINT fk_patient FOREIGN KEY (patient_id) REFERENCES Patient(id),
    CONSTRAINT pk_doctor_patient PRIMARY KEY (doctor_id, patient_id)
);