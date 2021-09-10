const express = require('express');
const path = require('path');
const bodyparser = require('body-parser');
const cors = require('cors');

const app = express();

app.set('port', process.env.PORT || 3001)

app.use(cors());
app.use(bodyparser.urlencoded({extended: false}));
app.use(bodyparser.json());

module.exports = app;