
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
		
		
		<section class="star gruop_cursor index">
		<div style="width: 1200px;margin: 0 auto 0;padding-top: 30px;overflow: hidden;">
			<div class="banner" style=" width: 640px;float: left;">
				<div id="focus" >
					<div id="slider" class="indexFocus" style=" width: 640px; float: left;">
						<ul >
							<c:forEach items="${coachList}" var="coach" varStatus="status">
							<li class="lunbo" style="margin-left: 0;">
								<img src="<%=basePath%>/${coach.url}" height="480px" width="640px"/>
	
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
			<div id="focus" style=" width: 500px;float: left;max-height: 500px;padding-left: 20px;">
				<a style="margin-top: -20px;" class="more" href="<%=basePath%>/gglist.action?type=4">查看更多&gt;&gt;</a>
				<ul >
					<c:forEach items="${gonggaoList}" var="gonggao" varStatus="status">
						<li style="margin-bottom: 11px; height: 30px;overflow: hidden;">
							<a style="color: #fff;width: 250px;white-space:nowrap;overflow:hidden;text-overflow: ellipsis;" href="">${gonggao.name}</a>
							<cite>${gonggao.cdate}</cite>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<div class="content">
			<h2>
				瑜伽
			</h2>
			<a class="more" href="<%=basePath%>/list.action?type=4"
				style="margin-top: 20px;">查看更多&gt;&gt;</a>
			<ul id="gymList">
				<c:forEach items="${yujiaList}" var="xingmu" varStatus="status">
				<li onclick="toDetail(${xingmu.id })">
					<input type="hidden" value="1494">
					<div class="cursor_img">
						<img src="<%=basePath%>/${xingmu.url}" alt="">
					</div>
					<div class="cursor_text">
						<div class="tex">
							<h2>
								${xingmu.name }
							</h2>
							<strong>预约</strong>
						</div>
						<p>
							${xingmu.miaoshu }
						</p>
					</div>
				</li>
				</c:forEach>
			</ul>
		</div>
		
		
		<div class="content">
			<h2>
				私人教练
			</h2>
			<a class="more" href="<%=basePath%>/list.action?type=1"
				style="margin-top: 20px;">查看更多&gt;&gt;</a>
			<ul id="gymList">
				<c:forEach items="${jiaolianList}" var="xingmu" varStatus="status">
				<li onclick="toDetail(${xingmu.id })">
					<input type="hidden" value="1494">
					<div class="cursor_img">
						<img src="<%=basePath%>/${xingmu.url}" alt="">
					</div>
					<div class="cursor_text">
						<div class="tex">
							<h2>
								${xingmu.name }
							</h2>
							<strong>预约</strong>
						</div>
						<p>
							${xingmu.miaoshu }
						</p>
					</div>
				</li>
				</c:forEach>
			</ul>
		</div>
		
		<div class="content">
			<h2>
				游泳
			</h2>
			<a class="more" href="<%=basePath%>/list.action?type=2"
				style="margin-top: 20px;">查看更多&gt;&gt;</a>
			<ul id="gymList">
				<c:forEach items="${youyongList}" var="xingmu" varStatus="status">
				<li onclick="toDetail(${xingmu.id })">
					<input type="hidden" value="1494">
					<div class="cursor_img">
						<img src="<%=basePath%>/${xingmu.url}" alt="">
					</div>
					<div class="cursor_text">
						<div class="tex">
							<h2>
								${xingmu.name }
							</h2>
							<strong>预约</strong>
						</div>
						<p>
							${xingmu.miaoshu }
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