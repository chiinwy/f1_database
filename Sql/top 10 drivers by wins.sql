SELECT name AS Name, COUNT(r.driverId) AS "Races Won"
FROM drivers d, results r
WHERE r.driverId = d.driverId AND r.position = 1
GROUP BY Name
ORDER BY "Races Won" DESC
LIMIT 10;