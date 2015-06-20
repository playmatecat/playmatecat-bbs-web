var _pc_commons = {

	/**
	 * 作用:自动处理全选单选
	 * 本函数绑定在table所有的checkbox上
	 */
	table_checkbox_click : function() {
		//表头全选
		if ($(this).closest('thead').length > 0
				&& $(this)[0] == $(this).closest('table').find(
						'thead> tr > th:first-child input:checkbox')[0]) {
			//点击全选时统一切换状态
			var that = this;
			$(this).closest('table').find(
					'tr > td:first-child input:checkbox').each(function() {
				this.checked = that.checked;
				$(this).closest('tr').toggleClass('selected');
			});
		}

		//单选
		if ($(this).closest('tbody').length > 0
				&& $(this)[0] == $(this).closest('tr').find(
						'td:first-child input:checkbox')[0]) {
			//检查是否全选
			var all_checked = true;
			//遍历tbody所有checkbox的状态
			$(this).closest('tbody').find(
					'tr > td:first-child input:checkbox').each(function() {
				if (!this.checked) {
					all_checked = false;
					//终止循环
					return false;
				}
			});
			var allcheckElem = $(this).closest('table').find(
					'thead > tr > th:first-child input:checkbox');
			allcheckElem.prop("checked", all_checked);
		}
	},


	/**
	 * 简化jqueryui的dialog使用
	 * @options:{
	 * <id>:对话框id
	 * [width]:宽度
	 * [height]:高度
	 * [titleHtml]:标题html
	 * [zIndex]:层级
	 * <buttons>:按钮样式
	 * }
	 * 
	 * buttons:[{
                text: "Cancel",
                "class": "btn btn-xs",
                click: function() {
                    $(this).dialog("close");
                }
	            },
	            ....
	            ]
	 */
	jqueryui_dialog : function(options) {
		
		var opts = {};
		if(typeof(options.width) == 'undefined') {
			opts.width = 300;
		} else {
			opts.width = options.width
		}
		
		if(typeof(options.height) == 'undefined') {
			opts.height = 'auto';
		}else {
			opts.height = options.height
		}
		
		if(typeof(options.titleHtml) == 'undefined') {
			opts.titleHtml = '';
		}else {
			opts.titleHtml = options.titleHtml
		}
		
		if(typeof(options.zIndex) == 'undefined') {
			opts.zIndex = 1000;
		}else {
			opts.zIndex = options.zIndex
		}
		
		var dialog = $("#" + options.id).removeClass('hide').removeClass('hidden').dialog({
            modal: true,
            draggable: false,
            resizable: false,
            zIndex: opts.zIndex,
            width: opts.width,
            height: opts.height,
            title: "<div class='widget-header widget-header-small'><h4 class='smaller'>"+ opts.titleHtml +"</h4></div>",
            title_html: true,
            show: {
                effect: "puff",
                duration: 300
            },
            hide: {
                effect: "explode",
                duration: 300
            },
            buttons: options.buttons
        });
		
		return dialog
	}
	
	
};


