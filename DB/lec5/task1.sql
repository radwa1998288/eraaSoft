-- Create Player table
CREATE TABLE Player (
    id NUMBER NOT NULL,
    name VARCHAR2(50) UNIQUE,
    age NUMBER,
    CONSTRAINT pk_player PRIMARY KEY (id)
);

-- Create Manager table with unique constraint on (id, name)
CREATE TABLE Manager (
    id NUMBER NOT NULL,
    name VARCHAR2(50),
    salary NUMBER,
    CONSTRAINT pk_manager PRIMARY KEY (id),
    CONSTRAINT uq_manager UNIQUE (id, name)
);

-- Create another Manager table
CREATE TABLE Manager2 (
    id NUMBER NOT NULL,
    name VARCHAR2(50),
    age NUMBER,
    CONSTRAINT pk_manager2 PRIMARY KEY (id)
);