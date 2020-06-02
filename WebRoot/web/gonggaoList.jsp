
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
			    max-width: 950px;
			    vertical-align: middle;
			    float: left;
			}
			.index-h2 {
			    font-size: 30px;
			    margin-top: 5px;
			    font-weight: bold;
			    margin-bottom: 22px;
			    display: inline-block;
			    color: #fff;
			}
		</style>


	</head>

	<body>
		<jsp:include page="page/head.jsp" />
		
		
		<section class="star gruop_cursor index">
		
		
	
		
		
		<div class="content" style="min-height: 400px;">
			<h2 style="text-align:center;with:100%" class="index-h2">
				公告列表
			</h2>
			
			<ul id="gymList">
				<c:forEach items="${gonggaoList}" var="gonggao" varStatus="status">
					<li style="margin-bottom: 11px; height: 30px;overflow: hidden;width:100%;border:0">
						<a class="news-list" href="<%=basePath%>/togonggaoDetail.action?id=${gonggao.id}">${gonggao.name}</a>
						<cite class="cite">${gonggao.cdate}</cite>
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
		
	

		<jsp:include page="page/foot.jsp" />

	</body>
</html>