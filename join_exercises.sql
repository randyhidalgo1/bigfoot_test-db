USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de ON de.emp_no = e.emp_no
         JOIN departments as d ON d.dept_no = de.dept_no
         WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm ON dm.dept_no = d.dept_no
         JOIN employees as e ON e.emp_no = dm.emp_no
         WHERE dm.to_date = '9999-01-01';

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm ON dm.dept_no = d.dept_no
         JOIN employees as e ON e.emp_no = dm.emp_no
         WHERE gender = 'F' AND dm.to_date = '9999-01-01';

SELECT t.title, COUNT(t.title) AS Total
FROM employees e
         JOIN dept_emp de ON de.emp_no = e.emp_no
         JOIN departments d ON d.dept_no = de.dept_no
         JOIN titles t ON t.emp_no = e.emp_no
         WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01'
         GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', salary AS 'Salary'
FROM departments as d
         JOIN dept_manager as dm ON dm.dept_no = d.dept_no
         JOIN employees as e ON e.emp_no = dm.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
         WHERE CURDATE() BETWEEN dm.from_date AND dm.to_date AND CURDATE() BETWEEN s.from_date AND s.to_date;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
       d.dept_name AS 'Department Name',
       CONCAT(m.first_name, ' ', m.last_name) AS 'Manager Name'
FROM departments AS d
         JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
         JOIN employees AS m ON dm.emp_no = m.emp_no
         JOIN dept_emp AS de ON de.emp_no = m.emp_no
         JOIN employees AS e ON e.emp_no = de.emp_no
WHERE CURDATE() BETWEEN dm.from_date AND dm.to_date;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
         JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
         JOIN employees AS e ON e.emp_no = dm.emp_no
         JOIN dept_emp AS de ON de.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
         WHERE CURDATE() BETWEEN dm.from_date AND dm.to_date;








