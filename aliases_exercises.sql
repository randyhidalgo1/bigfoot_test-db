USE employees;

SELECT CONCAT(emp_no, ' - ',last_name, ', ', first_name, '      |', birth_date) AS 'full_name                 | DOB ' FROM employees LIMIT 10;

