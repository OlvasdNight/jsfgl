
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

		<script language=JavaScript>
			function toDetail(id) {
				var url="<%=basePath%>/chakanXM.action?id="+id;
				window.location.href=url;
			}
		</script>

	</head>

	<body>
		<jsp:include page="page/head.jsp" />

		<section class="gruop_cursor">
		<div class="content_bg">
			<div class="content">
				<ul id="erpCourselist">
					<c:forEach items="${courseList}" var="xingmu" varStatus="status">
					<li  onclick="toDetail(${xingmu.id })">
						<input type="hidden" value="1392">
						<div class="cursor_img">
							<img src="<%=basePath%>/${xingmu.url}"
								alt="">
						</div>
						<div class="cursor_text">
							<div class="tex">
								<h2>
									${xingmu.name }
								</h2>
								<em>预约</em>
							</div>
							<p>
								${xingmu.miaoshu }
							</p>
						</div>
					</li>
					</c:forEach>
				</ul>
				
			</div>
		</div>
		</section>
		<jsp:include page="page/foot.jsp" />

	</body>
</html>