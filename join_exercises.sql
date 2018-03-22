USE employees;

-- SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
-- FROM departments AS d
-- JOIN dept_manager AS dm
-- ON dm.dept_no = d.dept_no
-- JOIN employees AS e
-- ON e.emp_no = dm.emp_no
-- WHERE dm.to_date = '9999-01-01'
-- ORDER BY d.dept_name;

-- SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
-- FROM departments AS d
-- JOIN dept_manager AS dm
-- ON dm.dept_no = d.dept_no
-- JOIN employees AS e
-- ON e.emp_no = dm.emp_no
-- WHERE dm.to_date = '9999-01-01'
-- AND e.gender = 'F'
-- ORDER BY d.dept_name;

-- SELECT t.title, COUNT(*) AS Count
-- FROM titles AS t
-- JOIN employees AS e
-- ON e.emp_no = t.emp_no
-- JOIN dept_emp AS de
-- ON de.emp_no = t.emp_no
-- JOIN departments AS d
-- ON d.dept_no = de.dept_no
-- WHERE t.to_date = '9999-01-01'
-- AND de.to_date = '9999-01-01'
-- AND d.dept_name = 'Customer Service'
-- GROUP BY title;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name , salariesn AS Salary
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT title FROM title
WHERE emp_no = (
SELECT emp_no FROM employees
WHERE first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
SELECT emp_no FROM dept_manager
WHERE to_date > CURDATE()
AND gender = 'F');








