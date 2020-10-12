SELECT SUM(b.duration) AS total_duration
FROM students a
LEFT OUTER JOIN assignment_submissions b
ON a.id = b.student_id
WHERE a.id IN (SELECT students.id
FROM students
LEFT OUTER JOIN cohorts
on cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12'
);