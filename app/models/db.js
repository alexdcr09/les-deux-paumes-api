const mysql = require("mysql");
// const { Pool } = require("pg");

// Create a connection to the databse PostgreSQL
const connection = mysql.createConnection({
    user: "MyDigitalProject",
    host: "localhost",
    database: "MyDigitalProject",
    password: "66CJXWGAV7L9fQqS",
});
console.log("Connexion réussie à la base de données");
connection.connect();

module.exports = connection;

// mysql --host=us-cdbr-east-04.cleardb.com --user=baf67f81831803 --password=6e8d7d3c --reconnect heroku_5aee93ca8d7911e

/* pw : 66CJXWGAV7L9fQqS
const connection = mysql.createConnection({
    user: "baf67f81831803",
    host: "us-cdbr-east-04.cleardb.com",
    database: "heroku_5aee93ca8d7911e",
    password: "6e8d7d3c",
});
console.log("Connexion réussie à la base de données");
connection.connect();
*/