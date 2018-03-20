USE employees;
-- SELECT DISTINCT last_name FROM employees
-- WHERE last_name LIKE 'z%'
-- ORDER BY last_name DESC
-- LIMIT 10;

SELECT * FROM employees
WHERE birth_date LIKE '%12-25%'
LIMIT 5;