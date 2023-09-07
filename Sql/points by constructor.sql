SELECT c.name AS Constructor, c.nationality AS Nationality, SUM(points) AS "Total Points"
FROM constructor_results r, constructors c
WHERE c.constructorId = r.constructorId
GROUP BY c.name, c.nationality
ORDER BY "Total Points" DESC;