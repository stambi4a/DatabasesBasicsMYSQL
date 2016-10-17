-- Problem 01. Records Count
-- SELECT COUNT(id) as count from wizzard_deposits;

-- Problem 02. Longest Magic Wand
-- SELECT MAX(magic_wand_size) as longest_magic_wand from wizzard_deposits;

-- Problem 3. Longest Magic Wand per Deposit Groups
-- SELECT deposit_group, MAX(magic_wand_size) as longest_magic_wand FROM wizzard_deposits
-- GROUP BY deposit_group;

-- Problem 4. * Smallest Deposit Group per Magic Wand Size
-- SELECT deposit_group FROM (
-- SELECT deposit_group, AVG(magic_wand_size) AS avg from wizzard_deposits
-- GROUP BY deposit_group
-- ORDER BY avg) as table1
-- LIMIT 1;

-- Problem 5. Deposits Sum
-- SELECT deposit_group, SUM(deposit_amount) as total_sum FROM wizzard_deposits
-- GROUP BY deposit_group;

-- Problem 6. Deposits Sum for Ollivander family
-- SELECT deposit_group, SUM(deposit_amount) as total_sum FROM wizzard_deposits
-- WHERE magic_wand_creator = 'Ollivander family'
-- GROUP BY deposit_group;

-- Problem 7. Deposits Filter
-- SELECT deposit_group, SUM(deposit_amount) as total_sum FROM wizzard_deposits
-- WHERE magic_wand_creator = 'Ollivander family'
-- GROUP BY deposit_group
-- HAVING total_sum < 150000
-- ORDER BY total_sum DESC

-- Problem 8. Deposit charge
-- SELECT deposit_group, magic_wand_creator, MIN(deposit_charge) AS min_deposit_charge FROM wizzard_deposits
-- GROUP BY deposit_group, magic_wand_creator
-- ORDER BY magic_wand_creator, deposit_group

-- Problem 9. Age Groups
-- SELECT
-- CASE
-- WHEN age BETWEEN 0 AND 10 THEN '[0-10]'
-- WHEN age BETWEEN 11 AND 20 THEN "[11-20]"
-- WHEN age BETWEEN 21 AND 30 THEN "[21-30]"
-- WHEN age BETWEEN 31 AND 40 THEN "[31-40]"
-- WHEN age BETWEEN 41 AND 50 THEN "[41-50]"
-- WHEN age BETWEEN 51 AND 60 THEN "[51-60]"
-- ELSE "[61+]" END AS age_group, COUNT(age) AS wizard_count FROM wizzard_deposits
-- GROUP BY
-- CASE
-- WHEN age BETWEEN 0 AND 10 THEN '[0-10]'
-- WHEN age BETWEEN 11 AND 20 THEN "[11-20]"
-- WHEN age BETWEEN 21 AND 30 THEN "[21-30]"
-- WHEN age BETWEEN 31 AND 40 THEN "[31-40]"
-- WHEN age BETWEEN 41 AND 50 THEN "[41-50]"
-- WHEN age BETWEEN 51 AND 60 THEN "[51-60]"
-- ELSE "[61+]" END 

-- Problem 10. First Letter
-- SELECT DISTINCT(LEFT(first_name, 1)) AS first_letter FROM wizzard_deposits
-- WHERE deposit_group = 'Troll Chest'
-- GROUP BY first_name

-- Problem 11. Problem 11. Average Interest 
-- SELECT deposit_group, is_deposit_expired, AVG(deposit_interest) AS avergae_interest FROM wizzard_deposits
-- WHERE deposit_start_date > CAST('1985/01/01' AS DATE)
-- GROUP BY deposit_group, is_deposit_expired
-- ORDER BY deposit_group  DESC, is_deposit_expired ASC

-- Problem 12. * Rich Wizard, Poor Wizard

-- SELECT
-- (SELECT deposit_amount FROM wizzard_deposits as first
-- ORDER BY id ASC
-- LIMIT 1)
-- -
-- (SELECT deposit_amount FROM wizzard_deposits as last
-- ORDER BY id dESC
-- LIMIT 1) AS sum_difference;

-- SELECT deposit_amount FROM wizzard_deposits
-- ORDER BY id DESC
-- LIMIT 1 AS second) AS sum_difference
-- LAST_VALUE(deposit_amount) OVER (ORDER BY id DESC) AS lv AS sum_difference
-- FROM wizzard_deposits

-- Problem 13. Employees Minimum Salaries
