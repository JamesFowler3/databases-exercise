USE employees;

-- SELECT DISTINCT title FROM titles;
--
--
-- SELECT last_name, first_name FROM employees
-- WHERE last_name LIKE 'e%e'
-- GROUP BY first_name, last_name;
--
-- SELECT last_name, COUNT(last_name)
-- FROM employees
-- WHERE last_name LIKE '%q%'
-- AND last_name NOT LIKE '%qu%'
-- ORDER BY last_name;

 SELECT CONCAT(COUNT(first_name),' ', gender)
 FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY  gender;

    INSERT INTO users (name, email, role_id) VALUES
('jim', 'jim@example.com', 2),
('harry', 'harry@example.com', 2),
('ron', 'ron@example.com', 2),
('bill', 'bill@example.com', NULL);
