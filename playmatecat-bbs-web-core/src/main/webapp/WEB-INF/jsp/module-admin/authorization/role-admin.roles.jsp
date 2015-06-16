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
<div class="page-header">
	<!-- page header goes here -->
</div>


<!-- 实际的内容部分 -->
<div class="row">
	<div id="main-content" class="col-xs-12">
		<!-- page content goes here -->

		<div class="animated fadeIn">
			<table id="listTable" class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th class="center"><label class="position-relative"> <input type="checkbox" class="ace" /> <span class="lbl"></span>
						</label></th>
						<th>角色id</th>
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
						<td>${roleList.id}</td>
						<td>${roleList.name}</td>
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
								<a class="blue" href="#"> <i class="ace-icon fa fa-search-plus bigger-130"></i>
								</a> <a class="green" href="#"> <i class="ace-icon fa fa-pencil bigger-130"></i>
								</a> <a class="red" href="#"> <i class="ace-icon fa fa-trash-o bigger-130"></i>
								</a>
							</div>

							<div class="hidden-md hidden-lg">
								<div class="inline position-relative">
									<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
										<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
									</button>

									<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
										<li><a href="#" class="tooltip-info" data-rel="tooltip" title="View"> <span class="blue"> <i
													class="ace-icon fa fa-search-plus bigger-120"></i>
											</span>
										</a></li>

										<li><a href="#" class="tooltip-success" data-rel="tooltip" title="Edit"> <span class="green"> <i
													class="ace-icon fa fa-pencil-square-o bigger-120"></i>
											</span>
										</a></li>

										<li><a href="#" class="tooltip-error" data-rel="tooltip" title="Delete"> <span class="red"> <i
													class="ace-icon fa fa-trash-o bigger-120"></i>
											</span>
										</a></li>
									</ul>
								</div>
							</div>
						</td>
					</tr>
                </c:forEach>





			<!-- 	<form method="post" action="/testPut">
					<input type="hidden" name="_method" value="delete" />  
					<input type="hidden" value="abc" name="test">
					<button type="submit">确定</button>
				</form> -->








				</tbody>
			</table>
			
			<div id="page1" class="m-pagination pull-right"></div>
		</div>












	</div>
	<!-- /#main-content -->
</div>


<!-- inline scripts related to this page -->
<style type="text/css">
/*分页图标*/
.pc-page-icon {
	margin-top: 10px;
}
</style>
<script type="text/javascript">

$(document).ready(function(){
	initPagination();
});

function initPagination() {
	var sreenPageBtnCount = 7;
	var screenShowJump = true;
    if(window.screen.width < 767) {
        sreenPageBtnCount = 5;
        screenShowJump =false;
    }
    $("#page1").page({
        total: '${authorizationVO.rolePage.total}${authorizationVO.rolePage.total}${authorizationVO.rolePage.total}',
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

$(document).on('click', 'th input:checkbox' , function(){
    var that = this;
    $(this).closest('table').find('tr > td:first-child input:checkbox')
    .each(function(){
        this.checked = that.checked;
        $(this).closest('tr').toggleClass('selected');
    });
});
</script>
        
        
        
        
        
        
        
        
        