var express = require('express');

// Constants
var DEFAULT_PORT = 80;
var PORT = process.env.PORT || DEFAULT_PORT;

// App
var app = express();
app.get('/', function (req, res) {
  res.send('Hello Kensuke\n');
});

app.listen(PORT)
console.log('Running on http://localhost:' + PORT);