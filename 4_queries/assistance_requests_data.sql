SELECT a.name AS teacher,
b.name AS student,
c.name AS assignment,
(d.completed_at - d.started_at) AS duration
FROM assistance_requests d
JOIN teachers a ON a.id = d.teacher_id
JOIN students b ON b.id = d.student_id
LEFT OUTER JOIN assignments c ON c.id = d.assignment_id
ORDER BY duration;