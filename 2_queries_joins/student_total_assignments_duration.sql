SELECT SUM(b.duration) AS total_duration
FROM students a
LEFT OUTER JOIN assignment_submissions b
ON a.id = b.student_id
WHERE a.name = 'Ibrahim Schimmel';