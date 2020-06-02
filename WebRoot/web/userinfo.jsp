
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
	<head>
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
		<script type="text/javascript" src="<%=path%>/js/jquery-3.2.1.js"></script>
		
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
			
	         function check(){
				
			 	
				var upwd = $("#upwd").val();
				if(upwd==null||upwd==''){
			 	
			 		alert("密码不能为空!");
			 		return;
			 	}else{
			 		var reg=/^[\w]{6,12}$/;
			 		if(!reg.test(upwd)){
			 			alert("密码格式不正确，请重新输入!");
			 			return;
			 		}
			 		
			 	}
 	
			 	var age = $("#age").val();
			 	if(age==null||age==''){
			 		alert("年龄不能为空!");
			 		return;
			 	}
			 	
			 	var tel = $("#tel").val();
			 	if(tel==null||tel==''){
			 		alert("电话不能为空!");
			 		return;
			 	}
			 	
			 	document.registForm.submit();
			}
	   
		</script>


	</head>

	<body>
		<jsp:include page="page/head.jsp" />
		<div class="classinfo">
			<div class="left" valign="top">
				<ul class="group1">
					<li  class="on" onclick="changeTab(1)">
						用户资料
					</li>
					<li class="" onclick="changeTab(2)">
						预约中心
					</li>
					<li class="" onclick="changeTab(4)">
						在线充值
					</li>
					<li class="" onclick="changeTab(3)">
						充值消费记录
					</li>
					
				</ul>
			</div>
			
			<div class="right" style="width: 990px;">
				<form  action="<%=basePath%>/xiugaiUser.action" name="formAdd" method="post">
				<div class="service" style="width:100%">
					<h2 style="text-align:left;padding-left: 250px;margin-bottom: 20px;">
						用户个人信息
					</h2>
						
					<input  type="hidden" name="id" value="${sessionScope.user.id}" >
					<div  style="margin-left: 52px;">
						<label class="user-label">账号：</label>
						<input class="user-input" type="text" name="uname" value="${sessionScope.user.uname}" readonly="readonly">
					</div>
					
					<div  style="margin-left: 52px;">
						<label class="user-label">密码：</label>
						<input class="user-input"  required="required"  type="text" id="upwd" name="upwd" value="${sessionScope.user.upwd}" maxlength="10" >
					</div>
					
					<div  style="margin-left: 52px;">
						<label class="user-label">会员余额：</label>
						<input class="user-input" type="text" name="jifen" value="${sessionScope.user.jifen}" readonly="readonly">
					</div>
					
					<div  style="margin-left: 52px;">
						<label class="user-label">姓名：</label>
						<input class="user-input"  required="required"  type="text" id="name" name="name" value="${sessionScope.user.name}"  maxlength="20">
					</div>
					
					<div  style="margin-left: 52px;">
						<label class="user-label">性别：</label>
						<select class="user-input " name="sex" style="height: 40px;width: 466px;" >
							<option <c:if test="${'男'==sessionScope.user.sex}">selected </c:if> value="男">男</option>
							<option <c:if test="${'女'==sessionScope.user.sex}">selected </c:if> value="女">女</option>
						</select>
					</div>
					
					<div  style="margin-left: 52px;">
						<label class="user-label">年龄：</label>
						<input class="user-input"   type="text" id="age"  name="age" value="${sessionScope.user.age}"  maxlength="2" onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') ">
					</div>
					
					
					<div  style="margin-left: 52px;">
						<label class="user-label">联系电话：</label>
						<input class="user-input"  required="required"  id="tel" type="text" name="tel" value="${sessionScope.user.tel}"  maxlength="20">
					</div>
					
				
					
					
					<button class="btn" id="submit" type="button" onclick="check()">
						修改
					</button>
					
	
				</div>
				</form>
			</div>
		</div>


		<jsp:include page="page/foot.jsp" />

	</body>
</html>