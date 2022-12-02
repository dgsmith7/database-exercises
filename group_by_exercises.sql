USE employees;
SELECT title FROM titles GROUP BY title;
SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' GROUP BY last_name;
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' GROUP BY first_name, last_name;
SELECT last_name FROM employees WHERE (last_name LIKE 'Q%' OR last_name LIKE '%q%' OR last_name LIKE '%q') AND NOT (last_name LIKE 'Qu%' OR last_name LIKE '%qu%' OR last_name LIKE '%qu') GROUP BY last_name;

SELECT COUNT(last_name), last_name
FROM employees
WHERE (last_name LIKE 'Q%' OR last_name LIKE '%q%' OR last_name LIKE '%q') AND NOT (last_name LIKE 'Qu%' OR last_name LIKE '%qu%' OR last_name LIKE '%qu')
GROUP BY last_name
ORDER BY COUNT(last_name);

SELECT COUNT(gender), gender FROM employees WHERE first_name IN ('Irena') OR first_name IN ('Vidya') OR first_name IN ('Maya') GROUP BY gender;
