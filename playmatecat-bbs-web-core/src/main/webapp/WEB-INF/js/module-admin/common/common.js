var _pc_commons = {
		
	/**
	 * 作用,更新某块区域的html
	 */
	ajax_content : function(selector,url,data) {
		$.ajax({
			  type:'get',
			  url: url,
			  data: data,
			  success: function(response) {
				  $(selector).html(response);
			  },
			  error:function() {
				  var content = '后台发生了一个异常!';
				  _pc_commons.error_alert(content);
			  }
		});
	},	
	
	/**
	 * 作用,调用某个ajax新增或者保存接口
	 * @type 类型 值为"insert"或者"update"
	 */
	ajax_save : function(type,url,data) {
		var method;
		if(type == 'insert') {
			method = 'post'
		} else if(type == 'update') {
			method = 'put'
		} else {
			throw new Error("参数值type不正确");
		}
		
		//处理ajax
		$.ajax({
			  type:method,
			  url: url,
			  data: data,
			  success: function(response) {
				  _pc_commons.success_alert("操作成功!");
			  },
			  error:function() {
				  var content = '后台发生了一个异常!';
				  _pc_commons.error_alert(content);
			  }
		});
			  
	},
	
	/**
	 * 当某个操作异常时候时,显示错误弹出层
	 */
	error_alert : function(content) {
		var title = 'ERROR';
		var html = '<div class="alert alert-block alert-danger animated shake" role="alert">'
			  	+ '<button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>'
			  	+ '<i class="ace-icon glyphicon glyphicon-remove-sign red"></i>  ' + content + '</div>';
		$('#message-box').html(html);
	},
	
	/**
	 * 当某个操作成功时候时,显示正确弹出层
	 */
	success_alert : function(content) {
		var title = 'ERROR';
		var html = '<div class="alert alert-block alert-success animated fadeIn" role="alert">'
			  	+ '<button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>'
			  	+ '<i class="ace-icon fa fa-check-circle green"></i>  ' + content + '</div>';
		$('#message-box').html(html);
	},

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


