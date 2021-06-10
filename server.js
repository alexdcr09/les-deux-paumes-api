const express = require("express");
const bodyParser = require("body-parser");
const fs = require("fs");
const cors = require('cors');
const app = express();
app.use(cors())

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});

// parse requests of content-type: application/json
app.use(bodyParser.json());

require("./app/routes/video.routes.js")(app);

// Server qui crash / Accent à régler...
// heroku restart
// heroku run node server.js