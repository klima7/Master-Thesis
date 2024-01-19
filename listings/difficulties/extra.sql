SELECT AVG(life_expectancy)
FROM country
WHERE name NOT IN
  (SELECT T1.name
   FROM country AS T1
   JOIN country_language AS T2
   ON T1.code = T2.country_code
   WHERE T2.language = "English"
    AND T2.is_official = "T")