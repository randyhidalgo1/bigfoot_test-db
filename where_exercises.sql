USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' ) AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE first_name = 'Maya';

SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya';

SELECT DATEDIFF(NOW(), hire_date)/365 FROM employees LIMIT 50;

SELECT last_name, first_name FROM employees GROUP BY last_name;

SELECT COUNT(first_name) FROM employees;

SELECT last_name, COUNT(first_name) FROM employees GROUP BY last_name ORDER BY last_name;

SELECT gender, COUNT(first_name) FROM employees GROUP BY gender;

select datediff(hire_date, birth_date)/365 AS age, COUNT(first_name) FROM employees GROUP BY age;

SELECT MIN(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT AVG(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;










