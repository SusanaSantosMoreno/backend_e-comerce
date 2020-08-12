const express = require('express');
const app = express();
const PORT = 3000;
const path = require('path'); 
const morgan = require('morgan');
const myConnection = require('express-myconnection');
const mysql = require('mysql');

//Static files
app.use(express.static(path.join(__dirname, '/public')));

//Middlewares
app.use(express.json());
app.use(morgan('dev'));
app.use(myConnection(mysql, {
    host:'localhost',
    user:'susana',
    password:'manager',
    database:'E_COMERCE',
    multipleStatements: true
}, 'single'));

//Settings
app.set('port', PORT);
app.set('views', path.join(__dirname, '/views'));
app.set('view engine', 'html');
app.engine('html', require('ejs').__express);

//Routes
app.use('/', require('./routes/index'));

app.listen(PORT, () => console.log('server running on port ' + PORT));