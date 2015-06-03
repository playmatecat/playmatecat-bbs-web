<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--禁止缩放 --%>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<%-- 若用户有Google Chrome Frame,那么ie浏览时让IE使用chrome内核 --%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<%-- 若是双核浏览器,默认webkit渲染(chrome) --%>
<meta name="renderer" content="webkit"> 

<!-- 描述信息 -->
<meta name="description" content="<tiles:getAsString name="description" />" />

<!-- 关键词逗号分割 -->
<meta name="keywords" content="<tiles:getAsString name="keywords" />">


<title><tiles:getAsString name="title"/></title>
</head>
<body>




</body>
</html>