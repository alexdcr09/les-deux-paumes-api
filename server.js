const express = require("express");
const bodyParser = require("body-parser");
const fs = require("fs");
const cors = require('cors');
const app = express();
app.use(cors())

const port = process.env.PORT || 3000;

require("./app/routes/video.routes.js")(app);
// set port, listen for requests
app.listen(port, function () {
  console.log("Server is running on port");
});