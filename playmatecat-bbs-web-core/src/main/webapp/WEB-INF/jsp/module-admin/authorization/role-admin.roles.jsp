<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include/taglib.jsp"%>


<!-- page-content内容部分,仅供参考的模板 -->


<%--  一般用不到
<!-- 内容最侧浮动点击可弹出工具小窗 -->
<div class="ace-settings-container" id="ace-settings-container">
	<!-- settings box goes here -->
</div>
--%>

<!-- 顶部内容标题(在breadcrumbs下方) -->
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">角色管理</h3>
	</div>
</div>


<!-- 实际的内容部分 -->
<div class="row">
	<div id="main-content" class="col-xs-12">
		<!-- page content goes here -->

		<div class="animated fadeIn">

			<div id="btnRow" class="well">
			    <button class="btn btn-primary btn-info  btn-sm">
                    <i class="ace-icon fa fa-search-plus align-top bigger-125"></i> 查询
                </button>
				<button class="btn btn-warning btn-sm">
					<i class="ace-icon fa fa-plus-square-o align-top bigger-125"></i> 新增
				</button>
				<button class="btn btn-danger btn-sm">
					<i class="ace-icon fa fa-trash-o align-top bigger-125"></i> 删除
				</button>
			</div>


			<div class="row">
				<div id="tableRow" class="col-xs-12">
					    <table id="listTable" class="table table-striped table-bordered table-hover">
		                <thead>
		                    <tr>
		                        <th class="center"><label class="position-relative"> <input type="checkbox" class="ace" /> <span class="lbl"></span>
		                        </label></th>
		                        <th>名称</th>
		                        <th>编码</th>
		                        <th>描述</th>
		                        <th><!-- 操作控件 --></th>
		                    </tr>
		                </thead>
		
		                <tbody>
		                    <c:forEach items="${authorizationVO.rolePage.list}" var="roleList">
		                    <tr>
		                        <!-- checkbox -->
		                        <td class="center">
		                            <label class="position-relative"> <input type="checkbox" class="ace" /> 
		                            <span class="lbl"></span>
		                            </label>
		                        </td>
		                        <td><input type="hidden" value="${roleList.id}" />${roleList.name}</td>
		                        <td>${roleList.code}</td>
		                        <td>${roleList.description}</td>
		                        <!-- <td><a href="#">app.com</a></td> -->
		                        <!-- <td>$45</td>
		                        <td class="hidden-480">3,330</td>
		                        <td>Feb 12</td>
		
		                        <td class="hidden-480"><span class="label label-sm label-warning">Expiring</span></td>
		 -->
		
		
		                        <!-- 操作控件列 -->
		                        <td>
		                            <div class="hidden-sm hidden-xs action-buttons">
		                                <a class="green" href="#"> <i class="ace-icon fa fa-pencil bigger-130">编辑</i>
		                                </a>
		                            </div>
		                            
		                            <!-- 适配手机收缩按钮 -->
		                            <div class="hidden-md hidden-lg">
		                                <div class="inline position-relative">
		                                    <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
		                                        <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
		                                    </button>
		
		                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
		                                        <li><a href="#" class="tooltip-success" data-rel="tooltip" title="Edit"> <span class="green"> <i
		                                                    class="ace-icon fa fa-pencil-square-o bigger-120"></i>
		                                            </span>
		                                        </a></li>
		                                    </ul>
		                                </div>
		                            </div>
		                        </td>
		                    </tr>
		                </c:forEach>
		
		
		
		
		
		            <!--    <form method="post" action="/testPut">
		                    <input type="hidden" name="_method" value="delete" />  
		                    <input type="hidden" value="abc" name="test">
		                    <button type="submit">确定</button>
		                </form> -->
		
		
		
		
		
		
		
		
		                </tbody>
		            </table>
		            <div id="page1" class="m-pagination pull-right"></div>
				</div>
				<!-- /#tableRow -->
			</div>

		</div>

<!-- <a href="#modal-table" role="button" class="green" data-toggle="modal"> Table Inside a Modal Box </a> -->





<a id="id-btn-dialog1"> Table Inside a Modal Box </a>
















	</div>
	<!-- /#main-content -->
</div>









