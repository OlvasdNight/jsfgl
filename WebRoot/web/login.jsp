
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = path;
    path=path+"/web";
%>

<!DOCTYPE html>
<!-- saved from url=(0076)https://passport.ctrip.com/user/login?BackUrl=https%3A%2F%2Fwww.ctrip.com%2F -->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>登录首页</title>

		<link href="<%=path%>/css/login.css" rel="stylesheet" type="text/css">
		<link href="<%=path%>/css/header_public.css" rel="stylesheet" type="text/css">

		<script type='text/javascript' src='<%=basePath %>/dwr/interface/loginService.js'></script>
 		<script type='text/javascript' src='<%=basePath %>/dwr/engine.js'></script>
 		<script type='text/javascript' src='<%=basePath %>/dwr/util.js'></script>
 		
		<script language="javascript">
			 function check1()
			 {                                                                                    
			     if(document.ThisForm.userName.value=="")
				 {
				 	alert("请输入用户名");
					document.ThisForm.userName.focus();
					return false;
				 }
				 if(document.ThisForm.userPw.value=="")
				 {
				 	alert("请输入密码");
					document.ThisForm.userPw.focus();
					return false;
				 }
				 loginService.userlogin(document.ThisForm.userName.value,document.ThisForm.userPw.value,callback);
			 }
			
			 function callback(data)
			 {
			    if(data=="no")
			    {
			        alert("用户名或密码错误");
			    }
			    if(data=="yes")
			    {
			        alert("通过验证,系统登录成功");
			        window.location.href="<%=basePath %>/index.action";
			    }
			 }
			 
			  function open1()
			 {
			    window.location.href="<%=path %>/regiset.jsp";
			    
			 }
			 
		</script>
	
		<style type="text/css">
			.placeholder {
				color: #ccc;
			}
		</style>
	</head>
	<body style="background: rgba(0, 0, 0, 1);">
		<div class="lg_hd">
			<!-- 仅首页需要添加ctriplogoindex这个class -->
			<h1 class="ctriplogo_login ctriplogoindex">
				<a title="健身中心">健身中心</a>
			</h1>
		
		</div>

		<div class="lg_bd" id="lg_bd">
			<!-- 广告图片区域 -->
			<div class="lg_banner_wrap">
				<div class="lg_banner_list jmkt-picsroller" id="bannerpic">
					<div class="jmkt-picsroller-pics"
						id="da1eb923-f5fb-ac7d-89e9-70ca98206659" style="z-index: 1;">
						<a><img src="<%=path%>/images/bg.jpg" width="1920" height="540">
						</a>
					</div>
				</div>
			</div>


			<div class="mod-box" style="z-index: 10;">
				<div class="lg_loginwrap" id="loginwrap">
					<!-- 个性化登录 -->
					
					<div class="lg_loginbox" id="lg_loginbox"
						style="top: 10px; margin-top: 37.5px;">

						<h2 class="lg_loginbox_title" id="logintitle">
							健身中心登陆
							
						</h2>
						<form  name="ThisForm" action="login" method="post" >
						<div class="form_wrap" id="normalview" style="display: block;">
							<dl>
								<dd>
									<input class="r_input" type="text" name="userName"
										placeholder="会员卡号">
								</dd>
							</dl>
							<dl>
							
								<dd >
									<input type="password" name="userPw"  class="r_input"  placeholder="登录密码">
									</dd>
							</dl>
							<dl>
								<dd>
									没有账号?
									<a href="<%=path %>/regiset.jsp" tabindex="5">免费注册</a>
								</dd>
							</dl>
							
							<div class="base_error" style="display: none" id="nerr"></div>
							<dl>
								<div class="login-set">
								</div>
								<dd>
									<input class="form_btn form_btn--block" id="nsubmit"
										type="button" value="登   录" onclick="check1()">
								</dd>
							</dl>
							
						</div>
						</form>
					
					</div>
				
				</div>
			</div>
		</div>
		
		
		
		<div class="base_ft_wrap" id="base_ft">
			<p>
				<a title="网站导航">网站导航</a> |
				<a title="宾馆索引">宾馆索引</a> |
				<a title="用户协议">用户协议</a> |
				<a title="企业公民">企业公民</a> |
				<a title="诚聘英才">诚聘英才</a> |
				<a title="分销联盟">分销联盟</a> |
				<a title="代理合作">代理合作</a> |
				<a title="广告业务">广告业务</a> |
				<a title="联系我们">联系我们</a> 
			</p>
			<p class="copyright">
				<a >Copyright©</a>
				<span id="copyrightDate">1999-2018</span>,
				<a >ctrip.com</a>.All rights reserved.
			</p>
		</div>
		
	</body>
</html>