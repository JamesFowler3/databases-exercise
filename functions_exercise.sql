USE employees;
-- SELECT first_name FROM employees
-- WHERE first_name IN ('Irena', 'Vidya', 'Maya')
-- ORDER BY last_name , first_name;


SELECT CONCAT(last_name , ' ' , last_name) FROM employees
WHERE last_name LIKE 'e%e'
AND first_name LIKE 'e%e'
ORDER BY emp_no DESC;

--
-- SELECT first_name, last_name FROM employees
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-30';
--
SELECT *, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25'
  ORDER BY birth_date, hire_date DESC
-- --
-- SELECT * FROM employees
-- WHERE last_name LIKE '%q%';
