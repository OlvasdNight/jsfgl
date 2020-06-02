<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=path%>/css/wukong-ui.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-select.min.css">
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap-select.min.js"></script>
			
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
		<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
		<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>	
			
		<script language="javascript">
            function check()
            {
                var userPwReal="";
                  <c:if test="${sessionScope.userType==0}">
                 	userPwReal="${sessionScope.admin.upwd}";
                 </c:if>
                 <c:if test="${sessionScope.userType==1}">
                 	userPwReal="${sessionScope.coach.upwd}";
                 </c:if>
                 
                 if(document.formPw.userPw.value !=userPwReal)
                 {
                     alert("原密码不正确");
                     return ;
                 }
                 
                 if(document.formPw.userPw1.value ==""){
                     alert("新密码不能空");
                     return ;
                 }
                 
                 //document.getElementById("indicator").style.display="block";
                 loginService.adminPwEdit(document.formPw.userPw1.value,callback);
            }
            function callback(data){
            	if(data=='yes'){
            		alert("修改成功");
            		window.location.href="<%=path%>/man/welcome.jsp";
            	}
                
            }
        </script>
	</head>

	<body>
		
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb wk-breadcrumb">
					<li>
						<a>首页</a>
					</li>
					<li>
						<a>修改密码</a>
					</li>
				
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default wk-panel ">
					<div class="panel-heading">
						修改密码
					</div>
					<form action="" name="formPw"
						method="post">
						<div class="panel-body">
								<input name="id" type="hidden" value="${admin.id}"/>
								<div class="form-inline">
									<div>
										<label class="control-label wk-filed-label">
											登录账号:
										</label>
										<div class="input-group" style="width:340px">
											<c:if test="${sessionScope.userType==0}">
												<input readonly="readonly" name="uname" type="text" 
													class="form-control wk-normal-input"  value="${sessionScope.admin.uname}"/>
											</c:if>
											<c:if test="${sessionScope.userType==1}">
												<input readonly="readonly" name="name" type="text" 
													class="form-control wk-normal-input"  value="${sessionScope.coach.uname}"/>
											</c:if>	
										
										</div>
									</div>

									<div>
										<label class="control-label wk-filed-label">
											旧密码:
										</label>
										<div class="input-group" style="width:340px">
											<input required="required" name="userPw" type="password"
												class="form-control wk-normal-input" 
												placeholder="请输入登录密码" />
										</div>
									</div>
									
									<div>
										<label class="control-label wk-filed-label">
											旧密码:
										</label>
										<div class="input-group" style="width:340px">
											<input required="required" name="userPw1" type="password"
												class="form-control wk-normal-input" 
												placeholder="请输入登录密码" />
										</div>
									</div>
									
									<div>
										<label class="control-label wk-filed-label">
												
										</label>
										<div class="input-group">
											<input type="button" onclick="check()" class="btn  wk-btn" value="保&nbsp;&nbsp;存" />
											
											
										</div>
									</div>
								</div>
						</div>
						
					</form>
				</div>
			</div>
		</div>

	</body>
</html>