const { Pool } = require('pg');
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
const [cohort, limit] = process.argv.slice(2);
pool.query(`SELECT a.id AS student_id, a.name AS name, b.name AS cohort
FROM students a
JOIN cohorts b ON a.cohort_id = b.id
WHERE b.name LIKE '%${cohort}%'
LIMIT ${limit || 5};`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
    });
  })
  .catch(err => console.log('query error', err.stack));