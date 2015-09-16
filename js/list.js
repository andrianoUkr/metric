webden.ListData = (function(W, $){	
	var listDataCollections = '';
	var listDataViews = '';
	var rowModel = '';	
	var menuViews = '';
	var rowViews = '';	
	var metricData = {};
		metricData.columnList = ['firstName','lastName', 'dateBirth','mail','balance','client_pb'];
		metricData.columnListHide = [];
		metricData.currData = {
			q:  	metricData.columnList.join('|'),
			sortname: 'firstName',
			sortorder: 'desc',
			count:     '0|20'
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
		return Backbone.ajax({
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

	var ListMenuViews =  Backbone.View.extend({
		tagName: 'div',
		template: '#menu_wrapper',
		initialize: function() {
			this.render();
			this.model.on('change', this.myReset, this );
			setSortable();				
		},					
		myReset: function(){
			this.$el.html('');
			this.render();
		},		
		
		visible: function(e) {
			e.preventDefault();
			console.log('fff');
		},
		events: {
			"click #visible"	:	"visible",
		},
		render: function (){
			var data = this.model.toJSON();
			var compiled =_.template($(this.template).html(), data);
			this.$el.html(compiled);
			$('#menu').html(this.$el);
			
			return this;
		}		
	});	
	
	var ListRowViews =  Backbone.View.extend({
		tagName: 'ul',
		id: 'title',
		template: '#rowTitle',
		initialize: function() {
			this.render();
		},
		render: function (){
			var data = this.model.toJSON();
			var obj = _.clone(data);
			obj.columnList = _.clone(data.columnList);
			obj.columnList.unshift('id');
			var rowTitle =_.template($(this.template).html(), obj);
			metricData.dynamicTemplate = _.template($('#ulTemplate').html(), obj);
			// obj.columnList.shift();
			this.$el.html(rowTitle);
			$('#main_block').html(this.$el);
			return this;
		},
		events: {
			'click .up': 'upEvent',
			'click .down': 'downEvent',
		},	
		clickData: function (val){
			$('#title li span').removeClass('active');
			$(val.target).addClass('active');			
			return $(val.target).parent().attr('id');
		},
		updateByEvenrt: function (sortname, sortorder){
			metricData.currData.count = '0|20';
			metricData.currData.sortname = sortname || '';
			metricData.currData.sortorder = sortorder || '';
			setCurrentData();			
		},
		upEvent: function (e){
			e.preventDefault();
			this.updateByEvenrt(this.clickData(e), 'desc');
			// displayTables();	
			updateTables();						
		},
		downEvent: function (e){
			e.preventDefault();
			this.updateByEvenrt(this.clickData(e), 'asc');
			// displayTables();
			updateTables();
		}
	});		

	var ViewOne = Backbone.View.extend({
		tagName: 'ul',
		className: 'row',
		template: '#listMenu',		
		render: function (){
			var data = this.model.toJSON();
			
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
			var compiled = _.template(metricData.dynamicTemplate, data);
			this.$el.html(compiled);				
			return this;
		}		
	});	

/* View for collections */	

	var ViewsCollection = Backbone.View.extend({
		tagName: 'ul',
		initialize: function() {			
			this.render();
			this.collection.on('add', this.addOne, this );	
			this.collection.on('reset', this.myReset, this );
		},					
		addOne: function(task) {
			var view = new ViewOne({model: task});
			$('#main_block').append(view.render().el);
		},	
		myReset: function(){
			$('#main_block .row').remove();
			this.render();
		},			
		render: function (){	
			this.collection.each( function(value){
				var view = new ViewOne({model: value});
				$('#main_block').append(view.render().el);
			}, this)
			
			return this;
		}
	});
	
	function displayTables(){
		getModel(getCurrentData().currData).done(function(data){
			if(data.success == 1){
				var objData = metricData;
				rowModel = new Backbone.Model(objData);
				menuViews = new ListMenuViews({model: rowModel});
				rowViews = new ListRowViews({model: rowModel});
				listDataCollections = new Backbone.Collection(data.result);	
				listDataViews = new ViewsCollection({collection: listDataCollections});
			} else {
				webden.Vent.trigger('vent:error', data.result);
			}
		}).fail(function(data){
			webden.Vent.trigger('vent:error', 'Error in response');
		});	
	};
	
	function updateTables(){
		getModel(metricData.currData).done(function(data){
			if(data.success == 1){
				listDataCollections.reset(data.result);
			} else {
				webden.Vent.trigger('vent:error', data.result);
			}
		}).fail(function(data){
			webden.Vent.trigger('vent:error', 'Error in response');
		});
	}
	
	function bindScroll() {
		var block = false;
		$(window).scroll(function(){
			if($(window).height() + $(window).scrollTop() + 100 >= $(document).height() && !block){
				var count = metricData.currData.count.split('|');
				var start = parseInt(count[1]) + 1;
				var end = parseInt(count[1]) + 10;
				metricData.currData.count = start + '|' + end;
				block = true;
				getModel(metricData.currData).done(function(data){
					if(data.success == 1){
						listDataCollections.add(data.result)
						block = false;
					} else {
						webden.Vent.trigger('vent:error', data.result);
						block = false;
					}
				}).fail(function(data){
					webden.Vent.trigger('vent:error', 'Error in response');
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
							console.log('receive');
							
							
						},
			create:		function(event, ui){
							console.log('create');
							var $this = $(this);
							$this.children().each(function(){
									var _this=this;
									$(_this).attr('data-val',$(_this).html());
								}
							) 
						},
			remove:		function(event, ui){
							console.log('remove');
							var $this = $(this);
						},
			stop:		function (event, ui) {
							console.log('stop');
							var visibleData=$('#visible.js-sortable').sortable('toArray', {attribute : 'data-val'});
							var hiddenData=$('#hidden.js-sortable').sortable('toArray', {attribute : 'data-val'});
							
							metricData.columnList = visibleData;
							metricData.columnListHide = hiddenData;	
							setCurrentData();	
							displayTables();
											
						},
			sort:		function (event, ui) {
							console.log('sort');
							
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



