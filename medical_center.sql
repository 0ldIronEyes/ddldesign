-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE  medical_center;

\c medical_center

CREATE TABLE doctors
(
  id SERIAL PRIMARY KEY,
  dr_name TEXT NOT NULL,  
);

CREATE TABLE patients
(
  id SERIAL PRIMARY KEY,
  patient_name TEXT NOT NULL
);

CREATE TABLE visits
(
  id SERIAL PRIMARY KEY,
  doctor_id INTEGER NOT NULL UNIQUE REFERENCES doctors,
  patient_name INTEGER NOT NULL UNIQUE REFERENCES patients
);

CREATE TABLE diagnosis
(
  id SERIAL PRIMARY KEY,
  visit_id INTEGER NOT NULL UNIQUE REFERENCES visits,
  disease_name TEXT NOT NULL
)