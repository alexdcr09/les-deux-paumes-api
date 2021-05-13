// const mysql = require("mysql");
const dbConfig = require("../config/db.config.js");
const { Pool } = require("pg");

// Create a connection to the databse PostgreSQL
const pool = new Pool({
  user: "jfvrqdieasbluo",
  host: "ec2-54-195-76-73.eu-west-1.compute.amazonaws.com",
  database: "dbqc4m87m63k49",
  password: "c728998bc4ffa16c18f5007aaf94d52b35d83beda2b59cd81a7b4afb60991cde@",
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

module.exports = pool;