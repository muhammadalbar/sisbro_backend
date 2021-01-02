var express = require('express')
var bodyParser = require('body-parser')
var dotenv =  require('dotenv')
var cors = require('cors')
dotenv.config()
var app = express()

app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);
app.use(cors())
app.use(bodyParser.json());

var routes = require("./routes");
routes(app);

module.exports = app;
