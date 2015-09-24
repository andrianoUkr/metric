webden.templates = (function(W, $) {
	var skels = {
		menu_wrapper: [
			'<ul id="visible" class="js-sortable">',
				'{liItemShow}',
			'</ul>',			
			'<ul id="hidden" class="js-sortable">',
				'{liItemHide}',	
			'</ul>'
		].join(''),	
		rowTitle: [
			'<li id="{item}">',
				'<span class="up {active_up}">&uarr;</span>',
				'{item}',
				'<span class="down {active_down}">&darr;</span>',
			'</li>'
		].join(''),	
		ulTemplate: [
			'<li>{{item}}</li>'
		].join(''),
	}

	/* get template */
	function getTpl(name) {
		if ( skels[name] ) {
			return skels[name];
		} else {
			console.log('template skels[' + name + '] does not exists. File: templates.js, getTemplate');
			return false;
		}
	}
	
	function showMenu(template, model){
		var template =  template || '',
		model = model || {},
		templateView = '',
		columnListView = '',
		columnListHideView = '';
		
		if(template && Object.keys(model).length > 0){
			if(Object.keys(model.columnList).length > 0){
				for (var item = 0; item < model.columnList.length; item++) {
					columnListView += '<li>'+ model.columnList[item]+'</li>';
				}
			}
			if(Object.keys(model.columnListHide).length > 0){
				for (var item = 0; item < model.columnListHide.length; item++) {
					columnListHideView += '<li>'+ model.columnListHide[item]+'</li>';
				}			
			}
			templateView = getTpl(template).replace(/{liItemShow}/g, columnListView);
			templateView = templateView.replace(/{liItemHide}/g, columnListHideView);
		}
		return templateView;
	}
	
	function showRow(template, model){
		var template =  template || '',
		model = model || {},
		templateView = '',
		rowView = '';
		if(template && Object.keys(model).length > 0){
			var columnList = model.columnList;
			for (var item = 0; item < columnList.length; item++) {
				var active_up = '',	
				active_down = '';			
				if (model.currData.sortname == columnList[item]){ 
					if(model.currData.sortorder == 'desc') {
						active_up = "active"; 
					} else if(model.currData.sortorder == 'asc') {
						active_down = "active"; 
					}
				}
				
				if("client_pb" != columnList[item]){ 
					rowView = getTpl(template).replace(/{item}/g, columnList[item]);
					rowView = rowView.replace(/{active_up}/g, active_up);	
					rowView = rowView.replace(/{active_down}/g, active_down);
				} else {
					rowView =  '<li id="'+ columnList[item] +'">'+ columnList[item] +'</li>';
				}	
				templateView += rowView;				
			}	
		}
		return templateView;
	}
	
	function dynTpl(template, model) {
		var template =  template || '',
		model = model || {},
		templateView = '';
		
		if(template && Object.keys(model).length > 0){
			var columnList = model.columnList;
			for (var item = 0; item < columnList.length; item++) {
				templateView += getTpl(template).replace(/{item}/g, columnList[item]);			
			}	
		}
		return templateView;
	}
	
	function showDynTpl(template, model) {
		var template =  template || '',
		model = model || {},
		templateView = '';
		rowView = '';
		
		if(template && Object.keys(model).length > 0){
			var columnList = Object.keys(model);
			rowView = template;
			for (var item = 0; item < columnList.length; item++) {
				var key = columnList[item];
				rowView = rowView.replace(new RegExp('{'+ columnList[item] +'}'), model[columnList[item]]);	
			}
		}
		return rowView;
	}
	
	
	return {
		getTpl: getTpl, 
		showMenu: showMenu,
		showRow: showRow,
		dynTpl: dynTpl,
		showDynTpl: showDynTpl
	}
})(window, jQuery); 
