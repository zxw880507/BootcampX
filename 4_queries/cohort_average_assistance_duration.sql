SELECT AVG(list.total_duration) AS average_total_duration
FROM(
  SELECT b.name AS cohort, SUM(c.completed_at - c.started_at) AS total_duration
FROM students a
JOIN cohorts b ON a.cohort_id = b.id
JOIN assistance_requests c ON a.id = c.student_id
GROUP BY cohort
) AS list;