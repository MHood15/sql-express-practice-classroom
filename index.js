const express = require('express')
const bodyParser = require('body-parser')
const db = require('./queries');
const app = express()

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (req, res) => {
    res.json({ info: 'Node.js, Express, and Postgres API' })
  })

//Gets a list of all students
app.get('/students', db.getStudents)
//Gets the details of a single student by ID
app.get('/students/:studentId', db.getStudentById)
//Gets the grades of a single student by ID
app.get('/grades/:studentId', db.getGradesById)
//Adds a new student to the database
app.post('/register', db.createStudent)
//Updates a student by ID
app.put('/update/:id', db.updateStudent)
//Deletes a student by ID
app.delete('/delete/:id', db.deleteStudent)


const port = 3001;
app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))