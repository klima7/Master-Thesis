SELECT AVG(bikes_available)
FROM status
WHERE NOT station_id IN
    (SELECT id
     FROM station
     WHERE city = "Palo Alto")