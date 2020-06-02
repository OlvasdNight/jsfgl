
<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = path;
	path = path+"/web";
%>

<!DOCTYPE html>
<!-- saved from url=(0063)http://www.1012china.com/web/mission_details.html?courseId=1494 -->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<meta name="renderer" content="webkit">
		<title>健身中心</title>
		<!--css-->
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/reset.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/pagination.css">
		<link rel="stylesheet" href="<%=path%>/css/kalendae.css" type="text/css" charset="utf-8">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/style1.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/style2.css">
		<link rel="stylesheet" href="<%=path%>/css/swiper.min.css">
		
	</head>

	<body>
		<jsp:include page="page/head.jsp" />

		<section class="mission-details">
		<div class="top">
			<div class="top-content">
				<img src="<%=basePath%>/${course.url}" alt="" id="topImg">
				<div class="Sports-text">
					<p id="courseName" style="padding-bottom:0">${course.name}</p>
					<p id="courseDic" style="white-space: pre-line;">教练：${course.coachname}</p>
					<p id="courseDic" style="white-space: pre-line;">${course.miaoshu}</p>
				</div>
				<h2 style="position: absolute;top: 580px;font-weight: bold;font-size: 28px;">课程费用:<label>￥${course.jiage}</label></h2>
			</div>
			
		</div>
		

		<div class="service_bg">
			<form  action="<%=basePath%>/yuyue.action" name="formAdd" method="post">
			<div class="service" >
				<h2>便于更好服务您</h2>
				<p>如果您对我们的会所感兴趣，请留下您的信息。</p>
				<input type="hidden" name="courseid"  value="${course.id}">
				<input type="hidden" name="coachid"  value="${course.coachid}">
				<input type="hidden" name="feiyong"  value="${course.jiage}">
				<div class="inp"  style="margin-left: 52px;">
					<span>姓名：</span>
					<input type="text" name="userName"  readonly="readonly" value="${sessionScope.user.name}">
				</div>
				<div class="inp" style="margin-left: 52px;">
					<span>电话：</span>
					<input type="text" name="tel" maxlength="20" required="required" value="${sessionScope.user.tel}">
				</div>
				
				
				<button class="btn" id="submit">
					预约
				</button>
				

			</div>
			</form>
		</div>
		</section>
		
		<jsp:include page="page/foot.jsp" />
		
	</body>
</html>