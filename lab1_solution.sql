-- ================================
-- Part A: DDL (Database & Tables)
-- ================================

-- 1. Create database
CREATE DATABASE CollegeDB;

-- 2. Use database
USE CollegeDB;

-- 3. Create Student table
CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

-- 4. Create Course table
CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(50),
    Credits INT
);

-- 5. Add City column to Student
ALTER TABLE Student
ADD City VARCHAR(30);

-- 6. Add Semester column to Student
ALTER TABLE Student
ADD Semester INT;

-- 7. Rename Phone to MobileNo
ALTER TABLE Student
RENAME COLUMN Phone TO MobileNo;

-- 8. Drop Course table
DROP TABLE Course;



-- ================================
-- Part B: DML (Insert / Select / Update / Delete)
-- ================================

-- 9. Insert 5 records into Student
INSERT INTO Student VALUES
(101, 'priya', 'CSE', 20, '9876543278', 'Delhi', 5),
(102, 'riya', 'ECE', 21, '9123456779', 'Patna', 5),
(103, 'sita', 'CSE', 19, '9988776645', 'Ranchi', 2),
(104, 'Anamika', 'ME', 22, '8899776621', 'Bhopal', 5),
(105, 'gita', 'CSE', 23, '7766554432', 'Kolkata', 6);

-- 10. Display all records
SELECT * FROM Student;

-- 11. Display RollNo and Name only
SELECT RollNo, Name FROM Student;

-- 12. Display students from CSE department
SELECT * FROM Student
WHERE Dept = 'CSE';

-- 13. Display students with age > 20
SELECT * FROM Student
WHERE Age > 20;

-- 14. Update department of RollNo = 101 to ECE
UPDATE Student
SET Dept = 'ECE'
WHERE RollNo = 101;

-- 15. Update city of Rahul to Patna
UPDATE Student
SET City = 'Patna'
WHERE Name = 'riya';

-- 16. Increase age of all students by 1
UPDATE Student
SET Age = Age + 1;

-- 17. Delete student with RollNo = 105
DELETE FROM Student
WHERE RollNo = 105;

-- 18. Delete all records from Student (table remains)
DELETE FROM Student;

