-- Problem 10
-- SELECT country_name, iso_code FROM countries
-- WHERE country_name LIKE '%a%a%a%'
-- ORDER BY iso_code;

-- Problem 11
-- SET NAMES utf8;
-- SELECT peak_name, river_name,
-- LOWER(CONCAT(peak_name, REVERSE(LEFT(REVERSE(river_name), CHAR_LENGTH(river_name) - 1)))) AS mix
-- -- LOWER(CONCAT(peak_name,SUBSTRING(river_name, 2, LENGTH(river_name)))) AS mix
-- FROM peaks, rivers
-- WHERE LEFT(REVERSE(peak_name), 1) = LEFT(river_name, 1)
-- ORDER BY mix;

-- SELECT peaks.peak_name, rivers.river_name,
-- GROUP_CONCAT(LOWER(peak_name),LENGTH(peak_name),LENGTH(river_name), LOWER(river_name)) AS mix
-- FROM peaks CROSS JOIN rivers
-- WHERE LEFT(REVERSE(peak_name), 1) = LEFT(river_name, 1)
-- ORDER BY mix

-- SELECT
-- p.peak_name,
-- r.river_name,
-- LOWER(CONCAT(p.peak_name,SUBSTRING(r.river_name, 2, LENGTH(r.river_name)))) AS mix
-- FROM peaks p, rivers r
-- WHERE RIGHT(p.peak_name, 1) = LEFT(r.river_name, 1)
-- ORDER BY mix

-- SET NAMES utf8;
-- SELECT SUBSTRING(river_name,2, LENGTH(river_name)) AS river, LENGTH(river_name) as length FROM rivers;
-- SELECT REVERSE(LEFT(REVERSE(river_name), CHAR_LENGTH(river_name) - 1)) as river, CHAR_LENGTH(river_name) as length FROM rivers;
-- SELECT river_name, LENGTH(river_name) as length FROM rivers;
-- SELECT river_name, CHAR_LENGTH(river_name) as length FROM rivers