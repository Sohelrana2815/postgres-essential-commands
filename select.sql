CREATE TABLE students ( student_id SERIAL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, age INT, grade CHAR(2), course VARCHAR(50), email VARCHAR(100), dob DATE, blood_group VARCHAR(5), country VARCHAR(50) );
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES ('Alice', 'Smith', 21, 'B', 'Computer Science', 'alice.smith@example.com', '2004-05-19', 'B+', 'Canada'), ('Bob', 'Johnson', 20, 'A+', 'Chemistry', 'bob.johnson@example.com', '2005-01-27', 'O-', 'China'), ('Charlie', 'Williams', 23, 'C+', 'English', 'charlie.williams@example.com', '2002-04-08', 'AB+', 'USA'), ('David', 'Brown', 24, 'B+', 'Sociology', 'david.brown@example.com', '2001-08-12', 'A-', 'Brazil'), ('Emily', 'Jones', 22, 'A', 'History', 'emily.jones@example.com', '2003-07-11', 'B+', 'UK'), ('Fiona', 'Garcia', 23, 'B+', 'Physics', 'fiona.garcia@example.com', '2002-05-22', 'O-', 'Japan'), ('George', 'Miller', 22, 'C', 'Economics', 'george.miller@example.com', '2003-06-27', 'B+', 'France'), ('Hannah', 'Davis', 24, 'C+', 'Biology', 'hannah.davis@example.com', '2001-04-09', 'A+', 'Germany'), ('Isaac', 'Rodriguez', 20, 'A', 'Mathematics', 'isaac.rodriguez@example.com', '2005-03-04', 'O+', 'Australia'), ('Jane', 'Wilson', 20, 'D', 'Computer Science', 'jane.wilson@example.com', '2005-08-07', 'AB-', 'India')
SELECT  *
FROM students;
-- SELECT or view a column
WITH different name 
SELECT  email AS "Student Email"
FROM students;
-- See specific column data IN sorted way 
SELECT  *
FROM students
ORDER BY age ASC