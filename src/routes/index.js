const express = require('express');
const router = express.Router();

var productTypes = [
    { id:'face-link', selected: 'true', href: '#tab-face', icon: '/images/icons/face_icon.svg', name: 'face' },
    { id:'makeup_link', selected: 'false', href: '#tab-makeup', icon: '/images/icons/makeup_icon.svg', name: 'make-up' },
    { id:'hair_link', selected: 'false', href: '#tab-hair', icon: '/images/icons/hair_icon.svg', name: 'hair' },
    { id:'body_link', selected: 'false', href: '#tab-body', icon: '/images/icons/body_icon.svg', name: 'body' },
    { id:'sun_link', selected: 'false', href: '#tab-sun', icon: '/images/icons/sun_icon.svg', name: 'sun' }
];


//routes
router.get('/', (req, res) => {
    res.render('partials/home.html', {productTypes: productTypes});
})

//routes
router.get('/home', (req, res) => {
    res.render('partials/home.html');
});


module.exports = router;