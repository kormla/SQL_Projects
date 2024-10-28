#creating a database
CREATE DATABASE G3_pharmarcyDB;
USE G3_pharmarcyDB;


#Creating a table
CREATE TABLE Prescriptions(
    prescription_id INT PRIMARY KEY,
    client_name TEXT,
    medication_name TEXT,
    dosage TEXT,
    prescription_date DATE,
    refill_date DATE
);

# Inserting values into the table
INSERT INTO Prescriptions VALUES (1, 'Abokomah', 'Lisinopril', '10 mg', '2024-10-01', '2024-11-01');
INSERT INTO Prescriptions VALUES (2, 'Samuel', 'Metformin', '500 mg', '2024-10-02', '2024-11-02');
INSERT INTO Prescriptions VALUES (3, 'Precious', 'Atorvastatin', '20 mg', '2024-10-03', '2024-11-03');
INSERT INTO Prescriptions VALUES (4, 'Elipklim', 'Amlodipine', '5 mg', '2024-10-04', '2024-11-04');
INSERT INTO Prescriptions VALUES (5, 'Alberta', 'Omeprazole', '20 mg', '2024-10-05', '2024-11-05');
INSERT INTO Prescriptions VALUES (6, 'Tabitha', 'Simvastatin', '40 mg', '2024-10-06', '2024-11-06');
INSERT INTO Prescriptions VALUES (7, 'Dorcas', 'Losartan', '50 mg', '2024-10-07', '2024-11-07');
INSERT INTO Prescriptions VALUES (8, 'Lydia', 'Metoprolol', '100 mg', '2024-10-08', '2024-11-08');
INSERT INTO Prescriptions VALUES (9, 'Fiona', 'Hydrochlorothiazide', '25 mg', '2024-10-09', '2024-11-09');
INSERT INTO Prescriptions VALUES (10, 'George', 'Warfarin', '5 mg', '2024-10-10', '2024-11-10');
INSERT INTO Prescriptions VALUES (11, 'Hannah', 'Fluoxetine', '20 mg', '2024-10-11', '2024-11-11');
INSERT INTO Prescriptions VALUES (12, 'Irene', 'Sertraline', '50 mg', '2024-10-12', '2024-11-12');
INSERT INTO Prescriptions VALUES (13, 'Jack', 'Gabapentin', '300 mg', '2024-10-13', '2024-11-13');
INSERT INTO Prescriptions VALUES (14, 'Kira', 'Escitalopram', '10 mg', '2024-10-14', '2024-11-14');
INSERT INTO Prescriptions VALUES (15, 'Leonard', 'Atenolol', '50 mg', '2024-10-15', '2024-11-15');
INSERT INTO Prescriptions VALUES (16, 'Monica', 'Duloxetine', '30 mg', '2024-10-16', '2024-11-16');
INSERT INTO Prescriptions VALUES (17, 'Nina', 'Bupropion', '150 mg', '2024-10-17', '2024-11-17');
INSERT INTO Prescriptions VALUES (18, 'Oscar', 'Citalopram', '20 mg', '2024-10-18', '2024-11-18');
INSERT INTO Prescriptions VALUES (19, 'Penny', 'Tramadol', '50 mg', '2024-10-19', '2024-11-19');
INSERT INTO Prescriptions VALUES (20, 'Quinn', 'Fentanyl', '25 mcg/hour', '2024-10-20', '2024-11-20');
INSERT INTO Prescriptions VALUES (21, 'Randy', 'Lyrica', '75 mg', '2024-10-21', '2024-11-21');
INSERT INTO Prescriptions VALUES (22, 'Samantha', 'Metoclopramide', '10 mg', '2024-10-22', '2024-11-22');
INSERT INTO Prescriptions VALUES (23, 'Tommy', 'Amoxicillin', '500 mg', '2024-10-23', '2024-11-23');
INSERT INTO Prescriptions VALUES (24, 'Uma', 'Azithromycin', '250 mg', '2024-10-24', '2024-11-24');
INSERT INTO Prescriptions VALUES (25, 'Vince', 'Clindamycin', '300 mg', '2024-10-25', '2024-11-25');
INSERT INTO Prescriptions VALUES (26, 'Will', 'Cephalexin', '500 mg', '2024-10-26', '2024-11-26');
INSERT INTO Prescriptions VALUES (27, 'Xena', 'Vancomycin', '1 g', '2024-10-27', '2024-11-27');
INSERT INTO Prescriptions VALUES (28, 'Yoda', 'Dexamethasone', '4 mg', '2024-10-28', '2024-11-28');
INSERT INTO Prescriptions VALUES (29, 'Zoe', 'Prednisone', '10 mg', '2024-10-29', '2024-11-29');
INSERT INTO Prescriptions VALUES (30, 'Adam', 'Levothyroxine', '75 mcg', '2024-10-30', '2024-11-30');
INSERT INTO Prescriptions VALUES (31, 'Bella', 'Sildenafil', '20 mg', '2024-10-31', '2024-11-30');
INSERT INTO Prescriptions VALUES (32, 'Chad', 'Tadalafil', '10 mg', '2024-11-01', '2024-11-30');
INSERT INTO Prescriptions VALUES (33, 'Daisy', 'Finasteride', '1 mg', '2024-11-02', '2024-11-30');
INSERT INTO Prescriptions VALUES (34, 'Ethan', 'Ranitidine', '150 mg', '2024-11-03', '2024-11-30');
INSERT INTO Prescriptions VALUES (35, 'Felicity', 'Omeprazole', '20 mg', '2024-11-04', '2024-11-30');
INSERT INTO Prescriptions VALUES (36, 'Gina', 'Aspirin', '81 mg', '2024-11-05', '2024-11-30');
INSERT INTO Prescriptions VALUES (37, 'Hugo', 'Ibuprofen', '200 mg', '2024-11-06', '2024-11-30');
INSERT INTO Prescriptions VALUES (38, 'Ivy', 'Naproxen', '250 mg', '2024-11-07', '2024-11-30');
INSERT INTO Prescriptions VALUES (39, 'Jake', 'Acetaminophen', '500 mg', '2024-11-08', '2024-11-30');
INSERT INTO Prescriptions VALUES (40, 'Kylie', 'Diazepam', '5 mg', '2024-11-09', '2024-11-30');
INSERT INTO Prescriptions VALUES (41, 'Leo', 'Lorazepam', '1 mg', '2024-11-10', '2024-11-30');
INSERT INTO Prescriptions VALUES (42, 'Maya', 'Clonazepam', '0.5 mg', '2024-11-11', '2024-11-30');
INSERT INTO Prescriptions VALUES (43, 'Nate', 'Hydroxyzine', '25 mg', '2024-11-12', '2024-11-30');
INSERT INTO Prescriptions VALUES (44, 'Olivia', 'Melatonin', '5 mg', '2024-11-13', '2024-11-30');
INSERT INTO Prescriptions VALUES (45, 'Paul', 'Folic Acid', '400 mcg', '2024-11-14', '2024-11-30');
INSERT INTO Prescriptions VALUES (46, 'Quincy', 'Vitamin D', '1000 IU', '2024-11-15', '2024-11-30');
INSERT INTO Prescriptions VALUES (47, 'Rachel', 'Vitamin B12', '500 mcg', '2024-11-16', '2024-11-30');
INSERT INTO Prescriptions VALUES (48, 'Steve', 'Calcium', '600 mg', '2024-11-17', '2024-11-30');
INSERT INTO Prescriptions VALUES (49, 'Tina', 'Iron', '65 mg', '2024-11-18', '2024-11-30');
INSERT INTO Prescriptions VALUES (50, 'Victor', 'Magnesium', '400 mg', '2024-11-19', '2024-11-30');


#Viewing the table
SELECT*
FROM Prescriptions;

#Updating our table
UPDATE Prescriptions
SET dosage= '15mg'
WHERE prescription_id = 44;


#viewing our table
SELECT*
FROM Prescriptions;

#Deleting from the table
DELETE FROM Prescriptions
WHERE Prescription_id =44;     

#Viewing the table
SELECT*
FROM Prescriptions;        

