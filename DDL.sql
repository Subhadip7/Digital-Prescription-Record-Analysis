
show tables;

USE digital_prescription_db;

DROP DATABASE digital_prescription_db;
USE digital_prescription_db;
-- Patients table
CREATE TABLE IF NOT EXISTS patients (
    patient_id VARCHAR(10) PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    gender CHAR(1) DEFAULT 'U' CHECK (gender IN ('M','F','U')),
    age INT CHECK (age BETWEEN 0 AND 100),
    contact_no VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);








CREATE DATABASE IF NOT EXISTS digital_prescription_db;
USE digital_prescription_db;

-- Patients table
CREATE TABLE IF NOT EXISTS patients (
    patient_id VARCHAR(10) PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    gender CHAR(1) DEFAULT 'U' CHECK (gender IN ('M','F','U')),
    age INT CHECK (age BETWEEN 0 AND 100),
    contact_no VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



-- Doctors table
CREATE TABLE IF NOT EXISTS doctors (
    doctor_id VARCHAR(10) PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    hospital_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);





-- Medicines table
CREATE TABLE IF NOT EXISTS medicines (
    medicine_id VARCHAR(10) PRIMARY KEY,
    medicine_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Prescriptions table
CREATE TABLE IF NOT EXISTS prescriptions (
    prescription_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10) NOT NULL,
    doctor_id VARCHAR(10) NOT NULL,
    medicine_id VARCHAR(10) NOT NULL,
    dosage VARCHAR(50) DEFAULT 'Not Provided',
    frequency VARCHAR(50) DEFAULT 'Not Provided',
    prescribed_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_patient FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT fk_doctor FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT fk_medicine FOREIGN KEY (medicine_id)
        REFERENCES medicines(medicine_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);








