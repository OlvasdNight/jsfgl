
<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = path;
	path = path + "/web";
%>

<!DOCTYPE html>
<!-- saved from url=(0063)http://www.1012china.com/web/mission_details.html?courseId=1494 -->
<html>
	<head...>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<meta name="renderer" content="webkit">
		<title>健身中心</title>
		<!--css-->
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/reset.css">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/pagination.css">
		<link rel="stylesheet" href="<%=path%>/css/kalendae.css"
			type="text/css" charset="utf-8">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/style1.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/style2.css">
		<link rel="stylesheet" href="<%=path%>/css/swiper.min.css">
		<script language=JavaScript>
		
			function changeTab(temp) {
				var url = '';
				if(temp==1){
					url = "<%=basePath%>/web/userinfo.jsp";
				}else if(temp==2){
					url = "<%=basePath%>/myorderList.action";
				}else if(temp==3){
					url = "<%=basePath%>/myrecordList.action";
				}else if(temp==4){
					url = "<%=basePath%>/tochongzhi.action";
				}
				
				window.location.href=url;
			}
		</script>
	</head>

	<body>
		<jsp:include page="page/head.jsp" />
		<div class="classinfo">
			<div class="left" valign="top">
				<ul class="group1">
					<li  class="" onclick="changeTab(1)">
						用户资料
					</li>
					<li class="" onclick="changeTab(2)">
						预约中心
					</li>
					<li class="on" onclick="changeTab(4)">
						在线充值
					</li>
					<li class="" onclick="changeTab(3)">
						充值消费记录
					</li>
					
					
				</ul>
			</div>
			
			<div class="right" style="width: 990px;">
				<form  action="<%=basePath%>/chongzhi.action" name="formAdd" method="post">
				<div class="service" style="width:100%">
					<h2 style="text-align:left;padding-left: 250px;margin-bottom: 20px;">
						在线充值
					</h2>
						
					<div  style="margin-left: 52px;">
						<label class="user-label">账号：</label>
						<input class="user-input" type="text" name="uname" value="${sessionScope.user.uname}" readonly="readonly">
					</div>
					
					
					<div  style="margin-left: 52px;">
						<label class="user-label">支付方式：</label>
						<img src="<%=path%>/images/wx1.png"/>
					</div>
					
					<div  style="margin-left: 52px;">
						<label class="user-label">充值金额：</label>
						<input class="user-input"  required="required"  type="text" name="qian" 
							onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "  maxlength="10" >
					</div>
					
					
					
				
					
					<button class="btn" id="submit">
						充 值
					</button>
					
	
				</div>
				</form>
			</div>
		</div>


		<jsp:include page="page/foot.jsp" />

	</body>
</html>