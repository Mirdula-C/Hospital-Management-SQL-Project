-- CREATE DATABASE
CREATE DATABASE Hospital;

-- USE DATABASE
USE Hospital;

-- Q1, Q3, Q4
-- TABLE - 1 DOCTOR DETAILS
CREATE TABLE Doctor_details(
doctor_id INT PRIMARY KEY AUTO_INCREMENT,
doctor_name VARCHAR(50) NOT NULL,
specialization VARCHAR(100) NOT NULL,
phone_number VARCHAR(15) UNIQUE NOT NULL,
experience_years INT CHECK (experience_years >= 0),
shift_timing VARCHAR(50),
email VARCHAR(100) UNIQUE NOT NULL,
is_available BOOLEAN DEFAULT TRUE,
hire_date DATE NOT NULL
);

-- TABLE - 2 PATIENT DETAILS
CREATE TABLE Patient_details(
patient_id INT PRIMARY KEY,
Patient_name VARCHAR(100) NOT NULL,
age INT CHECK (age > 0),
gender VARCHAR(10),
city VARCHAR(50),
contact_number VARCHAR(15) UNIQUE,
registration_date DATE NOT NULL,
is_active BOOLEAN DEFAULT TRUE
);

-- TABLE - 3 APPOINTMENT DETAILS
CREATE TABLE Appointment_details(
appointment_id INT PRIMARY KEY,
doctor_id INT,
patient_id INT,
appointment_date DATE NOT NULL,
appointment_time TIME NOT NULL,
status VARCHAR (20) DEFAULT 'Scheduled',

FOREIGN KEY (doctor_id) REFERENCES Doctor_details(doctor_id),
FOREIGN KEY (patient_id) REFERENCES patient_details(patient_id)
);

-- Q2
-- INSERT VALUES FOR DOCTOR DETAILS
INSERT INTO Doctor_details 
(doctor_name, specialization, phone_number, experience_years, shift_timing, email, is_available, hire_date)
VALUES
('Dr. Kumar', 'Cardiology', '9876500011', 12, 'Morning', 'kumar@hospital.com', TRUE, '2014-05-10'),
('Dr. Priya', 'Dermatology', '9876500012', 7, 'Evening', 'priya@hospital.com', TRUE, '2017-09-15'),
('Dr. Arjun', 'Orthopedics', '9876500013', 5, 'Night', 'arjun@hospital.com', FALSE, '2019-03-20'),
('Dr. Meena', 'Pediatrics', '9876500014', 10, 'Morning', 'meena@hospital.com', TRUE, '2013-11-12'),
('Dr. Ramesh', 'Neurology', '9876500015', 15, 'Evening', 'ramesh@hospital.com', TRUE, '2010-01-08'),
('Dr. Divya', 'Gynecology', '9876500016', 8, 'Morning', 'divya@hospital.com', TRUE, '2016-06-25'),
('Dr. Sanjay', 'ENT', '9876500017', 6, 'Night', 'sanjay@hospital.com', TRUE, '2018-09-09'),
('Dr. Anita', 'General Medicine', '9876500018', 9, 'Morning', 'anita@hospital.com', TRUE, '2015-07-19'),
('Dr. Varun', 'Psychiatry', '9876500019', 4, 'Evening', 'varun@hospital.com', FALSE, '2020-02-21'),
('Dr. Rekha', 'Ophthalmology', '9876500020', 11, 'Morning', 'rekha@hospital.com', TRUE, '2012-04-30'),
('Dr. Ashok', 'Urology', '9876500021', 14, 'Evening', 'ashok@hospital.com', TRUE, '2011-10-05'),
('Dr. Sneha', 'Dermatology', '9876500022', 3, 'Night', 'sneha@hospital.com', TRUE, '2021-06-17'),
('Dr. Joseph', 'Cardiology', '9876500023', 9, 'Morning', 'joseph@hospital.com', TRUE, '2015-12-12'),
('Dr. Neha', 'Radiology', '9876500024', 5, 'Evening', 'neha@hospital.com', FALSE, '2019-08-05'),
('Dr. Vivek', 'Orthopedics', '9876500025', 13, 'Morning', 'vivek@hospital.com', TRUE, '2011-03-16');

-- INSERT VALUES FOR PATIENT DETAILS
INSERT INTO Patient_details 
(patient_id, patient_name, age, gender, city, contact_number, registration_date, is_active)
VALUES
(101, 'Anitha', 25, 'Female', 'Chennai', '9000100011', '2024-01-10', TRUE),
(102, 'Ravi', 40, 'Male', 'Madurai', '9000100012', '2024-01-12', TRUE),
(103, 'Meera', 30, 'Female', 'Trichy', '9000100013', '2024-01-15', TRUE),
(104, 'Suresh', 50, 'Male', 'Salem', '9000100014', '2024-01-20', TRUE),
(105, 'Latha', 28, 'Female', 'Coimbatore', '9000100015', '2024-01-22', TRUE),
(106, 'Vignesh', 34, 'Male', 'Tirunelveli', '9000100016', '2024-01-25', TRUE),
(107, 'Shalini', 29, 'Female', 'Erode', '9000100017', '2024-01-27', TRUE),
(108, 'Hari', 45, 'Male', 'Karur', '9000100018', '2024-02-01', TRUE),
(109, 'Divya', 33, 'Female', 'Chennai', '9000100019', '2024-02-04', TRUE),
(110, 'Karthik', 22, 'Male', 'Madurai', '9000100020', '2024-02-06', TRUE),
(111, 'Nisha', 38, 'Female', 'Trichy', '9000100021', '2024-02-08', TRUE),
(112, 'Feroz', 41, 'Male', 'Salem', '9000100022', '2024-02-10', TRUE),
(113, 'Ramya', 27, 'Female', 'Chennai', '9000100023', '2024-02-12', TRUE),
(114, 'Bala', 36, 'Male', 'Coimbatore', '9000100024', '2024-02-14', TRUE),
(115, 'Keerthana', 32, 'Female', 'Madurai', '9000100025', '2024-02-16', TRUE);

