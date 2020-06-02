
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
		<title>注册</title>
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
		
		<script type="text/javascript">
	         function check(){
				var uname = $("#uname").val();
				if(uname==null||uname==''){
					alert("用户名不能为空!");
					return;
				}else{
			 	var reg=/^[\w]{6,12}$/;
			 		if(!reg.test(uname)){
			 			alert("用户名格式不正确，请重新输入!");
			 			return;
			 		}
			 	}
				

			 	var name = $("#name").val();
			 	if(name==null||name==''){
			 		alert("姓名不能为空!");
			 		return;
			 	}
			 	
				var upwd = $("#upwd").val();
				var qrupwd = $("#qrupwd").val();
				if(upwd==null||upwd==''){
			 	
			 		alert("密码不能为空!");
			 		return;
			 	}else{
			 		var reg=/^[\w]{6,12}$/;
			 		if(!reg.test(upwd)){
			 			alert("密码格式不正确，请重新输入!");
			 			return;
			 		}
			 		if(qrupwd!=upwd){
			 			alert("2次密码输入不一致，请重新输入!");
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
			
			
			<div class="right" style="width: 990px;">
				<form  action="<%=basePath%>/userReg.action" name="registForm" method="post">
					<div class="service" style="width:100%">
						<h2 style="text-align:left;padding-left: 250px;margin-bottom: 20px;">
							用户注册
						</h2>
							
						<input  type="hidden" name="id" value="${sessionScope.user.id}" >
						<div  style="margin-left: 52px;">
							<label class="user-label">账号：</label>
							<input class="user-input" type="text" name="uname" id="uname" maxlength="20" placeholder="输入长度为6-12位字母、数字或符号" >
						</div>
						
						<div  style="margin-left: 52px;">
							<label class="user-label">密码：</label>
							<input class="user-input"   type="password" name="upwd" id="upwd"  placeholder="输入长度为6-12位字母、数字或符号" maxlength="10" >
						</div>
						
						<div  style="margin-left: 52px;">
							<label class="user-label">确认密码：</label>
							<input class="user-input"   type="password" name="qrupwd" id="qrupwd"  placeholder="输入确认密码" maxlength="10" >
						</div>
						
						<div  style="margin-left: 52px;">
							<label class="user-label">姓名：</label>
							<input class="user-input"  required="required"  type="text" id="name" name="name" placeholder="输入姓名" maxlength="20">
						</div>
						
						<div  style="margin-left: 52px;">
							<label class="user-label">性别：</label>
							<select class="user-input " name="sex" style="height: 40px;width: 466px;" >
								<option value="男">男</option>
								<option value="女">女</option>
							</select>
						</div>
						
						<div  style="margin-left: 52px;">
							<label class="user-label">年龄：</label>
							<input class="user-input"   type="text" id="age" name="age" placeholder="输入年龄" maxlength="2" onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') ">
						</div>
						
						<div  style="margin-left: 52px;">
							<label class="user-label">联系电话：</label>
							<input class="user-input"  type="text" id="tel" name="tel" vplaceholder="输入电话"   maxlength="20">
						</div>
						
						<button class="btn" type="button" onclick="check()" style="width: 295px; margin-left: 175px;">
							注册
						</button>
						
		
					</div>
				</form>
			</div>
		</div>


		<jsp:include page="page/foot.jsp" />

	</body>
</html>