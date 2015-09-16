var express = require('express');
var router = express.Router();
var mongooseObj = require('../lib/mongoose');

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
	resObject.success = 0;
	var query  = 'firstName lastName dateBirth mail balance client_pb';
	var sortname = 'id';
	var sortorder = '1';
	var count = ['0', '10'];
	if(JSON.stringify(req.query) != "{}"){
		if(req.query.q){
			query = (_collectQuery(req.query.q)).join(' ') || query;
		}		

		sortname = req.query.sortname || sortname;
		if(req.query.sortorder &&(req.query.sortorder == 'asc' || req.query.sortorder == 'desc')){
			if(req.query.sortorder == 'desc'){
				sortorder = '-1';
			}
		}
		if(req.query.q){
			var queryCount = _collectQuery(req.query.count) ;
			if(queryCount && queryCount.length > 0) {
				count = queryCount;
			}
		}	
		mongooseObj.find().select('id '+ [query]).sort({[sortname]: [sortorder]}).skip(count[0]).limit(count[1]).exec(function(err, rows) {
			if(rows && rows.length > 0){
				resObject.success = 1;
				resObject.result = rows;
				res.send(resObject);
			} else {
				resObject.result = 'result is empty(1)';
				res.send(resObject);				
			}
		});		
	} else {
		resObject.result = 'result is empty(2)';
		res.send(resObject);
	}
});

module.exports = router;

