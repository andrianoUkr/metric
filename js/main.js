webden = (function(W, $){		
	
	/* Show a message in the browser */
	function displayMsg(msg, callback) {
		alert(msg);
		if(callback){
			callback(msg);
		}
	}	
	
	/*  LOADING*/
	function loadStart(){
		$('#loader_wrapper').show();
	};

	function loadStop(){
		$('#loader_wrapper').hide();		
	};
	
	return{		
		displayMsg  : displayMsg,
		loadStart: loadStart,
		loadStop: loadStop
	};
})(window, jQuery); 
