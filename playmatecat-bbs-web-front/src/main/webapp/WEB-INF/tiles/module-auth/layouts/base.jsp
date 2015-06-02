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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<%-- 若用户有chrome,那么ie浏览时让IE使用chrome内核 --%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<%-- 描述信息 --%>
<meta name="description" content="<tiles:getAsString name="description" />" />

<%-- 关键词逗号分割 --%>
<meta name="keywords" content="<tiles:getAsString name="keywords" />">

<title><tiles:getAsString name="title" /></title>
</head>

<%-- 可选皮肤有no-skin,skin-1,skin-2,skin-3 --%>
<body class="no-skin">
	<div class="navbar navbar-default" id="navbar">
		<%-- 顶部navbar --%>
		<tiles:insertAttribute name="navbar" ignore="true"/>
	</div>

	<div class="main-container" id="main-container">
		<div class="sidebar responsive" id="sidebar">
			<%-- 左侧sidebar --%>
			<tiles:insertAttribute name="sidebar" ignore="true"/>
		</div>

		<div class="main-content">
			<div class="breadcrumbs">
				<%-- 顶部下方的breadcrumbs面包屑导航条 --%>
				<tiles:insertAttribute name="breadcrumbs" ignore="true"/>
			</div>

			<div class="page-content">
				<%-- setting box goes here if needed 
				如果需要这里可以加入设置框--%>

				<div class="row">
					<div class="col-xs-12">
						<!-- page content goes here 在这里写入你的页面content内容-->
						<tiles:insertAttribute name="content" ignore="true"/>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->

			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->

		<!-- footer area -->

	</div>
	<!-- /.main-container -->

	<!-- list of script files -->

</body>
</html>