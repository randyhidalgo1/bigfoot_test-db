USE employees;

SELECT first_name, last_name, hire_date
FROM employees WHERE emp_no = 10001;

SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE hire_date = '1986-06-26'
);

SELECT * FROM employees
WHERE first_name = 'Aamod';

SELECT first_name, title
FROM employees
JOIN titles
WHERE first_name = 'Aamod'
AND employees.emp_no = titles.emp_no
ORDER BY title DESC;

# BONUS#1:
SELECT dept_name
FROM departments as d
JOIN dept_manager as dm ON dm.dept_no = d.dept_no
JOIN employees as e ON e.emp_no = dm.emp_no
WHERE gender = 'F' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# BONUS#2:
SELECT e.first_name, e.last_name
FROM employees
 JOIN employees e ON e.emp_no = employees.emp_no
 JOIN salaries s ON e.emp_no = s.emp_no
WHERE salary > 158000




