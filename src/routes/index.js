const express = require('express');
const router = express.Router();

//routes
router.get('/', (req, res) => {
    res.render('partials/home.html');
})

//routes
router.get('/home', (req, res) => {
    res.render('partials/home.html');
})

module.exports = router;