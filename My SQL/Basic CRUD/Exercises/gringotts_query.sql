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
SELECT deposit_group, SUM(deposit_amount) as total_sum FROM wizzard_deposits
WHERE magic_wand_creator = 'Ollivander family'
GROUP BY deposit_group;