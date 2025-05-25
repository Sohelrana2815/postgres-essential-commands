CREATE TABLE students2 (student_id SERIAL PRIMARY KEY, name VARCHAR(50), age INT, course VARCHAR(50), country VARCHAR(30), email VARCHAR(100) UNIQUE, blood_group VARCHAR (5), grade VARCHAR(5), dob DATE);


INSERT INTO students2 (name, age,course,country,email,blood_group,grade,dob)
VALUES
('Alice Johnson', 21, 'Biology', 'USA', 'alice.johnson@example.com', 'A+', 'A', '2004-03-15'),
('Bob Smith', 22, 'Chemistry', 'Canada', 'bob.smith@example.com', 'B+', 'B', '2003-07-22'),
('Charlie Brown', 20, 'Physics', 'UK', NULL, 'O-', 'C', '2005-01-10'),
('Diana Prince', 23, 'Mathematics', 'Australia', 'diana.prince@example.com', 'AB+', 'A', '2002-11-05'),
('Ethan Hunt', 21, 'History', 'USA', NULL, 'A-', 'B', '2004-06-18'),
('Fiona Gallagher', 22, 'English', 'Canada', 'fiona.gallagher@example.com', 'B-', 'C', '2003-09-30'),
('George Miller', 20, 'Art', 'UK', 'george.miller@example.com', 'O+', 'B', '2005-04-12'),
('Hannah Lee', 23, 'Music', 'Australia', NULL, 'AB-', 'A', '2002-12-25'),
('Ian Wright', 21, 'Computer Science', 'USA', 'ian.wright@example.com', 'A+', 'A', '2004-02-14'),
('Julia Roberts', 22, 'Geography', 'Canada', NULL, 'B+', 'B', '2003-08-19'),
('Kevin Durant', 20, 'Biology', 'UK', 'kevin.durant@example.com', 'O-', 'C', '2005-03-08'),
('Laura Palmer', 23, 'Chemistry', 'Australia', 'laura.palmer@example.com', 'AB+', 'B', '2002-10-17'),
('Mike Ross', 21, 'Physics', 'USA', NULL, 'A-', 'A', '2004-05-23'),
('Nina Dobrev', 22, 'Mathematics', 'Canada', 'nina.dobrev@example.com', 'B-', 'C', '2003-11-11'),
('Oscar Isaac', 19, 'History', 'UK', 'oscar.isaac@example.com', 'O+', 'B', '2005-06-27'),
('Paula Patton', 23, 'English', 'Australia', NULL, 'AB-', 'A', '2002-09-03'),
('Quentin Blake', 21, 'Art', 'USA', 'quentin.blake@example.com', 'A+', 'B', '2004-07-29'),
('Rachel Green', 22, 'Music', 'Canada', 'rachel.green@example.com', 'B+', 'C', '2003-12-15'),
('Steve Rogers', 20, 'Computer Science', 'UK', NULL, 'O-', 'A', '2005-02-20'),
('Tina Fey', 23, 'Geography', 'Australia', 'tina.fey@example.com', 'AB+', 'B', '2002-08-07');








SELECT  *
FROM students2;


SELECT country,count(*) from students2 
GROUP BY country;

SELECT country, count(*) from students2
         GROUP BY country;
select country,  avg(age) from students2
GROUP BY country
HAVING avg(age)>20
  

-- count students born in Each year
SELECT extract(year from dob) as birth_year, count(*)
FROM students2
GROUP BY birth_year;



-- SELECT * FROM POST 
-- WHERE user_id = 4;


