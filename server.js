var express = require('express');
var app = express();

app.get('/', (req, res) => {
    res.send('Server is Running');
});

app.get('/ping', (req, res) => {
    res.send("pong");
});

app.listen(5000, () => {
    console.log('Server started at 5000');
});