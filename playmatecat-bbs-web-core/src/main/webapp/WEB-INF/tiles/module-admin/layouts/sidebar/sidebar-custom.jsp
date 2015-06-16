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
	<%-- <li>
		<!-- 此处必须加dropdown-toggle子级才可以展开 -->
		<a href="#" class="dropdown-toggle">
			<i class="menu-icon fa fa-leaf"></i>
			<span class="menu-text"> Item text<!--1级导航通知消息数量<span class="badge badge-info">4</span> --></span>
			<b class="arrow fa fa-angle-down"></b>
			<!-- arrow down icon if there's a submenu -->
		</a>

		<b class="arrow"></b>
		<!-- optional arrow for minimized menu & hover submenu -->

		<ul class="submenu">
			<!-- second level item -->
			<!-- 如果需要选中在li上加上class="active",其他li.active remove active -->
			<li>
				<a href="#">
					<i class="menu-icon fa fa-caret-right"></i> level 2 item text <b class="arrow fa fa-angle-down"></b>
				</a>
			</li>
		</ul>
	</li> --%>
	
	
	<!-- 1级 -->
	<li class="open">
		<!-- 此处必须加dropdown-toggle子级才可以展开 -->
		<a href="#" class="dropdown-toggle">
			<i class="menu-icon fa fa-credit-card"></i>
			<span class="menu-text">授权面板</span>
			<b class="arrow fa fa-angle-down"></b>
			<!-- arrow down icon if there's a submenu -->
		</a>

		<b class="arrow"></b>
		<!-- optional arrow for minimized menu & hover submenu -->

		<ul class="submenu">
			<!-- second level item -->
			<!-- 如果需要选中在li上加上class="active",其他li.active remove active -->
			<li>
				<a href="#">
					<i class="menu-icon fa fa-caret-right"></i>角色管理
				</a>
			</li>
			
			<li>
				<a href="#">
					<i class="menu-icon fa fa-caret-right"></i>权限管理
				</a>
			</li>
			
			
			<li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>URI管理
                </a>
            </li>
		</ul>
	</li>


    <!-- 1级 -->
    <li>
        <!-- 此处必须加dropdown-toggle子级才可以展开 -->
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-user"></i>
            <span class="menu-text">用户面板</span>
            <b class="arrow fa fa-angle-down"></b>
            <!-- arrow down icon if there's a submenu -->
        </a>

        <b class="arrow"></b>
        <!-- optional arrow for minimized menu & hover submenu -->

        <ul class="submenu">
            <!-- second level item -->
            <!-- 如果需要选中在li上加上class="active",其他li.active remove active -->
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>账号管理
                </a>
            </li>
            
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>分配角色
                </a>
            </li>
            
        </ul>
    </li>
	
	
	<!-- 1级 -->
    <li>
        <!-- 此处必须加dropdown-toggle子级才可以展开 -->
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-th-large"></i>
            <span class="menu-text">板块面板</span>
            <b class="arrow fa fa-angle-down"></b>
            <!-- arrow down icon if there's a submenu -->
        </a>

        <b class="arrow"></b>
        <!-- optional arrow for minimized menu & hover submenu -->

        <ul class="submenu">
            <!-- second level item -->
            <!-- 如果需要选中在li上加上class="active",其他li.active remove active -->
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>组别管理
                </a>
            </li>
            
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>板块管理
                </a>
            </li>
            
        </ul>
    </li>
	
	
	
	
	<!-- 1级 -->
    <li>
        <!-- 此处必须加dropdown-toggle子级才可以展开 -->
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-file-text"></i>
            <span class="menu-text">文章面板</span>
            <b class="arrow fa fa-angle-down"></b>
            <!-- arrow down icon if there's a submenu -->
        </a>

        <b class="arrow"></b>
        <!-- optional arrow for minimized menu & hover submenu -->

        <ul class="submenu">
            <!-- second level item -->
            <!-- 如果需要选中在li上加上class="active",其他li.active remove active -->
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>主题管理
                </a>
            </li>
            
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>主题审核
                </a>
            </li>
            
            
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>文章管理
                </a>
            </li>
            
            
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>评论管理
                </a>
            </li>
            
        </ul>
    </li>



    <!-- 1级 -->
    <li>
        <!-- 此处必须加dropdown-toggle子级才可以展开 -->
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-picture-o"></i>
            <span class="menu-text">图片面板</span>
            <b class="arrow fa fa-angle-down"></b>
            <!-- arrow down icon if there's a submenu -->
        </a>

        <b class="arrow"></b>
        <!-- optional arrow for minimized menu & hover submenu -->

        <ul class="submenu">
            <!-- second level item -->
            <!-- 如果需要选中在li上加上class="active",其他li.active remove active -->
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>图片审核
                </a>
            </li>
            
        </ul>
    </li>
    
    
    
    
    <!-- 1级 -->
    <li>
        <!-- 此处必须加dropdown-toggle子级才可以展开 -->
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-suitcase"></i>
            <span class="menu-text">广告面板</span>
            <b class="arrow fa fa-angle-down"></b>
            <!-- arrow down icon if there's a submenu -->
        </a>

        <b class="arrow"></b>
        <!-- optional arrow for minimized menu & hover submenu -->

        <ul class="submenu">
            <!-- second level item -->
            <!-- 如果需要选中在li上加上class="active",其他li.active remove active -->
            <li>
                <a href="#">
                    <i class="menu-icon fa fa-caret-right"></i>广告管理
                </a>
            </li>
            
        </ul>
    </li>
    
    
    
    
    
    
    
</ul>


<!-- sidebar底部按钮,将list缩进为缩略图标 -->
<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse" style="z-index: 1;">
	<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
</div>



