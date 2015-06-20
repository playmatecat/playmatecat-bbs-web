<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
    prefix="tilesx"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--禁止缩放 --%>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<%-- 若用户有Google Chrome Frame,那么ie浏览时让IE使用chrome内核 --%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<%-- 若是双核浏览器,默认webkit渲染(chrome) --%>
<meta name="renderer" content="webkit"> 

<%-- 描述信息 --%>
<meta name="description"
	content="<tiles:getAsString name="description" />" />

<%-- 关键词逗号分割 --%>
<meta name="keywords" content="<tiles:getAsString name="keywords" />">

<title><tiles:getAsString name="title" /></title>


<link href="${ctx}/static/lib/ace-admin-v1.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
<%-- <link href="${ctx}/static/lib/ace-admin-v1.3.2/dist/css/font-awesome.min.css" rel="stylesheet" /> --%>
<link href="http://apps.bdimg.com/libs/fontawesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="${ctx}/static/lib/ace-admin-v1.3.2/dist/css/jquery-ui.min.css" rel="stylesheet" />
<!-- only if needed -->

<link href="${ctx}/static/lib/ace-admin-v1.3.2/dist/css/ace-fonts.min.css" rel="stylesheet" />
<!-- you can also use google hosted fonts -->

<link href="${ctx}/static/lib/ace-admin-v1.3.2/dist/css/ace.min.css" rel="stylesheet"
	class="ace-main-stylesheet" />
<!--[if lte IE 9]>
  <link href="${ctx}/static/lib/ace-admin-v1.3.2/dist/css/ace-part2.min.css" rel="stylesheet" class="ace-main-stylesheet" />
 <![endif]-->

<link href="${ctx}/static/lib/ace-admin-v1.3.2/dist/css/ace-skins.min.css" rel="stylesheet" />
<!-- only if needed -->
<link href="${ctx}/static/lib/ace-admin-v1.3.2/dist/css/ace-rtl.min.css" rel="stylesheet" />
<!-- only if needed -->

<!--[if lte IE 9]>
 <link href="${ctx}/static/lib/ace-admin-v1.3.2/dist/css/ace-ie.min.css" rel="stylesheet" />
 <![endif]-->


<!-- 此处写入插件的 css -->
<link href="http://apps.bdimg.com/libs/animate.css/3.1.0/animate.min.css" rel="stylesheet" />
<%-- 不好用
<link href="${ctx}/static/lib/JqueryPagination-v1.2.6/jquery.pagination.min.css" rel="stylesheet"> --%>
<link href="${ctx}/static/lib/jqPagination-1.4/css/jqpagination.css" rel="stylesheet">

<link href="${ctx}/static/css/module-admin/common/common.css" rel="stylesheet">





<script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/ace-extra.min.js"></script>
<!--[if lte IE 8]>
   <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/html5shiv.min.js"></script>
   <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/respond.min.js"></script>
  <![endif]-->





<!-- list of script files -->
    <!--[if !IE]> -->
    <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <%-- <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/jquery.min.js"></script> --%>
    <!-- <![endif]-->
    <!--[if lte IE 9]>
    <script src="http://apps.bdimg.com/libs/jquery/1.11.1/jquery.min.js"></script>
    <%-- <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/jquery1x.min.js"></script> --%>
    <![endif]-->

    <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/bootstrap.min.js"></script>

    <!-- ie8 canvas if required for plugins such as charts, etc -->
    <!--[if lte IE 8]>
    <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/excanvas.min.js"></script>
    <![endif]-->

    <!-- 顺序上在这里写插件js -->
    <%-- jquery datatable (感觉不太好用)
    <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/jquery.dataTables.min.js"></script>
    <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/jquery.dataTables.bootstrap.min.js"></script> --%>
    <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/jquery-ui.min.js"></script>
    <%-- 不好用
    <script src="${ctx}/static/lib/JqueryPagination-v1.2.6/jquery.pagination-1.2.6-custom.min.js"></script> --%>
    <script src="${ctx}/static/lib/jqPagination-1.4/js/jquery.jqpagination.min.js"></script>

    <!-- 通用js -->
    <script src="${ctx}/static/js/module-admin/common/common.js"></script>
    <!-- 覆盖某些方法js -->
    <script src="${ctx}/static/js/module-admin/common/override.js"></script>

    <!-- 顺序上这里写ace自带插件 -->
    <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/ace-elements.min.js"></script>
    <script src="${ctx}/static/lib/ace-admin-v1.3.2/dist/js/ace.min.js"></script>






</head>

<%-- 可选皮肤有no-skin,skin-1,skin-2,skin-3 --%>
<body class="no-skin">
	<div class="navbar navbar-default navbar-collapse" id="navbar">
		<%-- 顶部navbar --%>
		<tiles:insertAttribute name="navbar" ignore="true" />
	</div>

	<div class="main-container" id="main-container">
		<div class="sidebar responsive-min" id="sidebar">
			<%-- 左侧sidebar --%>
			<tiles:insertAttribute name="sidebar" ignore="true" />
		</div>

		<div class="main-content">
			<%-- <div class="breadcrumbs" id="breadcrumbs">
				顶部下方的breadcrumbs面包屑导航条
				<tiles:insertAttribute name="breadcrumbs" ignore="true" />
			</div> --%>

			<div class="page-content">
			     <!-- ajaxload必须里面再套这个DIV -->
			     <div id="base-page-content">
			     </div>
                <%-- <tiles:insertAttribute name="page-content" ignore="true" /> --%>
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->

		<!-- footer area -->
		<div class="footer">
			<div class="footer-inner">
				<div class="footer-content">
					<!-- footer content here -->
				</div>
			</div>
		</div>


	</div>
	<!-- /.main-container -->













	


</body>
</html>