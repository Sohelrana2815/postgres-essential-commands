DROP TABLE table_name;
CREATE TABLE IF NOT EXISTS table_name ( id INT PRIMARY KEY, name VARCHAR(255) );

CREATE TABLE students ( id SERIAL PRIMARY KEY, roll INT UNIQUE, name VARCHAR (50) , age INT, department VARCHAR (60), score NUMERIC, status VARCHAR(10), last_login DATE);
-- ALL STUDENTs DATA 
SELECT  *
FROM students;
--
-- INSERT DATA TO STUDENTS TABLE 


INSERT INTO students (roll, name, age, department, score, status, last_login)
VALUES (1, 'MD. Sohel Rana', 25, 'EEE',86.7,'passed','2024-10-2');

-- (2, 'Ayesha Siddiqua', 22, 'CSE', 88.5, 'passed', '2025-05-20'),
-- (3, 'Rahim Uddin', 23, 'EEE', 76.0, 'passed', '2025-05-18'),
-- (4, 'Fatema Khatun', 21, 'BBA', 65.5, 'passed', '2025-05-15'),
-- (5, 'Sakib Hasan', 24, 'CSE', 92.0, 'passed', '2025-05-21'),
-- (6, 'Nusrat Jahan', 22, 'EEE', 54.0, 'failed', '2025-05-10'),
-- (7, 'Imran Hossain', 25, 'BBA', 80.0, 'passed', '2025-05-19'),
-- (8, 'Tania Akter', 23, 'CSE', 70.5, 'passed', '2025-05-17'),
-- (9, 'Jamal Ahmed', 22, 'EEE', 60.0, 'passed', '2025-05-16'),
-- (10, 'Sadia Islam', 21, 'BBA', 85.0, 'passed', '2025-05-14'),
-- (11, 'Rashedul Islam', 24, 'CSE', 78.0, 'passed', '2025-05-13'),
-- (12, 'Mitu Rahman', 23, 'EEE', 49.5, 'failed', '2025-05-12'),
-- (13, 'Shuvo Chowdhury', 22, 'BBA', 67.0, 'passed', '2025-05-11'),
-- (14, 'Farhana Yasmin', 25, 'CSE', 90.0, 'passed', '2025-05-09'),
-- (15, 'Tanvir Alam', 21, 'EEE', 73.5, 'passed', '2025-05-08'),
-- (16, 'Priya Saha', 22, 'BBA', 82.0, 'passed', '2025-05-07'),
-- (17, 'Sabbir Rahman', 23, 'CSE', 58.0, 'failed', '2025-05-06'),
-- (18, 'Lamia Hossain', 24, 'EEE', 77.5, 'passed', '2025-05-05'),
-- (19, 'Rifat Karim', 22, 'BBA', 69.0, 'passed', '2025-05-04'),
-- (20, 'Sumaiya Akter', 21, 'CSE', 84.0, 'passed', '2025-05-03'),
-- (21, 'Hasan Mahmud', 23, 'EEE', 62.5, 'passed', '2025-05-02');



-- Table Alteration Tasks (Based on 8-1 to 8-3)

-- 1. Add a column email (VARCHAR) to the existing students table.


-- 2. Rename the column email to student_email.


-- 3. Add a UNIQUE constraint to student_email.


-- 4. Add a PRIMARY KEY to a new table named courses.


-- 5. Drop a column from any existing table.



ALTER TABLE students
      ADD email VARCHAR(100);



-- Rename a column

ALTER TABLE students
      RENAME COLUMN email TO student_email;



-- Add a UNIQUE constraint to student_email
ALTER TABLE students
      ADD CONSTRAINT unique_student_email UNIQUE(student_email); 



-- New courses table

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY
);

SELECT * FROM courses;


ALTER TABLE courses
      DROP COLUMN course_id;

ALTER TABLE courses
      ADD COLUMN course_id SERIAL PRIMARY KEY



--
( SELECT * FROM students WHERE score > 80)



SELECT * FROM students WHERE NOT department = 'CSE';

SELECT * FROM students 
        WHERE name LIKE  'A%';

SELECT * FROM students
         WHERE name ILIKE 'a%';




        



SELECT * FROM students 
         WHERE age BETWEEN 18 and 21;



-- Retrieve rows using IN for a specific set of roll numbers

SELECT * FROM students
WHERE roll IN (1,10,21,3);

-- Count all rows from students table

SELECT count(*) FROM students;


-- Find the average score of students in a specific department

SELECT AVG(score) AS average_score
FROM students
WHERE department = 'CSE';


-- GET MAX AND MIN AGE OF ALL STUDENTS

SELECT MIN(age) AS minimum_age
FROM students;



SELECT  MAX(age) AS max_age
FROM students;



-- Update & Delete Operations (Based on 8-9, 8-10)

UPDATE students
SET status = 'failed'
WHERE score < 60;



-- DELETE FROM students
-- WHERE last_login < CURRENT_DATE - INTERVAL '1 year';


-- Delete students who have not logged in since last 3 months.
DELETE FROM students
WHERE last_login < CURRENT_DATE - INTERVAL '6 months';


-- Use LIMIT and OFFSET to fetch second page of results (5 per page)


SELECT * FROM students LIMIT 5 OFFSET (5 * 1);