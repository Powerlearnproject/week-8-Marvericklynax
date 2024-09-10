SELECT * FROM Hospitals;

SELECT Doctors.doctor_name, Hospitals.hospital_name
FROM Doctors
JOIN Hospitals ON Doctors.hospital_id = Hospitals.hospital_id
WHERE Hospitals.location = 'Rural';

SELECT Hospitals.hospital_name, COUNT(Patients.patient_id) AS patient_count
FROM Hospitals
JOIN Patients ON Hospitals.hospital_id = Patients.hospital_id
GROUP BY Hospitals.hospital_name;

SELECT doctor_name FROM Doctors WHERE specialty = 'Cardiology';

SELECT Patients.patient_name, Treatments.treatment_name
FROM Patients
JOIN Treatments ON Patients.patient_id = Treatments.patient_id
JOIN Hospitals ON Patients.hospital_id = Hospitals.hospital_id
WHERE Hospitals.hospital_name = 'Rural Clinic';
