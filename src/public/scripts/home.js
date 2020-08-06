const ejs = require('ejs');
const fs = require('fs');

var htmlContent = fs.readFileSync(__dirname + '/partials/homeSections/bestSellersSections.html', 'utf8');

var htmlRenderized = ejs.render(htmlContent, {filename: 'bestSellersSections.html', 
exampleRenderEjs: 'Hello World!'});

console.log(htmlRenderized);