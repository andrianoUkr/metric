var express = require('express');
var router = express.Router();
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : ''
});

function _collectQuery(str){
	var str = str || '';
	if(str){
		var patt = /[^\w|]+/;	
		if (!patt.test(str)){
			var newStr = str.split('|');
			return newStr;				
		}
	}

}

/* GET users listing. */
router.get('/', function(req, res, next) {
	var resObject = {};
	resObject.success = 1;
	var query  = 'firstName, lastName, dateBirth, mail, balance, client_pb';
	var sortname = 'id';
	var sortorder = 'ASC';
	var count = '0,10';
	if(JSON.stringify(req.query) != "{}"){
		if(req.query.q){
			query = _collectQuery(req.query.q) || query;
		}		

		sortname = req.query.sortname || sortname;
		if(req.query.sortorder &&(req.query.sortorder == 'asc' || req.query.sortorder == 'desc')){
			sortorder = req.query.sortorder.toUpperCase();
		}
		if(req.query.q){
			count = _collectQuery(req.query.count) || count;
		}		
	}

	connection.connect();

	connection.query('SELECT id,'+ query +' FROM metric.persons ORDER BY '+ sortname +' '+ sortorder+ '  LIMIT '+ count, function(err, rows, fields) {
		if (err) throw err;
		if(rows.length > 0){
			resObject.success = 1;
			resObject.result = rows;
			res.send(resObject);			
			connection.end();	
		}
	});



});

module.exports = router;

