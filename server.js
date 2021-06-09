const express = require("express");
const bodyParser = require("body-parser");
const fs = require("fs");
const cors = require('cors');
const app = express();
// const router = require('.routes/video.routes')
app.use(cors())
// app.use(router)

const port = process.env.PORT || 3000;

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});

require("./app/routes/video.routes.js")(app);
