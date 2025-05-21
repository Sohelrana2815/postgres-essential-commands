CREATE TABLE students ( student_id SERIAL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, age INT, grade CHAR(2), course VARCHAR(50), email VARCHAR(100), dob DATE, blood_group VARCHAR(5), country VARCHAR(50) );
INSERT INTO students
  (first_name, last_name, age, grade, course,
   email,
   dob, blood_group, country)
VALUES
  ('Jack',     'Kane',      21, 'B', 'Biology',
   'alice.jack@example.com',
   '2004-05-19', 'B+', 'USA'
  ),
  ('John',     'Smith',     22, 'A', 'Chemistry',
   'john.smith@example.com',
   '2003-08-11', 'O+', 'Canada'
  ),
  ('Mary',     'Johnson',   20, 'C', 'Mathematics',
   NULL,
   '2005-02-23', 'A−', 'UK'
  ),
  ('Michael',  'Brown',     23, 'B', 'Physics',
   'michael.brown@example.org',
   '2002-12-05', 'AB+', 'Australia'
  ),
  ('Linda',    'Davis',     19, 'A', 'English',
   NULL,
   '2006-04-17', 'B−', 'USA'
  ),
  ('David',    'Wilson',    21, 'B', 'History',
   'david.wilson@example.co',
   '2004-09-29', 'O−', 'USA'
  ),
  ('Susan',    'Miller',    22, 'C', 'Geography',
   NULL,
   '2003-07-13', 'A+', 'Canada'
  ),
  ('Robert',   'Moore',     20, 'A', 'Art',
   'robert.moore@example.net',
   '2005-01-30', 'AB−', 'UK'
  ),
  ('Jennifer', 'Taylor',    23, 'B', 'Music',
   'jennifer.taylor@example.edu',
   '2002-11-21', 'B+', 'Australia'
  ),
  ('William',  'Anderson',  21, 'A', 'Computer Science',
   'william.anderson@example.us',
   '2004-06-08', 'O+', 'USA'
  );


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
SELECT  *
FROM students
WHERE country = 'USA';
-- Grade 
AND subject AS well for student
SELECT  *
FROM students
WHERE grade = 'A'
AND course = 'History';

SELECT  upper(first_name)
       ,*
FROM students;

SELECT  upper(first_name) AS first_name_in_upper_case
       ,*
FROM students; TRUNCATE TABLE students;

ALTER TABLE students drop column email;

ALTER TABLE students add email varchar(100);


select * from students;

select * from students

         WHERE email Is NOT NULL;

SELECT *, COALESCE(email, 'email not provided') AS email_display
FROM students;;


