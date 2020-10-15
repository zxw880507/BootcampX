const { Pool } = require('pg');
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
const cohort = process.argv[2];
const queryString = `
SELECT DISTINCT b.name AS cohort, d.name AS teacher
FROM students a
JOIN cohorts b ON a.cohort_id = b.id
JOIN assistance_requests c ON c.student_id = a.id
JOIN teachers d ON c.teacher_id = d.id
WHERE b.name LIKE $1
ORDER BY teacher;
`;
const values = [`%${cohort}%`];
pool.query(queryString, values)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  })
  .catch(err => {
    console.log('query error', err.stack);
  });