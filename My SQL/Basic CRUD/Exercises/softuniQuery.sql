-- Problem 01. Find All information about departments
-- SELECT * FROM departments

-- Problem 02. Find all Department Names
-- SELECT name FROM Departments

-- Problem 03. Find salary of each employee
-- SELECT first_name, last_name, salary  FROM employees

-- Problem 04.Find Full name
-- SELECT first_name, middle_name, last_name FROM employees

-- Problem 05.Find email
-- SELECT CONCAT(first_name,'.', last_name,'@softuni.bg') as Full_email_address FROM employees

-- Problem 06. Find all different employee salaries
-- SELECT DISTINCT(salary) FROM employees

-- Problem 07.Find all information about the employees
-- SELECT * FROM employees
-- WHERE job_title = 'Sales Representative'

-- Problem 08. Find Names of All employees by salary in range.
-- SELECT first_name, last_name, job_title FROM employees
-- WHERE salary BETWEEN 20000 AND 30000;

-- Problem 09. Find names of all employees
-- SELECT CONCAT(first_name,' ', middle_name,' ', last_name) AS full_name FROM employees
-- WHERE salary in (12500, 14000, 23600, 25000);

-- Problem 10. Find all employees without manager
-- SELECT first_name, last_name FROM employees
-- WHERE manager_id IS NULL;

-- Problem 11. Find all employees with salary more than
-- SELECT first_name, last_name, salary FROM employees
-- WHERE salary > 50000
-- ORDER BY salary DESC;

-- Problem 12. Find 5 best paid employees
-- SELECT first_name, last_name FROM employees
-- ORDER BY salary DESC
-- LIMIT 5;

-- Problem 13.Find all employees except marketing
-- SELECT first_name, last_name FROM employees
-- where department_id != 4;

-- Problem 14. Sort employees table
-- SELECT * FROM employees
-- ORDER BY salary DESC, first_name ASC, last_name DESC, middle_name ASC;

-- Problem 15. Create view employees with salaries
-- CREATE VIEW v_employees_salaries AS
-- SELECT first_name, last_name, salary FROM employees;
-- SELECT * FROM v_employees_salaries;
-- 
-- Problem 16. Create view employees with job titles

-- DROP VIEW
-- v_employees_job_titles;

-- CREATE VIEW v_employees_job_titles AS
-- SELECT CONCAT(first_name,' ', IFNULL(middle_name, ''), ' ', last_name) as full_name, job_title
-- FROM employees;
-- --
-- SELECT * FROM v_employees_job_titles;

-- Problem 17. Find all distiinct job titles
-- SELECT DISTINCT(job_title) as job_title FROM employees

-- Problem 18. Find first 10 started projects
-- SELECT * FROM projects
-- ORDER BY start_date ASC, name ASC
-- LIMIT 10;

-- Problem 19. Find last 7 hired employees
-- SELECT first_name, last_name, hire_date FROM employees
-- ORDER BY hire_date DESC
-- LIMIT 7;

-- Problem 20. Increase salaries
-- ALTER TABLE employees
-- ADD copy DECIMAL;
-- UPDATE employees
-- SET copy = salary;

UPDATE employees
SET salary = salary * 1.12
WHERE department_id IN(1,2,4,11);
SELECT salary FROM employees;

-- Problem 22. 




