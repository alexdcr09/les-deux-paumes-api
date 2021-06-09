// const mysql = require("mysql");
const { Pool } = require("pg");

// Create a connection to the databse PostgreSQL
const pool = new Pool({
  user: "baf67f81831803",
  host: "us-cdbr-east-04.cleardb.com",
  database: "heroku_5aee93ca8d7911e",
  password: "6e8d7d3c",
  port: 5432,
  ssl: { rejectUnauthorized: false }
});
console.log("Connexion réussie à la base de données");
pool.connect();

module.exports = pool;