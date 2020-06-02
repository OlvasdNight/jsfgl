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
		<link rel="stylesheet"
			href="<%=path%>/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet"
			href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
		<script type="text/javascript"
			src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=path%>/css/wukong-ui.css">
		<link rel="stylesheet"
			href="<%=path%>/bootstrap/css/bootstrap-select.min.css">
		<script type="text/javascript"
			src="<%=path%>/bootstrap/js/bootstrap-select.min.js"></script>
			
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>	
		<script language="javascript">
			function up(){
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
	            //另一红上传方式可以参照进销存
		    }
			 function check(){
			 	 if(document.formAdd.uname.value==""){
				 	alert("请输入教练账号");
					return false;
				 } 	
			  
			     if(document.formAdd.name.value==""){
				 	alert("请输入真是姓名");
					return false;
				 }                                                                
			     if(document.formAdd.age.value==""){
				 	alert("请输入年龄");
					return false;
				 }
				  if(document.formAdd.tel.value==""){
				 	alert("请输入联系方式");
					return false;
				 }
				   if(document.formAdd.url.value==""){
				 	alert("请上传图片");
					return false;
				 }
				 
				 
				 if(document.formAdd.zhuanye.value==""){
				 	alert("请输入专业特长");
					return false;
				 }
				
				 document.formAdd.submit();
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
						<a>教练管理</a>
					</li>
					<li>
						<a>新增教练</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default wk-panel " style="overflow: hidden;">
					<div class="panel-heading">
						新增教练
					</div>
					<form action="<%=path%>/coachAdd.action" name="formAdd"
						method="post">
						<div class="panel-body" style="float: left; width: 600px;">

							<div class="form-inline">
								<div>
									<label class="control-label wk-filed-label">

									</label>
									<div class="input-group" style="width: 340px">
										<label class="control-label wk-filed-label"
											style="color: red; width: 100%; text-align: left;">
											(用户的初始密码为123456)
										</label>
									</div>

								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										教练账号:
									</label>
									<div class="input-group" style="width: 340px">
										<input required="required" name="uname" type="text"
											class="form-control wk-normal-input" maxlength="20" />
									</div>
								</div>

								

								<div>
									<label class="control-label wk-filed-label">
										真实姓名:
									</label>
									<div class="input-group" style="width: 340px">
										<input required="required" name="name" type="text"
											class="form-control wk-normal-input" maxlength="20" />
									</div>
								</div>


								<div class="form-group">
									<label class="control-label wk-filed-label">
										性别:
									</label>
									<div class="input-group" style="width: 340px">
										<select class="wk-select" name="sex" style="width: 340px">
											<option value="男">男</option>
											<option value="女">女</option>
										</select>
									</div>
								</div>
								<div>
									<label class="control-label wk-filed-label">
										年龄:
									</label>
									<div class="input-group" style="width: 340px">
										<input required="required" name="age" type="text"
											onkeyup="this.value=this.value.replace(/[^\d]/g,'') "
											onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "
											class="form-control wk-normal-input" maxlength="2" />
									</div>
								</div>

								<div>
									<label class="control-label wk-filed-label">
										联系方式:
									</label>
									<div class="input-group" style="width: 340px">
										<input required="required" name="tel" type="text"
											class="form-control wk-normal-input" maxlength="20" />
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										上传图片:
									</label>
									
									<div class="input-group" style="width:340px">
										<input required="required" name="url" id="fujian" type="text" style="width:280px"
											class="form-control wk-normal-input" readonly="readonly" />
										<input type="button" value="上传" onclick="up()" style="margin: 10px 0px"/>
									</div>
								</div>

								<div>
									<label class="control-label wk-filed-label">
										专业特长:
									</label>
									<div class="input-group" style="width: 340px">
										<textarea class="form-control wk-normal-input" rows="3"
											name="zhuanye" maxlength="200"></textarea>
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label wk-filed-label">
										登陆权限:
									</label>
									<div class="input-group" style="width: 340px">
										<select class="wk-select" name="state" style="width: 340px">
											<option value="0">否</option>
											<option value="1">是</option>
										</select>
									</div>
								</div>

								<div>
									<label class="control-label wk-filed-label">

									</label>
									<div class="input-group">
										<button type="button" onclick="check()" class="btn  wk-btn">
											提&nbsp;&nbsp;交
										</button>
										<button type="reset" class="btn  wk-btn">
											重&nbsp;&nbsp;置
										</button>
									</div>
								</div>
							</div>
						</div>
						<div style="float:left;width: 410px;border: 1px solid #C9C9C9;height: 300px;margin-top:10px">
							<img class="layui-upload-img " id="tupian" style="max-width:410px;max-height: 295px;">
							
						</div>
					</form>
				</div>
			</div>
		</div>

	</body>
</html>