SELECT avg(bikes_available)
FROM status
WHERE station_id NOT IN
    (SELECT id
     FROM station
     WHERE city  =  "Palo Alto")