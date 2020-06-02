
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
		
		
		<script language=JavaScript>
			function toDetail(id) {
			
				var url="<%=basePath%>/chakanXM.action?id="+id;
				window.location.href=url;
			}
		</script>
	</head>

	<body>
		<jsp:include page="page/head.jsp" />

		<section class="personal_coach gruop_cursor index">
			<div class="dec_shebei_bg">
				<div class="dec_shebei">
					<div class="up">
						<div class="dec_img">
							<img src="<%=basePath%>/${coach.url}" alt="" id="dec_img">
						</div>
						<div class="text">
							<span id="employeeName">${coach.name}</span>
							<p id="brief"></p>
							<strong>专业特长：塑身美体训练、产后恢复训练、运动康复训练。${coach.zhuanye}</strong> 
<!-- 							<em>寄语：训练有法，但无定法，贵在得法</em> -->
						</div>
					</div>
				</div>
			</div>
			
			<div class="content">
			<h2>
				私教课程
			</h2>
			
			<ul id="gymList">
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