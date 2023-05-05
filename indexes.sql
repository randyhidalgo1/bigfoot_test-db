USE employees;

# BASIC JOIN
SELECT CONCAT (employees.first_name, ' ', employees.last_name) AS name, salaries.salary AS salary
FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no;

INSERT INTO role (name) VALUES ('bot')

SELECT users.user_name, roles.name FROM users JOIN roles ON users.role_id = roles.id;

SELECT users.user_name, roles.name FROM users LEFT JOIN roles ON users.role_id = roles.id;

CREATE TABLE user_albums (
    user_id INT NOT NULL,
    album_id INT NOT NULL,
    CONSTRAINT user_albums_pk FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT user_albums_pk FOREIGN KEY (album_id) REFERENCES albums(id),
);

