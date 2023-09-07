SELECT c.country AS Country, COUNT(*) AS "Races Hosted"
FROM circuits c, races r
WHERE r.circuitid = c.circuitid
GROUP BY c.country
ORDER BY "Races Hosted" DESC;