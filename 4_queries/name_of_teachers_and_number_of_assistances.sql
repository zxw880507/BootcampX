SELECT b.name AS teacher, d.name AS cohort, COUNT(*) AS total_assistances
FROM assistance_requests a
JOIN teachers b ON a.teacher_id = b.id
JOIN students c ON a.student_id = c.id
JOIN cohorts d ON c.cohort_id = d.id
WHERE d.name = 'JUL02'
GROUP BY b.name, d.name
ORDER BY teacher;