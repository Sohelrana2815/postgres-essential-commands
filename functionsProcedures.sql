  
  /*

               @PROCEDURAL Approach

 1. Language support: Support procedural languages like PL/pgSQL, PL/Perl, PL/Python, etc.
 2. Complex Logic: Allows for complex logic using control structures like loops, conditionals, and exception handling.
 3. Variables support: Support variable declarations and manipulation within the procedural code.
 4. Stored Procedures/Functions: Provides the ability to create stored procedures or functions,




                @Non-PROCEDURAL Approach

1. Declarative queries: Focuses on within declarative SQL queries to retrieve, insert, update, or delete data from the database.
2. Simplicity: Emphasizes simplicity by expressing operations in terms of what data is needed.
3. SQL Functions: Support SQL functions, which are single SQL Segments that return a value or set of value
4. Performance: Can sometimes offer batter performance for simple operations due to the optimized query execution plans generated by the database engine.
  
  
  
  */


SELECT * FROM employees;

SELECT count(*) FROM employees

CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employees;
$$

SELECT * FROM emp_count();


CREATE FUNCTION delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
   DELETE FROM employees WHERE employee_id = 30;
$$


SELECT delete_emp();


-- DELETE EMPLOYEE BY_ID USING PARAMETER
CREATE FUNCTION delete_emp_by_id (p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = p_emp_id;
$$


SELECT delete_emp_by_id(29)