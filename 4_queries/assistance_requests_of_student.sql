SELECT COUNT(a.*) AS total_assistances,
b.name AS name
FROM assistance_requests a
JOIN students b
ON a.student_id = b.id
WHERE b.name LIKE 'Elliot Dickinson'
GROUP BY b.name;