DROP DATABASE hospital_db;
CREATE DATABASE hospital_db;
\c hospital_db

CREATE TABLE doctors (
    id SERIAl PRIMARY KEY,
    name TEXT NOT NULL,
    specialty TEXT
);

CREATE TABLE disease (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL    
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    admitted TIMESTAMP,
    name TEXT NOT NULL,
    doctor_id INTEGER REFERENCES doctors,
    disease_id INTEGER REFERENCES disease

);

CREATE TABLE hospital (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    doctors_id INTEGER REFERENCES doctors,
    patients_id INTEGER REFERENCES patients,
    disease_id INTEGER REFERENCES disease
);