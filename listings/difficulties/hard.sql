SELECT T1.country_name
FROM countries AS T1
JOIN continents AS T2
ON T1.continent = T2.cont_id
JOIN car_makers AS T3
ON T1.country_id = T3.country
WHERE T2.continent = 'Europe'
GROUP BY T1.country_name
HAVING COUNT(*) >= 3