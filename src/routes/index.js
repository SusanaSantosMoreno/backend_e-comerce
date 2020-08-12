const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');

var productTypes = '';
var products = '';
router.get('/', (req, res, callback) => {
    productController.listProductTypes(req, res, function(result){
        productTypes = result;
        productController.listProducts (req, res, function(result){
            products = result;
            res.render('partials/home.html', {productTypes : productTypes, products: products});
        })
    })
});

module.exports = router;