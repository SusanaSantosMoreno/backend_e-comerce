const controller = {};

controller.listProductTypes = (req, res, callback) => {
    var sql = 'SELECT * FROM Category';
    req.getConnection((err, conn) => {
        conn.query(sql, function(err, results){
            if(err){throw err;}
            return callback(results);
        })
    });
}

controller.listProducts = (req, res, callback) => {
    var sql = 'SELECT * FROM Product';
    req.getConnection((err, conn) => {
        conn.query(sql, function(err, results){
            if(err){throw err;}
            return callback(results);
        })
    });
}

module.exports = controller;