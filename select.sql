CREATE TABLE students ( student_id SERIAL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, age INT, grade CHAR(2), course VARCHAR(50), email VARCHAR(100), dob DATE, blood_group VARCHAR(5), country VARCHAR(50) );
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES ('Jack', 'Kane', 21, 'B', 'Biology', 'alice.jack@example.com', '2004-05-19', 'B+', 'USA');

SELECT  *
FROM students;
-- SELECT or view a column 
WITH different name
SELECT  email AS "Student Email"
FROM students;
-- See specific column data IN sorted way 
SELECT  *
FROM students
ORDER BY dob DESC
SELECT  country
FROM students;

SELECT  DISTINCT country
FROM students;

SELECT  DISTINCT blood_group
FROM students;
-- data filtering 
-- SELECT students 
SELECT  * FROM students
           WHERE country = 'USA';


-- Grade and subject as well for student

SELECT * FROM students
      WHERE grade ='A' AND course='History';



select upper(first_name), * from students;

select upper(first_name) as first_name_in_upper_case, * from students;


select concat(first_name, ' ',last_name) from students;

