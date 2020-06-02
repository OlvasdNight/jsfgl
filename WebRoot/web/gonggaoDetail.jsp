
<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = path;
	path = path+"/web";
%>

<!DOCTYPE html>
<!-- saved from url=(0039)http://www.1012china.com/web/index.html -->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<meta name="renderer" content="webkit">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<title>健身中心</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/reset.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/style1.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/swiper.min.css">


		<script type="text/javascript" src="<%=path%>/js/jquery-3.2.1.js"></script>
		<script src="<%=path%>/js/easySlider.js"></script>
		
		<script language=JavaScript>
			function toDetail(id) {
			
				var url="<%=basePath%>/chakanXM.action?id="+id;
				window.location.href=url;
			}
		</script>
		
		<style>
			cite {
			    float: right;
			    font-style: normal;
			    font-weight: normal;
			    color: #969696;
			    padding-right: 6px;
			}
		</style>


	</head>

	<body>
		<jsp:include page="page/head.jsp" />
		
		
		<section class="news-detail">
			<div class="content">
				<div class="hrader">
					<h2 id="newsTitle">${gonggao.name }</h2>
					<p class="date" id="newsDate" style="text-align:right;">${gonggao.cdate }</p>				</div>
				<div class="middle">
					${gonggao.miaoshu}
				</div>
				
			</div>
		</section>

		<jsp:include page="page/foot.jsp" />

	</body>
</html>