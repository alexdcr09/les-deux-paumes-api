// const mysql = require("mysql");
const dbConfig = require("../config/db.config.js");
const { Pool } = require("pg");

// Create a connection to the databse PostgreSQL
const pool = new Pool({
  user: "vfhiejej",
  host: "xxxxx.elephantsql.com",
  database: "mystere",
  password: "KJiaKXNf-bymqnW9pkszYGzK2ntoDbJc ",
  port: 5432
});
console.log("Connexion réussie à la base de données");

/*
// Create a connection to the database
const connection = mysql.createConnection({
  host: dbConfig.HOST,
  user: dbConfig.USER,
  password: dbConfig.PASSWORD,
  database: dbConfig.DATABASE
});*/

// open the MySQL connection
connection.connect(error => {
  if (error) throw error;
  console.log("Successfully connected to the database.");
});

module.exports = connection;