-- INSERT VALUES FOR APPOINTMENT DETAILS
INSERT INTO Appointment_details
(appointment_id, doctor_id, patient_id, appointment_date, appointment_time, status)
VALUES
(1001, 1, 101, '2024-02-20', '10:00', 'Completed'),
(1002, 2, 102, '2024-02-21', '16:00', 'Scheduled'),
(1003, 3, 103, '2024-02-22', '19:00', 'Cancelled'),
(1004, 4, 104, '2024-02-23', '11:30', 'Completed'),
(1005, 5, 105, '2024-02-23', '17:00', 'Scheduled'),
(1006, 6, 106, '2024-02-24', '09:45', 'Completed'),
(1007, 7, 107, '2024-02-25', '20:00', 'Scheduled'),
(1008, 8, 108, '2024-02-26', '10:15', 'Completed'),
(1009, 9, 109, '2024-02-27', '18:30', 'Scheduled'),
(1010, 10, 110, '2024-02-27', '12:00', 'Cancelled'),
(1011, 11, 111, '2024-02-28', '15:00', 'Scheduled'),
(1012, 12, 112, '2024-02-28', '21:00', 'Completed'),
(1013, 13, 113, '2024-02-29', '10:45', 'Scheduled'),
(1014, 14, 114, '2024-03-01', '17:30', 'Completed'),
(1015, 15, 115, '2024-03-01', '09:30', 'Scheduled');

-- Q5
-- SELECT DISTINCT
SELECT DISTINCT specialization FROM Doctor_details;

-- Q6
-- UPDATE, ALTER, RENAME
UPDATE Doctor_details SET is_available = FALSE
WHERE doctor_id = 1;

ALTER TABLE patient_details ADD COLUMN blood_group VARCHAR(5);

RENAME TABLE appointment_details TO appointment;

-- Q7 
-- USE SQL OPERATORS
SELECT * FROM doctor_details
-- LIKE OPERATOR
WHERE specialization LIKE '%o%'
-- BETWEEN OPERATOR
AND experience_years BETWEEN 5 AND 15
-- IS NOT NULL OPERATOR
AND email is NOT NULL
-- IN OPERATOR
OR doctor_id IN (1, 3)
-- NOT OPERATOR
AND NOT (is_available = 0);


-- Q8
-- ORDER BY + LIMIT
SELECT patient_name, age FROM Patient_details
ORDER BY age DESC
LIMIT 3;

-- Q9
-- AGGREGATE + GROUP BY + HAVING
SELECT specialization, COUNT(*) AS total_doctors
FROM Doctor_details
GROUP BY specialization
Having COUNT(*) >= 1;

-- Q10
-- JOINS (INNER, LEFT, FULL)

-- INNER JOIN
SELECT a.appointment_id, d.doctor_name, p.patient_name, a.appointment_date, a.status FROM Appointment AS a
INNER JOIN doctor_details d ON  a.doctor_id = d.doctor_id
INNER JOIN patient_details p ON a.patient_id = p.patient_id;

-- LEFT JOIN
SELECT d.doctor_name, a.appointment_date, a.status FROM doctor_details AS d
LEFT JOIN appointment a ON d.doctor_id = a.doctor_id;

-- RIGHT JOIN
SELECT d.doctor_name, a.appointment_date, a.status FROM doctor_details AS d
RIGHT JOIN appointment a ON d.doctor_id = a.doctor_id;

-- UNION
SELECT d.doctor_name, a.appointment_date, a.status FROM doctor_details AS d
LEFT JOIN appointment a ON d.doctor_id = a.doctor_id
UNION
SELECT d.doctor_name, a.appointment_date, a.status FROM doctor_details AS d
RIGHT JOIN appointment a ON d.doctor_id = a.doctor_id;

-- Q11
-- UNION AND UNION ALL

-- UNION
SELECT doctor_name FROM doctor_details 
UNION
SELECT patient_name FROM patient_details;

-- UNION ALL
SELECT doctor_name AS names FROM doctor_details 
UNION ALL
SELECT patient_name FROM patient_details;

-- Q12
-- SINGLE_ROW SUBQUERY
SELECT * FROM doctor_details
WHERE experience_years = (SELECT MAX(experience_years) FROM doctor_details);

-- MULTI-ROW SUBQUERY
SELECT * FROM patient_details
WHERE patient_id IN (SELECT patient_id FROM appointment);

-- Q13
-- NUMERIC AND DATE FUNCTIONS
SELECT doctor_name, experience_years * 12 AS experience_in_months, YEAR(hire_date) AS joined_year FROM doctor_details;

-- Q14
-- VIEWS AND INDEXES

-- CREATE VIEWS
CREATE VIEW doctor_appointments AS
SELECT d.doctor_name, a.appointment_date, a.status FROM doctor_details d
JOIN appointment a ON d.doctor_id = a.doctor_id;

-- CREATE INDEX
CREATE INDEX idx_appointment_date
ON appointment(appointment_date);

-- Q15
-- STORED PROCEDURE
DELIMITER //
CREATE PROCEDURE GetDoctorAppointment(IN doc_id INT)
BEGIN
   SELECT appointment_id, appointment_date, status FROM appointment
   WHERE doctor_id = doc_id
   ORDER BY appointment_date;
END //
DELIMITER ;