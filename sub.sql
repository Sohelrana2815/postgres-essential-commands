-- Active: 1748181214517@@127.0.0.1@5432@ph@public

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES

('John Doe','HR',60000,'2022-01-10'),
('Jane Smith','Marketing',65000,'2021-05-22'),
('Bob Johnson','Finance',70000,'2020-11-15'),
('Alice Williams','IT',72000,'2019-08-03'),
('David Lee','Sales',68000,'2020-03-18'),
('Sara Brown','Engineering Support',71000,'2021-09-28'),
('Mike Miller','Administration',60000,'2022-02-05'),
('Emily Davis','Research',80000,'2018-12-12'),
('Chris Wilson','Quality Assurance',69000,'2020-06-30'),
('Amy White','Health Checker',67000,'2021-11-09'),
('John Johnson','HR',62000,'2022-01-15'),
('Jessica Thompson','Marketing',66000,'2021-06-05'),
('Michael Harris','Finance',73000,'2020-11-25'),
('Emma Martinez','IT',75000,'2019-09-15'),
('James Taylor','Sales',69000,'2020-04-08'),
('Sophia Anderson','Engineering Support',72000,'2021-10-10'),
('William Jackson','Administration',61000,'2022-02-10'),
('Olivia Nelson','Research',82000,'2018-12-20'),
('Daniel White','Quality Assurance',70000,'2020-07-05'),
('Ava Wilson','Health Checker',68000,'2021-11-15'),
('Matthew Brown','HR',63000,'2022-01-20'),
('Emily Garcia','Marketing',67000,'2021-06-15'),
('Christopher Allen','Finance',74000,'2020-12-05'),
('Madison Hall','IT',76000,'2019-09-25'),
('Andrew Cook','Sales',70000,'2020-04-18'),
('Abigail Torres','Engineering Support',73000,'2021-10-20'),
('Ethan Murphy','Administration',62000,'2022-02-15'),
('Ella King','Research',83000,'2018-12-28'),
('Nathan Rivera','Quality Assurance',71000,'2020-07-15'),
('Mia Roberts','Health Checker',69000,'2021-11-20');

SELECT * FROM employees;

-- Retrieve all employees whose salary is grater than the highest salary of the HR department

SELECT max(salary) as highest_salary FROM employees WHERE department_name = 'HR'; 


SELECT * FROM employees WHERE salary > (SELECT max(salary) as highest_salary FROM employees WHERE department_name = 'HR')

-- Can return a single value
-- Can return multiple rows
-- Can return single column

-- We can use subquery

SELECT -- We need to use those subquery which are return single value
FROM
WHERE
-- more...

SELECT *, (SELECT sum(salary) as sum_of_all_employees_salary FROM employees) FROM employees


-- Find sum of every department employees salary

(SELECT department_name, sum(salary) FROM employees GROUP BY department_name)

SELECT * FROM  -- Outer query / main query
(SELECT department_name, sum(salary)FROM employees GROUP BY department_name);


SELECT * FROM employees 
WHERE 
salary > (SELECT max(salary) FROM employees WHERE department_name = 'HR')

SELECT employee_name, salary, department_name
FROM employees
WHERE department_name IN
(SELECT department_name FROM employees WHERE department_name LIKE '%R%')

SELECT department_name FROM employees WHERE department_name LIKE '%R%'


-- Make a view

CREATE VIEW test_view
AS
SELECT employee_name, salary, department_name
FROM employees
WHERE department_name IN
(SELECT department_name FROM employees WHERE department_name LIKE '%R%')


SELECT * FROM test_view