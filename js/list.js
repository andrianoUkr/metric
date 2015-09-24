webden.ListData = (function(W, $){	
	var COUNT = '0|20';
	var metricData = {};
		metricData.columnList = ['firstName','lastName', 'dateBirth','mail','balance','client_pb'];
		metricData.columnListHide = [];
		metricData.currData = {
			q:  	metricData.columnList.join('|'),
			sortname: 'firstName',
			sortorder: 'desc',
			count:     COUNT
		};
	
	function getCurrentData (){
		if(localStorage.metricData){
			if(JSON.parse(localStorage.metricData)){
				metricData = JSON.parse(localStorage.metricData);
			}
		}
		return metricData;
	};
	
	function setCurrentData(){
		localStorage.metricData = JSON.stringify(metricData) || '';	
	}

	function getModel(obj){
		var obj = obj || '';
		return $.ajax({
			url:'node/data',  // api REST-Server (NODEJS and MONGODB) 
			// url:'api/main/index/data',  // api REST-Server (PHP and MYSQL)
			data:obj,
			type : "GET", 
			dataType : "json", 
			beforeSend: function(data, opt){
				webden.loadStart();
			},
			complete: function(data, opt){
				webden.loadStop();
			}
		})
	};
		
	/* VIEWS */	

/* View for model */

	var ListMenuViews = {	
		model: {},
		init: function(model) {
			this.model = model;
			this.render();			
		},					
		visible: function(e) {
			e.preventDefault();
			console.log("TEST");
		},
		events: function(templ) {
			$(templ).find('#visible').click(this.visible.bind(this));
			return templ;
		},
		render: function (){
			var element =  $('<div/>');
			var template = 'menu_wrapper';
			
			if(Object.keys(this.model).length > 0){
				var htmlTemplate = webden.templates.showMenu(template, this.model);
				element.html(htmlTemplate);
				this.events(element);
				$('#menu').html(element);					
			}			
		}
	};
	
	var ListRowViews = {
		model: {},		
		init: function(model) {
			this.model = model;
			this.render();			
		},
		clickData: function (val){
			$('#title li span').removeClass('active');
			$(val.target).addClass('active');			
			return $(val.target).parent().attr('id');
		},
		events: function(templ) {		
			$(templ).find('.up').click(this.upEvent.bind(this));
			$(templ).find('.down').click(this.downEvent.bind(this));
			return templ;
		},
		updateByEvenrt: function (sortname, sortorder){
			metricData.currData.count = COUNT;
			metricData.currData.sortname = sortname || '';
			metricData.currData.sortorder = sortorder || '';
			setCurrentData();			
		},
		upEvent: function (e){
			e.preventDefault();
			this.updateByEvenrt(this.clickData(e), 'desc');
			updateTables();						
		},
		downEvent: function (e){
			e.preventDefault();
			this.updateByEvenrt(this.clickData(e), 'asc');
			updateTables();
		},
		render: function (){
			var element = $('<ul/>', {
					id: 'title'
				});
			var template = 'rowTitle';
				
			if(Object.keys(this.model).length > 0){
				var objModel = $.extend({}, this.model);	
				objModel.columnList = this.model.columnList.concat();
				objModel.columnList.unshift('id');
				
				var htmlTemplate = webden.templates.showRow(template, objModel);	
				metricData.dynamicTemplate = webden.templates.dynTpl('ulTemplate', objModel);
				
				element.html(htmlTemplate);
				var templ = this.events(element);
				$('#main_block').html(templ);		
			}
		}		
	};
	var ViewOne = {	
		model: {},		
		init: function(model) {
			this.model = model;
			return this.render();			
		},
		render: function (){
			var element = $('<ul/>',{
					class: 'row'
				});	

			if(Object.keys(this.model).length > 0){
				var data = this.model;
				if(data.balance.toString().trim() != '') {
					var balance = Math.round(data.balance * 100) / 100;
					if(balance > 0) {
						data.balance = '<span class="positive">'+ balance +'</span>';
					} else if(balance < 0){
						data.balance = '<span class="negative">'+ balance +'</span>';
					}
					if(data.mail.trim() != '') {
						data.mail = '<a href="mailto:' + data.mail + '">'+data.mail+'</a>';
					}
						
					if(data.client_pb > 0) {
						data.client_pb = 'YES';
					} else {
						data.client_pb = 'NO';	
					}
				}				
				
				var htmlTemplate = webden.templates.showDynTpl(metricData.dynamicTemplate, data);
				element.html(htmlTemplate);
				var view = $('<div/>').html(element);
				return view;				
			}			
		}		
	};
	
	var ViewsCollection = {
		collection: {},	
		init: function(collection) {
			this.collection = collection;
			this.render();			
		},	
		reset: function(collection){
			this.collection = collection || {};
			$('#main_block .row').remove();
			this.render();
		},			
		render: function (){	
			var obj = this.collection;
			if(Object.keys(obj).length > 0){
				for (var item = 0; item < obj.length; item++) {
					var view = ViewOne.init(obj[item]);
					$('#main_block').append(view.html());
				}					
			}		
		}
	};
		
	function displayTables(){
		getModel(getCurrentData().currData).done(function(data){
			if(data.success == 1){
				ListMenuViews.init(metricData);
				ListRowViews.init(metricData);				
				ViewsCollection.init(data.result);
				setSortable();
			} else {
				webden.displayMsg(data.result);
			}
		}).fail(function(data){
			webden.displayMsg('Error in response');
		});	
	};
	
	function updateTitles(){
		metricData.currData.count = COUNT;
		getModel(metricData.currData).done(function(data){
			if(data.success == 1){
				ListRowViews.init(metricData);				
				ViewsCollection.init(data.result);
			} else {
				webden.displayMsg(data.result);
			}
		}).fail(function(data){
			webden.displayMsg('Error in response');
		});	
	}

	function updateTables(){
		getModel(metricData.currData).done(function(data){
			if(data.success == 1){
				ViewsCollection.reset(data.result);
			} else {
				webden.displayMsg(data.result);
			}
		}).fail(function(data){
			webden.displayMsg('Error in response');
		});
	}
	
	function bindScroll() {
		var block = false;
		$(window).scroll(function(){
			if($(window).height() + $(window).scrollTop() + 100 >= $(document).height() && !block){
				var count = metricData.currData.count.split('|');
				var start = parseInt(count[0]) + parseInt(count[1]);
				var end = 10;
				metricData.currData.count = start + '|' + end;
				block = true;
				getModel(metricData.currData).done(function(data){
					if(data.success == 1){
						ViewsCollection.init(data.result)
						block = false;
					} else {
						webden.displayMsg(data.result);
						block = false;
					}
				}).fail(function(data){
					webden.displayMsg('Error in response');
				});				
			
			
			}
		})
	}
	
	function setSortable(){
		$( ".js-sortable").sortable({				//move to config
			placeholder:"js-ui-placeholder",
			connectWith:'.js-sortable',	
			scroll:		false,
			revert:		50,
			tolerance:	'intersect',
			containment:'#left-sidebar',
			receive:	function(event, ui) {
							var $this = $(this);
						},
			create:		function(event, ui){
							var $this = $(this);
							$this.children().each(function(){
									var _this=this;
									$(_this).attr('data-val',$(_this).html());
								}
							) 
						},
			remove:		function(event, ui){
							var $this = $(this);
						},
			stop:		function (event, ui) {
							var visibleData=$('#visible.js-sortable').sortable('toArray', {attribute : 'data-val'});
							var hiddenData=$('#hidden.js-sortable').sortable('toArray', {attribute : 'data-val'});
							
							metricData.columnList = visibleData;
							metricData.columnListHide = hiddenData;	
							updateTitles();			
						},
			sort:		function (event, ui) {
							
						}			

			
		}).disableSelection();
	}

	

	/* Init the current object */
	function Init(){
		displayTables();
		bindScroll();		
	};
	
	return{
		metricData:metricData,
		Init:Init
	};
})(window, jQuery); 



