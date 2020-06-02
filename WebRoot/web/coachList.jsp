
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
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/swiper.min.css">


		<script type="text/javascript" src="<%=path%>/js/jquery-3.2.1.js"></script>
		<script src="<%=path%>/js/easySlider.js"></script>

		<script language=JavaScript>
			function toDetail(id) {
			
				var url="<%=basePath%>/chakanXM.action?id="+id;
				window.location.href=url;
			}
			function tocoachDetail(id) {
			
				var url="<%=basePath%>/tocoachDetail.action?id="+id;
				window.location.href=url;
			}
		</script>
		
		<style>
			.course_title {
			    font-size: 30px;
			    height: 70px;
			    font-weight: bold;
			    border-bottom: 1px solid #ccc;
			    color: #fff;
			}
			
			
			
		</style>
		


	</head>

	<body>
		<jsp:include page="page/head.jsp" />


		<section class="star gruop_cursor">
		
		<div class="personal_coach">
			<h2>
				私人教练
			</h2>
			
			<ul id="personaTrainer">
				<c:forEach items="${coachList}" var="coach" varStatus="status">
				<li>
					<div class="img" onclick="tocoachDetail(${coach.id})">
						<img src="<%=basePath%>/${coach.url}" alt="">
					</div>
					<div class="star_text">
						<h3>
							${coach.name}
						</h3>
						<p></p>
					</div>
				</li>
				</c:forEach>
				
			</ul>
		</div>

		<div class="content">
			<h2  class="course_title">
				热门私教课程
			</h2>
			
			<ul id="gymList" style="    margin-top: 25px;">
				<c:forEach items="${courseList}" var="course" varStatus="status">
				<li onclick="toDetail(${course.id })">
					<input type="hidden" value="1494">
					<div class="cursor_img">
						<img src="<%=basePath%>/${course.url}" alt="">
					</div>
					<div class="cursor_text">
						<div class="tex">
							<h2>
								${course.name }
							</h2>
							<strong>预约</strong>
						</div>
						<p>
							${course.miaoshu }
						</p>
					</div>
				</li>
				</c:forEach>
			</ul>
		</div>
		</section>

		<jsp:include page="page/foot.jsp" />

	</body>
</html>