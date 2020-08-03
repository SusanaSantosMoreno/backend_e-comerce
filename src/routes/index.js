const express = require('express');
const router = express.Router();

//routes
router.get('/', (req, res) => {
    res.render('index.html');
})

//routes
router.get('/home', (req, res) => {
    res.render('home.html');
})

module.exports = router;