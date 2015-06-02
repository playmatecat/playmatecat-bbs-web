<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include/taglib.jsp"%>
<div id="navbar-container" class="navbar-container">

	<%-- toggle buttons are here or inside brand container移动端隐藏菜单按钮 --%>
	<!-- #section:basics/sidebar.mobile.toggle -->
    <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
      <span class="sr-only">Toggle sidebar</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <!-- /section:basics/sidebar.mobile.toggle -->

	<div class="navbar-header pull-left">
		<!-- brand text here -->
	</div>
	<!-- /.navbar-header -->


	<div class="navbar-buttons navbar-header pull-right ">
		<ul class="nav ace-nav">
			<!-- user buttons such as messages, notifications and user menu -->
		</ul>
	</div>
	<!-- /.navbar-buttons -->


	<nav class="navbar-menu pull-left">
		<!-- optional menu & form inside navbar -->
	</nav>
	<!-- /.navbar-menu -->

</div>
<!-- /.navbar-container -->
