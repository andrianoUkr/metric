var mongoose = require('mongoose');

var db = mongoose.connection;
db.on('error', console.error);
db.once('open', function() {
});
	
mongoose.connect('mongodb://localhost/metric');
var movieSchema = new mongoose.Schema({
  id: Number,
  firstName: { type: String },
  lastName: { type: String },
  dateBirth: { type: String },
  mail: String,
  balance: Number,
  client_pb: Number
});

var Movie = mongoose.model('persons', movieSchema);
module.exports = Movie;
