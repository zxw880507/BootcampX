SELECT COUNT(a.*) AS total_assistances,
b.name AS name
FROM assistance_requests a
JOIN teachers b
ON a.teacher_id = b.id
GROUP BY b.name
HAVING b.name LIKE 'Waylon Boehm';