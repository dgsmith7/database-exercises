USE employees;
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 5;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 5;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 5;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 5;