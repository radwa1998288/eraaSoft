-- Create Teacher table
CREATE TABLE Teacher (
    id NUMBER NOT NULL PRIMARY KEY,
    name VARCHAR2(50),
    salary NUMBER
);

-- Create Language table
CREATE TABLE Language (
    id NUMBER NOT NULL PRIMARY KEY,
    name VARCHAR2(50)
);

-- Create junction table for one-to-many relationship
CREATE TABLE Teacher_Language (
    teacher_id NUMBER,
    language_id NUMBER,
    CONSTRAINT fk_teacher FOREIGN KEY (teacher_id) REFERENCES Teacher(id),
    CONSTRAINT fk_language FOREIGN KEY (language_id) REFERENCES Language(id),
    CONSTRAINT pk_teacher_language PRIMARY KEY (teacher_id, language_id)
);