<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css" >    
	<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<%=path%>/css/wukong-ui.css">
	<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-select.min.css">
    <script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap-select.min.js"></script>
</head>

<body>
<div class="row">
    <div class="col-lg-12">
        <ul class="breadcrumb wk-breadcrumb">
            <li><a>首页</a></li>
            <li><a>欢迎首页</a></li>
        </ul>
    </div>
</div>
    
    <div class="row">
        <div class="col-lg-12" style="height:100%">
            <div class="panel panel-default wk-panel ">
                <div class="panel-heading">
                   	欢迎 健身房信息管理系统 
                </div>
                
            </div>
        </div>
    </div>

</body>
</html>