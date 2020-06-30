const Pool = require('pg').Pool
const pool = new Pool({
  user: 'me',
  host: 'localhost',
  database: 'classroom_api',
  password: 'password',
  port: 5432,
})

//Gets a list of students with the provided name (no partials), otherwise returns entire list
const getStudents = (req, res) => {
  const searchResults = req.query.search

  if(searchResults){
    pool.query('SELECT * FROM students WHERE name = $1', [searchResults], (error, results) => {
        if (error) {
          throw error
        }
        res.status(200).json(results.rows)
      })
  }else{
    pool.query('SELECT * FROM students ORDER BY id ASC', (error, results) => {
        if (error) {
        throw error
        }
        res.status(200).json(results.rows)
    })
  }
}

//Gets details of a specific student based on ID
const getStudentById = (req, res) => {
  const id = parseInt(req.params.studentId)

  pool.query('SELECT * FROM students WHERE id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows)
  })
}

//Gets grades of a specific student based on ID
const getGradesById = (req, res) => {
    const id = parseInt(req.params.studentId)
  
    pool.query('SELECT grades FROM students WHERE id = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      res.status(200).json(results.rows)
    })
  }

//Creates a new student with grades and name
const createStudent = (req, res) => {
  const {name, grades} = req.body

  pool.query('INSERT INTO students (name, grades) VALUES ($1, $2)', [name, grades], (error, results) => {
    if (error) {
      throw error
    }
    res.status(201).send(`User successfully added!`)
  })  
}

//Updates a student by ID
const updateStudent = (req, res) => {
  const id = parseInt(req.params.id)
  const grade = req.body.grade;
  pool.query('SELECT grades FROM students WHERE id=$1', [id], (error, results) => {
      grades = results.rows;
      if(error){
          throw error
      }
      console.log(grades[0].grades)
      const newGrades = `${grades[0].grades}, ${grade}`
      pool.query(
        'UPDATE students SET grades = $1 WHERE id = $2',
        [newGrades, id],
        (error, results) => {
          if (error) {
            throw error
          }
          res.status(200).send(`Success! User modified with ID: ${id}`)
        }
      )
  })
}

//deletes a student by ID
const deleteStudent = (req, res) => {
  const id = parseInt(req.params.id)

  pool.query('DELETE FROM students WHERE id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    res.status(200).send(`User deleted with ID: ${id}`)
  })
}

module.exports = {
  getStudents,
  getStudentById,
  getGradesById,
  createStudent,
  updateStudent,
  deleteStudent,
}