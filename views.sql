SELECT * FROM employees;

CREATE View dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees GROUP BY department_name;

SELECT * FROM dept_avg_salary

-- Why we need view

-- Simplifying complex query
-- Improved security
-- Enhanced data abstraction

