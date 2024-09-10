CREATE TABLE Hospitals (
    hospital_id INT PRIMARY KEY,
    hospital_name VARCHAR(255),
    location VARCHAR(255)
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(255),
    specialty VARCHAR(255),
    hospital_id INT,
    FOREIGN KEY (hospital_id) REFERENCES Hospitals(hospital_id)
);

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(255),
    age INT,
    hospital_id INT,
    FOREIGN KEY (hospital_id) REFERENCES Hospitals(hospital_id)
);

CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY,
    treatment_name VARCHAR(255),
    patient_id INT,
    doctor_id INT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

INSERT INTO Hospitals (hospital_id, hospital_name, location)
VALUES 
(1, 'Central Hospital', 'Urban'),
(2, 'Rural Clinic', 'Rural');

INSERT INTO Doctors (doctor_id, doctor_name, specialty, hospital_id)
VALUES
(1, 'Dr. Smith', 'Cardiology', 1),
(2, 'Dr. Lee', 'General Medicine', 2);

INSERT INTO Patients (patient_id, patient_name, age, hospital_id)
VALUES
(1, 'John Doe', 45, 1),
(2, 'Jane Roe', 35, 2);

INSERT INTO Treatments (treatment_id, treatment_name, patient_id, doctor_id)
VALUES
(1, 'Heart Surgery', 1, 1),
(2, 'Regular Checkup', 2, 2);
