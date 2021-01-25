var express = require("express");
var app = express();
const bodyParser = require("body-parser");
const cors = require("cors");
const router = require("./routes/Lab1");



app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(router)

var server = app.listen(8080, function () {
  var host = server.address().address;
  var port = server.address().port;
  console.log("Application Run At http://%s:%s", host, port);
});
