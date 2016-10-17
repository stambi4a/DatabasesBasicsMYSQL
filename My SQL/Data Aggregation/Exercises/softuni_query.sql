-- Problem 13. Employees Minimum Salaries
-- SELECT department_id, MIN(salary) AS minimum_salary FROM employees
-- WHERE department_id IN(2, 5, 7)
-- AND hire_date > CAST('2000/01/01' AS DATE)
-- GROUP BY department_id

-- SELECT hire_date FROM employees
-- WHERE hire_date > CAST('2000/01/01' AS DATE)

-- Problem 14. Employees Average Salaries

-- CREATE TABLE emps
-- SELECT * FROM employees
-- WHERE salary > 30000;
-- 111
-- DELETE FROM emps
-- WHERE manager_id = 42;
-- 
-- UPDATE emps
-- SET salary = salary + 5000
-- where department_id = 1;
-- 
-- SELECT department_id, AVG(salary) AS average_salary FROM emps
-- GROUP BY department_id;

-- Problem 15. Employees Maximum Salaries
-- SELECT department_id, MAX(salary) AS max_salary FROM employees
-- GROUP BY department_id
-- HAVING MAX(salary) < 30000 OR MAX(salary) > 70000 

-- Problem 16. Employees Count Salaries
-- SELECT COUNT(employee_id) FROM employees
-- WHERE manager_id IS NULL

-- Problem 17. *3rd Highest Salary

-- SELECT emps.department_id,
-- (
-- SELECT DISTINCT(empls.salary)
-- FROM employees AS empls
-- WHERE empls.department_id = emps.department_id
-- ORDER BY salary DESC
-- LIMIT 2,1
-- ) as salary
-- FROM employees AS emps
-- GROUP BY emps.department_id
-- HAVING salary IS NOT NULL;
-- 
-- SELECT department_id, salary FROM employees
-- GROUP BY department_id, salary DESC

-- Problem 18. Salary Challenge
SELECT first_name, last_name, department_id
FROM employees empl
WHERE salary >
(SELECT AVG(salary) FROM employees
WHERE  department_id = empl.department_id)
-- GROUP BY first_name, last_name, department_id
ORDER BY department_id
LIMIT 10;

SELECT e.first_name,e.last_name,e.department_id
    FROM employees AS e , employees AS m
        WHERE e.department_id = m.department_id
        AND e.salary > (
                           SELECT avg(salary)  FROM employees
                           WHERE department_id = e.department_id
                            )
    GROUP BY e.first_name,e.last_name,e.department_id
    ORDER BY e.department_id
LIMIT 10;

select em.first_name, em.last_name, em.department_id
from employees as em
join
(select e.department_id, avg(e.salary) as avg_salary
from employees as e
group by e.department_id) as avg_salaries
on em.department_id = avg_salaries.department_id
where em.salary > avg_salaries.avg_salary
order by em.department_id
limit 10

-- SELECT first_name, last_name, salary, department_id FROM
-- SELECT first_name, last_name, salary, department_id
-- FROM employees empl
-- WHERE salary >
-- (SELECT AVG(salary) FROM employees
-- WHERE  department_id = empl.department_id)
-- ORDER BY department_id
-- LIMIT 10

-- SELeCT * FROM employees
-- WHERE department_id = 3