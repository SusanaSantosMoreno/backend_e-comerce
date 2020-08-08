const mysql = require('mysql');

//CONEXION
const mysqlConnection = mysql.createConnection({
    host:'localhost',
    user:'susana',
    password:'manager',
    database:'E_COMERCE'
});

mysqlConnection.connect(function(err){
    if(err){
        console.log(err);
        return;
    }else{
        console.log('Database Connected!');
    }
})

module.exports = mysqlConnection;