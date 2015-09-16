webden.Router = (function(W, $){	
	W.listData = '';
	var start = Backbone.Router.extend({
		routes: {
			""				: "index",
			"index"			: "index" ,			
			"*other"		: "notFound"
		},
		index: function() {
			webden.ListData.Init();
		},		
		notFound: function(other) {
			webden.Vent.trigger('vent:error', 'вы обратились по несуществующему адресу: ' + other)
		}		
		
	})
	
	return{
		start:start
	};
})(window, jQuery); 

$.get("js/tpl/template.html").success(function(data) { 
	$('body').prepend(data);
})
var mycmsRouter = new webden.Router.start;
Backbone.history.start();