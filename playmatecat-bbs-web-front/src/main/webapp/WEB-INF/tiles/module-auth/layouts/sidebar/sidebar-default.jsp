<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include/taglib.jsp"%>

<!-- 左侧的sidebar布局 -->

<%-- 
<!-- sidebar顶部的小工具条,一般用不到 -->
<div class="sidebar-shortcuts" id="sidebar-shortcuts">

  <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
    <button class="btn btn-success"><i class="ace-icon fa fa-signal"></i></button>
    <button class="btn btn-info"><i class="ace-icon fa fa-pencil"></i></button>
    <button class="btn btn-warning"><i class="ace-icon fa fa-users"></i></button>
    <button class="btn btn-danger"><i class="ace-icon fa fa-cogs"></i></button>
  </div>

  <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
    <span class="btn btn-success"></span>
    <span class="btn btn-info"></span>
    <span class="btn btn-warning"></span>
    <span class="btn btn-danger"></span>
  </div>

</div>
--%>



<!-- sidebar列表 -->
<ul class="nav nav-list">
	<!-- 1级导航 -->
	<li>
		<!-- 此处必须加dropdown-toggle子级才可以展开 -->
		<a href="#" class="dropdown-toggle">
			<i class="menu-icon fa fa-leaf"></i>
			<span class="menu-text"> Item text </span>
			<b class="arrow fa fa-angle-down"></b>
			<!-- arrow down icon if there's a submenu -->
		</a>

		<b class="arrow"></b>
		<!-- optional arrow for minimized menu & hover submenu -->

		<ul class="submenu">
			<!-- second level item -->
			<li>
				<a href="#">
					<i class="menu-icon fa fa-caret-right"></i> level 2 item text <b class="arrow fa fa-angle-down"></b>
				</a>
			</li>
		</ul>
	</li>


	

</ul>


<!-- sidebar底部按钮,将list缩进为缩略图标 -->
<div class="sidebar-toggle sidebar-collapse">...</div>



