-- Problem 12. Games from 2011 and 2012 year
-- SELECT name AS game, CAST(start AS DATE) AS start FROM games
-- WHERE YEAR(start) IN(2011, 2012)
-- ORDER BY games.start, name
-- LIMIT 50;
-- 
-- SELECT name, start FROM games
-- ORDER BY start

-- SELECT name AS game, DATE_FORMAT(start,'%Y-%m-%d') AS start FROM games
-- WHERE YEAR(start) IN(2011, 2012)
-- ORDER BY games.start, name
-- LIMIT 50;

-- Problem 13.User Email Providers
-- SELECT LEFT(email, INSTR(email, '@') - 1) AS user_name,
-- SUBSTRING(email, INSTR(email, '@') + 1, LENGTH(email)) AS email_provider FROM users
-- ORDER BY email_provider ASC, user_name ASC

-- SELECT user_name,
-- REVERSE(LEFT(REVERSE(email), INSTR(REVERSE(email), '@') - 1)) AS "email_provider" FROM users
-- ORDER BY email_provider ASC, user_name ASC

-- Problem 14.Get Users with IPAdress Like Pattern
-- SELECT user_name, ip_address FROM users
-- WHERE ip_address LIKE '___.1%.%.___'
-- ORDER BY user_name

-- Problem 15.
SELECT name AS game, 
CASE 
WHEN HOUR(start) >= 0 AND HOUR(start) < 12 THEN 'Morning'
WHEN HOUR(start) >= 12 AND HOUR(start) < 18 THEN 'Afternoon'
WHEN HOUR(start) >= 18 AND HOUR(start) < 24 THEN 'Evening'
END AS part_of_the_day,
CASE 
WHEN duration <= 3 THEN 'Extra Short' 
WHEN duration > 3 AND duration <= 6 THEN 'Short' 
WHEN duration > 6 THEN 'Long' 
ELSE 'Extra Long' 
END AS duration
FROM games
ORDER BY game ASC