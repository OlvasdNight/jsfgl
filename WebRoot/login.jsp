<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//request.getSession().invalidate();
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>健身房信息管理系统</title>
		<script type='text/javascript' src='<%=path%>/dwr/interface/loginService.js'></script>
		<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
		<script type='text/javascript' src='<%=path%>/dwr/util.js'></script>
		<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
		<link rel="stylesheet" href="<%=path%>/css/wukong-ui.css" />
		<script language="javascript">
			function check1(){
				var userName= document.ThisForm.userName.value; 
				var userPw= document.ThisForm.userPw.value;                                                                                        
		    	if(userName==""){
				 	alert("请输入用户名");
					document.ThisForm.userName.focus();
					return false;
			 	}
				if(userPw==""){
				 	alert("请输入密码");
					document.ThisForm.userPw.focus();
					return false;
			 	}
					var obj= document.ThisForm.type;     
			 	var index = obj.selectedIndex;
			 	var type = obj.options[index].value;
			 	loginService.login(userName,userPw,type,callback);
		 	}
		
			function callback(data){
			   	if(data=="no"){
			        alert("用户名或密码错误");
			    }
			    if(data=="yes"){
			        alert("通过验证,系统登录成功");
			        window.location.href="<%=path %>/loginSuccess.jsp";
				}
			}

			function resets() {
				document.ThisForm.userName.value = "";
				document.ThisForm.userPw.value = "";
			}
		 
		 
		 </script>
	</head>

	<body class="logonBody">
		<form name="ThisForm" method="POST" action="">
			<div class="logon">
				<ul>
					 <li class="form-group">
	            		<select class="form-control" name="type">
	                        <option value="1">教练</option>
	                        <option value="0">管理员</option>
	                    </select>
	                </li>
				
					<li>
						<input type="text" name="userName" placeholder="请输入账户名" />
					</li>
					<li>
						<input type="password" name="userPw" placeholder="请输入登录密码" />
					</li>
					
					
				</ul>
				
				<input type="button" onclick="check1();" class="logonSubmitBtn" value="登录" />
			</div>
		</form>

	</body>
</html>
