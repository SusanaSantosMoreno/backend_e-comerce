const express = require('express');
const app = express();
const PORT = 3000;
const path = require('path'); 

//Static files
app.use(express.static(path.join(__dirname, '/public')));

//Partials


//Settings
app.set('port', PORT);
app.set('views', path.join(__dirname, '/views'));
app.set('view engine', 'html');
app.engine('html', require('ejs').__express);

//Routes
app.use(require('./routes/index'));

app.listen(PORT, () => console.log('server running on port ' + PORT));