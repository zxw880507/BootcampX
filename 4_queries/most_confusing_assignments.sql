SELECT a.id AS id,
a.name AS name,
a.day AS day,
a.chapter AS chapter,
COUNT(b.id) AS total_requests
FROM assignments a
JOIN assistance_requests b
ON a.id = b.assignment_id
GROUP BY a.id
ORDER BY total_requests DESC;