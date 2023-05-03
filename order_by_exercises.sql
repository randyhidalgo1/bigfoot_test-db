USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;
SELECT * FROM employees WHERE last_name LIKE 'e%' ORDER BY emp_no ASC;
SELECT * FROM employees WHERE last_name LIKE 'e%' ORDER BY emp_no DESC;


SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' ) AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';















# SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date;
# SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 20;
# SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 20 OFFSET 30;


