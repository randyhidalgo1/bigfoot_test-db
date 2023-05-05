USE employees;

SELECT emp_no FROM employees.dept_manager;

SELECT birth_date FROM employees
WHERE EMP_NO IN(110022, 110039,110085,110114,110183,110228,110303,110344,110386,110420,110511,110567,110725,110765,110800,110854,111035,111133,111400,111534,111692,111784,111877,111939);

SELECT birth_date FROM employees
WHERE emp_no IN(SELECT emp_no FROM employees.dept_manager);

USE bigfoot_test_db;

INSERT INTO users_albums (user_id, album_id) VALUES (
(SELECT id FROM users WHERE username= ' lisa _green'),
(SELECT id FROM albums WHERE artist = 'Madonna'AND 'The Immaculate Collection')
                     );
