
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
			.cite {
			    float: right;
			    font-style: normal;
			    font-weight: normal;
			    color: #969696;
			    padding-right: 6px;
			}
			.news-list{
				color: #fff;
			    overflow: hidden;
			    text-overflow: ellipsis;
			    white-space: nowrap;
			    display: inline-block;
			    max-width: 400px;
			    vertical-align: middle;
			    float: left;
			}
			
			
			
		</style>


	</head>

	<body>
		<jsp:include page="page/head.jsp" />
		
		
		<section class="star gruop_cursor index">
		<div class="banner">
			
			<img src="web/images/index_bg.jpg" height="480px" width="1569px"/>
		</div>
		
		
		<div style="width: 1200px;margin: 0 auto 0;padding-top: 30px;overflow: hidden;">
			<div class="banner" style=" width: 580px;float: left;">
				<div id="focus" >
					<div id="slider" class="indexFocus" style=" width: 500px; float: left;">
						<ul >
							<c:forEach items="${coachList}" var="coach" varStatus="status">
							<li class="lunbo" style="margin-left: 0;">
								<a href="<%=basePath%>/tocoachDetail.action?id=${coach.id}">
									<img src="<%=basePath%>/${coach.url}" height="382px" width="500px"/>
								</a>
							</li>
							</c:forEach>
							
						</ul>
	
						<script type="text/javascript">
							$(function() {
							  $("#slider").easySlider({auto: true, continuous: true});
							});
	
						</script>
					</div>
				</div>
				
				
			</div>
			<div id="focus" style=" width: 550px;float: left;max-height: 500px;padding-left: 20px;margin-top: 30px;">
				<a style="margin-top: -30px;margin-right: 5px;" class="more" href="<%=basePath%>/webgonggaoList.action">查看更多&gt;&gt;</a>
				<ul >
					<c:forEach items="${gonggaoList}" var="gonggao" varStatus="status">
						<li style="margin-bottom: 11px; height: 30px;">
							<a class="news-list" href="<%=basePath%>/togonggaoDetail.action?id=${gonggao.id}">${gonggao.name}</a>
							<cite class="cite">${gonggao.cdate}</cite>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<div class="content">
			<h2>
				热门课程
			</h2>
			<a class="more" href="<%=basePath%>/list.action?type=4"
				style="margin-top: 20px;">查看更多&gt;&gt;</a>
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
		
		
		
		
		<div class="bottom">
			<h2>
				合作伙伴
			</h2>
			<ul class="sponsor">
				<li>
					<img src="<%=path%>/images/adidas.png"
						alt="" style="width: 100%">
				</li>
			</ul>
		</div>
		</section>
		
		
		
		
		<script type="text/javascript">
			if ((navigator.userAgent.match(/(iPhone|iPod|Android|ios|iOS|iPad|Backerry|WebOS|Symbian|Windows Phone|Phone)/i))) {
			    location.replace(config.web + "/YZWDH5/index.html")
			}
		</script>

		<jsp:include page="page/foot.jsp" />

	</body>
</html>