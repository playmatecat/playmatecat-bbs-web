<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include/taglib.jsp"%>
<div id="navbar-container" class="navbar-container">

	<%-- toggle buttons are here or inside brand container移动端隐藏菜单按钮,通过 data-target来确定移动端时缩放的是哪个控件--%>
	<!-- #section:basics/sidebar.mobile.toggle -->
    <!-- mobile缩进隐藏用户和消息工具的按钮 -->
    <button class="pull-right navbar-toggle navbar-toggle-img collapsed" type="button"
		data-toggle="collapse" data-target=".navbar-buttons,.navbar-menu">
   		<img src="${ctx}/static/lib/ace-admin-v1.3.2/dist/avatars/user.jpg" alt="Jason's Photo" />
 	</button>
    <!-- /section:basics/sidebar.mobile.toggle -->
    
    
	
	
	<%-- logo 标记 --%>
	<div class="navbar-header pull-left">
		<a href="#" class="navbar-brand"> 
			<small><!-- logo --><i class="ace-icon fa fa-leaf"></i>
			玩伴BBS管理平台
			</small>
		</a>
	</div>
	<!-- /.navbar-header -->
	

	<%-- 顶端navbar右侧的工具,例如显示消息,登录用户名等 user buttons such as messages, notifications and user menu --%>
	<!-- class=.navbar-collapse .collapse可以用来对mobile设备进行隐藏(即不显示) -->
	<div class="navbar-buttons navbar-header pull-right navbar-collapse collapse">
		<ul class="nav ace-nav">
			<%-- 顶端navbar右侧的工具,例如显示消息,登录用户名等 user buttons such as messages, notifications and user menu --%>



			<!-- 范例user button -->
			<li class="light-blue2">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
					<i class="ace-icon fa fa-tasks"></i> <span class="badge badge-grey">5<!-- 任务数量 --></span>
				</a>
				<ul class="dropdown-menu dropdown-navbar 
					dropdown-menu-right dropdown-caret dropdown-close">
					<li class="dropdown-header">小控件的标题</li>
					<!-- 小控件内容  默认内容高度是200px,你可以通过data-size修改高度-->
					<li class="dropdown-content" data-size="200">
						<!-- 这里你不一定要用ul -->
						<ul class="dropdown-menu dropdown-navbar">
							<li>item#1.</li>
							<li>item#2.</li>
						</ul>
					</li>
					
					<li class="dropdown-footer">bottom text or link</li>
				</ul>
			</li>
			
			
			<!-- 范例user button -->
			<li class="light-blue2">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
					<i class="ace-icon fa fa-bell"></i> <span class="badge badge-important">5<!-- 重要事件数量 --></span>
				</a>
				<ul class="dropdown-menu dropdown-navbar 
					dropdown-menu-right dropdown-caret dropdown-close">
					<li class="dropdown-header">小控件的标题</li>
					<!-- 小控件内容  默认内容高度是200px,你可以通过data-size修改高度-->
					<li class="dropdown-content" data-size="200">
						<!-- 这里你不一定要用ul -->
						<ul class="dropdown-menu dropdown-navbar">
							<li>item#1.</li>
							<li>item#2.</li>
						</ul>
					</li>
					
					<li class="dropdown-footer">bottom text or link</li>
				</ul>
			</li>
			
			
			

			
			<!-- 范例user menu(包括用户欢迎登录信息) -->
			<li class="light-blue">
				<a data-toggle="dropdown" href="#" class="dropdown-toggle"> 
				<img class="nav-user-photo animated bounce" src="${ctx}/static/lib/ace-admin-v1.3.2/dist/avatars/user.jpg" alt="Jason's Photo" /> 
				<span class="user-info"> <small>Welcome,</small> Jason
				</span> <i class="ace-icon fa fa-caret-down"></i>
				</a>
				<ul class="user-menu dropdown-menu dropdown-menu-right dropdown-yellow dropdown-caret dropdown-close">
					<li><a href="#"><i class="ace-icon fa fa-cog"></i> Settings</a></li>
					<li class="divider"></li>
					<li><a href="#"><i class="ace-icon fa fa-power-off"></i> Logout</a></li>
				</ul>
			</li>








		</ul>
	</div>
	<!-- /.navbar-buttons -->

	<%-- 
	<!-- logo旁边的横向排列的菜单,一般用不到 -->
	<nav role="navigation" class="navbar-menu pull-left collapse navbar-collapse">
		<ul class="nav navbar-nav">

			<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"> item # 1 </a>
				<ul class="dropdown-menu dropdown-light-blue dropdown-caret">
					<!-- optional submenu items -->
				</ul></li>

			<li><a href="#"> item # 2 </a></li>

		</ul>

		<!-- you can also have a form here(这里范例了如何弄一个searchbox的菜单) -->
		<form class="navbar-form navbar-left form-search" role="search">
			<div class="form-group">
				<input type="text" placeholder="search" />
			</div>
			<button type="button" class="btn btn-xs btn-info2">
				<i class="ace-icon fa fa-search icon-only bigger-110"></i>
			</button>
		</form>
	</nav>
	<!-- /.navbar-menu -->
	--%>
	
</div>
<!-- /.navbar-container -->
