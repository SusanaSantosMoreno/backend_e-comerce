const express = require('express');
const router = express.Router();
const mysqlConnection = require('../db/database');
const { response } = require('express');
const fetch = require('node-fetch');

var productTypes = {};

//routes
router.get('/', (req, res) => {
    mysqlConnection.query('SELECT * FROM Category', (err, result) => {
        if(!err){
            productTypes = {productTypes: result};
            res.render('partials/home.html', productTypes);
        }else{
            console.log(err);
        }
    })
    
})

router.get('/productTypes', (req, res) => {
    mysqlConnection.query('SELECT * FROM Category', (err, result) => {
        if(!err){
            productTypes = {productTypes: result};
            res.json(productTypes);
        }else{
            console.log(err);
        }
    })
})


router.get('/', (req, res) => {
    res.render('partials/home.html');
});


module.exports = router;