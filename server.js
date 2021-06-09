const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const app = express();
app.use(cors());

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
});

// parse requests of content-type: application/json
app.use(bodyParser.json());

require("./app/routes/video.routes.js")(app);
// set port, listen for requests
app.listen(port, function () {
    console.log("Server is running on port");
});
