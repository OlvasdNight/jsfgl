<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
%>

<html>
	<head>
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=path%>/css/wukong-ui.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-select.min.css">
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap-select.min.js"></script>
		
		
		<base target="top" />
  		<script language='javascript'>
			function logout(){
				if(confirm("您确定要退出 健身房信息管理系统吗？")) {
					top.location = "<%=path%>/logout.jsp";
					return true;
				}
				return false;
			}
			function openPw(){
				 var url="<%=path%>/man/admin/adminPw.jsp";
				 window.location.href=url;
			}
			
			
	    </script>
	    <style type="text/css">
		.upwd {
		  	overflow: hidden;
		    height: 70px;
		    display: block;
		    color: #d8d8d8;
		}
		.upwd:hover {
		    color: #d8d8d8;
		}
		</style>

	</head>
	<!--
	<div class="row">
		<div class="col-lg-12">
			<div class="banner" id="banner"></div>
		</div>
	</div>
	-->
	
	<div class="dx-header">
		<div class="layui-main">
			<a class="logo" href="/"> <img src="<%=path%>/images/logo.png" alt="layui">
			</a>
			<h2 class="title">
				健身房信息管理系统
			</h2>
			<ul class="dx-nav">
				<li>
					<a target="_blank" style="color: #d8d8d8">欢迎您，<c:if test="${sessionScope.userType==0}">
												${sessionScope.admin.uname }
											</c:if>
											<c:if test="${sessionScope.userType==1}">
												${sessionScope.coach.name }[教练]
											</c:if>	   </a>
				</li>
				<li>
					<a href="<%=path%>/man/admin/adminPw.jsp" target='main' class="upwd" >
					<span><i class="glyphicon glyphicon-pencil"></i>
					</span><span>修改密码</span>
					</a>
				</li>
				<li onclick="return logout()">
					<span><i class="glyphicon glyphicon-log-out"></i>
					</span><span>退出登录</span>
				</li>
			</ul>
		</div>
	</div>


</html>