<div id="modal-table" class="modal fade" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header no-padding">
                       head
                    </div>

                    <div class="modal-body no-padding">
                       body
                    </div>

                    <div class="modal-footer no-margin-top">
                        footer
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>







<div id="dialog-message" class="hide">
                                            <p>
                                                This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.
                                            </p>

                                            <div class="hr hr-12 hr-double"></div>

                                            <p>
                                                Currently using
                                                <b>36% of your storage space</b>.
                                            </p>
                                        </div><!-- #dialog-message -->














<!-- inline scripts related to this page -->
<style type="text/css">
/*分页图标*/
.pc-page-icon {
	margin-top: 10px;
}
</style>
<script type="text/javascript">


function initPagination() {
	var sreenPageBtnCount = 7;
	var screenShowJump = true;
    if(window.screen.width < 767) {
        sreenPageBtnCount = 5;
        screenShowJump =false;
    }
    $("#page1").page({
        total: '${authorizationVO.rolePage.total}',
        pageBtnCount:sreenPageBtnCount,
        firstBtnText: '<i data-page-index="{pageIndex}" class="pc-page-icon fa fa-step-backward"></i>',
        lastBtnText: '<i data-page-index="{pageIndex}" class="pc-page-icon fa fa-step-forward"></i>',
        prevBtnText: '<i data-page-index="{pageIndex}" class="pc-page-icon fa fa-chevron-left"></i>',
        nextBtnText: '<i data-page-index="{pageIndex}" class="pc-page-icon fa fa-chevron-right"></i>',
        showInfo: true,
        showJump: screenShowJump,
        jumpBtnText:'跳转',
        showPageSizes: false,
        infoFormat: '第{start}到{end}条，共{total}条'
    });
}

var commons = {
		
		/**
		* 作用:自动处理全选单选
		* 本函数绑定在table所有的checkbox上
		*/
		table_checkbox_click : function() {
			//表头全选
			if($(this).closest('thead').length > 0 && 
					$(this)[0] == $(this).closest('table').find('thead> tr > th:first-child input:checkbox')[0]) {
				//点击全选时统一切换状态
			    var that = this;
			    $(this).closest('table').find('tr > td:first-child input:checkbox')
			    .each(function(){
			        this.checked = that.checked;
			        $(this).closest('tr').toggleClass('selected');
			    });
			}
			
			//单选
			if($(this).closest('tbody').length > 0 && 
					$(this)[0] == $(this).closest('tr').find('td:first-child input:checkbox')[0]) {
				//检查是否全选
				var all_checked = true;
				//遍历tbody所有checkbox的状态
				$(this).closest('tbody').find('tr > td:first-child input:checkbox')
				.each(function(){
					if(!this.checked) {
						all_checked = false;
						//终止循环
						return false;
					}
				});
				var allcheckElem =$(this).closest('table').find('thead > tr > th:first-child input:checkbox');
				allcheckElem.prop("checked",all_checked);
			}
		}
}




$(document).ready(function(){

	initPagination();
	//表单全选事件
	$("#listTable").on('click', 'input:checkbox', commons.table_checkbox_click);
	
	
	
	
	
	$( "#id-btn-dialog1" ).on('click', function(e) {
        e.preventDefault();
        
        //api:http://api.jqueryui.com/dialog/
        //effect:effectBlind,effectBounce,effectClip,effectDrop,effectExplode,effectFade,effectFold,effectHighlight,effectSize,effectScale
        //effectPuff,effectPulsate,effectShake,effectSlide,effectTransfer
        var dialog = $( "#dialog-message" ).removeClass('hide').dialog({
            modal: true,
            title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='ace-icon fa fa-check'></i> jQuery UI Dialog</h4></div>",
            title_html: true,
            show: {
                effect: "puff",
                duration: 300
            },
            hide: {
                effect: "explode",
                duration: 300
            },
            buttons: [ 
                {
                    text: "Cancel",
                    "class" : "btn btn-xs",
                    click: function() {
                        $( this ).dialog( "close" ); 
                    } 
                },
                {
                    text: "OK",
                    "class" : "btn btn-primary btn-xs",
                    click: function() {
                        $( this ).dialog( "close" ); 
                    } 
                }
            ]
        });
	
	});
	
	
	
});


</script>
        
        
        
        
        
        
        
        
        