-- Problem 1.
-- SELECT first_name, last_name FROM employees
-- WHERE LEFT(first_name, 2) = 'SA'

-- Problem 2
-- SELECT first_name , last_name FROM employees
-- WHERE last_name LIKE '%ei%';

-- Problem 3
-- SELECT first_name FROM employees
-- WHERE department_id IN(3,10)
-- AND YEAR(hire_date) BETWEEN 1995 AND 2005;

-- Problem 4
-- SELECT first_name, last_name FROM employees
-- WHERE job_title NOT LIKE '%engineer%';

-- Problem 5
-- SELECT name FROM towns
-- WHERE LENGTH(name) IN (5,6)
-- ORDER BY name

-- Problem 6
-- SELECT town_id, name FROM towns
-- WHERE LEFT(name, 1) IN('M', 'K', 'B', 'E')
-- ORDER BY name

-- Problem 7
-- SELECT town_id, name FROM towns
-- WHERE LEFT(name, 1) NOT IN('R', 'B', 'D')
-- ORDER BY name;

-- Problem 8
-- CREATE VIEW v_employees_hired_after_2000 AS
-- SELECT first_name, last_name FROM employees
-- WHERE YEAR(hire_date) > 2000

-- Problem 9
-- SELECT first_name, last_name FROM employees
-- WHERE LENGTH(last_name) = 5;

-- Problem 10
