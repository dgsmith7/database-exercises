USE employees;

-- SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
-- FROM departments AS d
--     JOIN dept_manager AS dm
--         ON dm.dept_no = d.dept_no
--     JOIN employees AS e
--         ON dm.emp_no = e.emp_no
-- WHERE dm.to_date = '9999-01-01'
-- ORDER BY d.dept_name;
--
-- SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
-- FROM departments AS d
--          JOIN dept_manager AS dm
--               ON dm.dept_no = d.dept_no
--          JOIN employees AS e
--               ON dm.emp_no = e.emp_no
-- WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
-- ORDER BY d.dept_name;

-- SELECT t.title AS 'title', COUNT(t.title) AS 'Total'
-- FROM titles AS t
--          JOIN current_dept_emp AS cde
--         ON cde.emp_no = t.emp_no
-- WHERE cde.dept_no = 'd009' AND t.to_date = '9999-01-01'
-- GROUP BY t.title;

SELECT DISTINCT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments AS d
         JOIN dept_manager AS dm
              ON dm.dept_no = d.dept_no
         JOIN employees AS e
              ON dm.emp_no = e.emp_no
         JOIN salaries AS s
              ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
GROUP BY d.dept_name, CONCAT(e.first_name, ' ', e.last_name), s.salary
ORDER BY d.dept_name;
