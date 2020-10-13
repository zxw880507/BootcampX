SELECT b.name AS cohort, SUM(c.completed_at - c.started_at) AS total_duration
FROM students a
JOIN cohorts b ON a.cohort_id = b.id
JOIN assistance_requests c ON a.id = c.student_id
GROUP BY cohort
ORDER BY total_duration;