USE employees;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT COUNT(*) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE last_name LIKE 'E%';
SELECT COUNT(*) FROM employees WHERE last_name LIKE 'E%';
SELECT * FROM employees WHERE last_name LIKE 'q%' OR last_name LIKE '%q%' OR last_name LIKE '%q';
SELECT COUNT(*) FROM employees WHERE last_name LIKE 'q%' OR last_name LIKE '%q%' OR last_name LIKE '%q';