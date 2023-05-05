USE employees;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm ON dm.dept_no = d.dept_no
         JOIN employees as e ON e.emp_no = dm.emp_no
         WHERE dm.to_date = '9999-01-01'
        ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm ON dm.dept_no = d.dept_no
         JOIN employees as e ON e.emp_no = dm.emp_no
         WHERE gender = 'F' AND dm.to_date = '9999-01-01'
        ORDER BY d.dept_name;

SELECT t.title, COUNT(t.title) AS Total
FROM employees e
         JOIN dept_emp de ON de.emp_no = e.emp_no
         JOIN departments d ON d.dept_no = de.dept_no
         JOIN titles t ON t.emp_no = e.emp_no
         WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01' AND t.to_date LIKE '9%'
         GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', salary AS 'Salary'
FROM departments as d
         JOIN dept_manager as dm ON dm.dept_no = d.dept_no
         JOIN employees as e ON e.emp_no = dm.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
         WHERE CURDATE() BETWEEN dm.from_date AND dm.to_date AND CURDATE() BETWEEN s.from_date AND s.to_date
         ORDER BY d.dept_name;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee',
       d.dept_name AS 'Department Name',
       CONCAT(e2.first_name, ' ', e2.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e2 ON e2.emp_no = dm.emp_no
         WHERE de.from_date
         AND dm.to_date
         ORDER BY dept_name, e.emp_no;








