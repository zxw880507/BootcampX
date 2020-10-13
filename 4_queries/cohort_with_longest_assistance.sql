SELECT b.name AS name, AVG(c.completed_at - c.started_at) AS average_assistance_time
FROM students a
JOIN cohorts b ON b.id = a.cohort_id
JOIN assistance_requests c 
ON c.student_id = a.id
GROUP BY b.name
ORDER BY average_assistance_time DESC
LIMIT 1;




