const mysql = require("mysql");
const inquirer = require("inquirer");

const connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "rootroot",
  database: "emptr_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log(`Connected as id ${connection.threadId}`);
readEmployee()
readDepartment()
})

const readEmployee = () => {
  connection.query('SELECT * FROM employee', (err, res) => {
    if (err) throw err
    console.log(res)
  })
}

const readDepartment = () => {
  connection.query("SELECT * FROM department", (err, res) => {
    if (err) throw err
    console.log(res)
  })
}