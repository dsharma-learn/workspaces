var express = require ('express')
var router = express.Router();


router.get ('/', function (req, res, next){
    res.render('index.html');

});

// Export the router 
module.exports = router;
