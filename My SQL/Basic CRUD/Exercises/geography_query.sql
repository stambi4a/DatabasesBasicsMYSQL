-- Problem 21. All mountain peaks
SELECT peak_name FROM peaks
ORDER BY peak_name ASC;

-- Problem 22. Biggest countries by population
SELECT country_name, population FROM countries
WHERE continent_code ='EU'
ORDER BY population DESC
LIMIT 30;

-- Problem 23. Countries and Currency
SELECT country_name, country_code,
CASE currency_code
WHEN 'EUR' THEN 'Euro'
ELSE 'Not Euro'
END FROM countries
ORDER BY country_name;