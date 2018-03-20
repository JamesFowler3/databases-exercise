USE employees;
SELECT first_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name , first_name;


SELECT last_name FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;
--
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-30';
--
-- SELECT * FROM employees
-- WHERE birth_date LIKE '%12-25%';
-- --
-- SELECT * FROM employees
-- WHERE last_name LIKE '%q%';
