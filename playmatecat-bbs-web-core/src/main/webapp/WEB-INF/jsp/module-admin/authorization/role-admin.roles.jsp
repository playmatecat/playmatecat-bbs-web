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
			<form class="form-inline row">
				<div class="form-group col-lg-2">
					<label>名称：</label><input class="input-sm" type="text" placeholder="名称" />
				</div>
				<div class="form-group col-lg-2">
					<label>编码：</label><input class="input-sm" type="text" placeholder="编码" />
				</div>
				<div class="form-group col-lg-2">
                    <label>描述：</label><input class="input-sm" type="text" placeholder="描述" />
                </div>
			</form>
		    
		    <div class="form-control-static row">
		        <div class="col-lg-12">
				    <button class="btn btn-primary btn-info  btn-sm">
			                  <i class="ace-icon fa fa-search-plus align-top bigger-125"></i> 查询
			              </button>
					<button class="btn btn-warning btn-sm" onclick="_role_admin.add_role()">
						<i class="ace-icon fa fa-plus-square-o align-top bigger-125"></i> 新增
					</button>
					<button class="btn btn-danger btn-sm">
						<i class="ace-icon fa fa-trash-o align-top bigger-125"></i> 删除
					</button>
				</div>
			</div>
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
		                    <c:forEach items="${rolePage.list}" var="roleList">
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
		                                <a onclick="_role_admin.edit_role(this)" class="green" href="javascript:void(0);"> <i class="ace-icon fa fa-pencil bigger-120">编辑</i>
		                                </a>
		                            </div>
		                            
		                            <!-- 适配手机收缩按钮 -->
		                            <div class="hidden-md hidden-lg">
		                                <div class="inline position-relative">
		                                    <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
		                                        <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
		                                    </button>
		
		                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
		                                        <li><a onclick="_role_admin.edit_role(this)" href="javascript:void(0);" class="tooltip-success" data-rel="tooltip" title="编辑"> <span class="green"> <i
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

					<div id="role-pagination" class="bigger-1x pagination pull-right">
						<a href="#" class="first" data-action="first">&laquo;</a> <a href="#" class="previous" data-action="previous">&lsaquo;</a> <input type="text"
							readonly="readonly" data-max-page="40" /> <a href="#" class="next" data-action="next">&rsaquo;</a> <a href="#" class="last" data-action="last">&raquo;</a>
					</div>


				</div>
				<!-- /#tableRow -->
			</div>

		</div>



	</div>
	<!-- /#main-content -->
</div>















<div id="dialog-message" class="hide">
	<div class="row">
		<div class="form-group col-lg-12">
			<label>名称：</label><input class="input-sm" type="text" placeholder="名称" />
		</div>
		<div class="form-group col-lg-12">
			<label>编码：</label><input class="input-sm" type="text" placeholder="编码" />
		</div>
		<div class="form-group col-lg-12">
			<label>描述：</label><input class="input-sm" type="text" placeholder="描述" />
		</div>
	</div>

</div><!-- #dialog-message -->














<!-- inline scripts related to this page -->
<style type="text/css">

</style>
<script type="text/javascript">

var _role_admin = {
	/**
	* 分页初始化函数
	*/
	initPagination : function() {
    $('#role-pagination').jqPagination({
            link_string : '/?page={page_number}',
            current_page : 1, //设置当前页 默认为1
            max_page : 10, //设置最大页 默认为1
            page_string : '{current_page}/{max_page}',
            paged : function(pageNo) {
                //按选择的pageNo跳转请求
            }
        });
    },
    
    edit_role : function(target) {
    	var options = {
                id : "dialog-message",
                buttons: [{
                    text: "Cancel",
                    "class": "btn btn-xs",
                    click: function() {
                        $(this).dialog("close");
                    }
                },
                {
                    text: "OK",
                    "class": "btn btn-primary btn-xs",
                    click: function() {
                        $(this).dialog("close");
                    }
                }]
        }
        var dialog = _pc_commons.jqueryui_dialog(options);
    },
    
    add_role : function() {
        var options = {
                id : "dialog-message",
                buttons: [{
                    text: "Cancel",
                    "class": "btn btn-xs",
                    click: function() {
                        $(this).dialog("close");
                    }
                },
                {
                    text: "OK",
                    "class": "btn btn-primary btn-xs",
                    click: function() {
                        $(this).dialog("close");
                    }
                }]
        }
        var dialog = _pc_commons.jqueryui_dialog(options);
    }
};





$(document).ready(function() {
    //初始化分页
    _role_admin.initPagination();
    
    //表单全选事件
    $('#listTable').on('click', 'input:checkbox', _pc_commons.table_checkbox_click);

    $('#id-btn-dialog2').on('click', function() {
    	$('#modal-table').modal('show');
    });
    
});
</script>
        
        
        
        
        
        
        
        
        