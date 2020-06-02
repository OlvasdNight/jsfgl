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
			
	</head>

	<body>
		
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb wk-breadcrumb">
					<li>
						<a>首页</a>
					</li>
					<li>
						<a>会员管理</a>
					</li>
					<li>
						<a>修改会员信息</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default wk-panel ">
					<div class="panel-heading">
						修改会员信息
					</div>
					<form action="<%=path%>/userEdit.action" name="formAdd"
						method="post">
						<div class="panel-body">
							<input name="id" type="hidden" value="${user.id}"/>
							<div class="form-inline">
								<div>
									<label class="control-label wk-filed-label">
										会员账号:
									</label>
									<div class="input-group" style="width:340px">
										<input readonly="readonly" name="uname" type="text"
											class="form-control wk-normal-input"  value="${user.uname}" maxlength="20"/>
									</div>
								</div>

								<div>
									<label class="control-label wk-filed-label">
										登录密码:
									</label>
									<div class="input-group" style="width:340px">
										<input required="required" name="upwd" type="text"
											class="form-control wk-normal-input" maxlength="10" value="${user.upwd}"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										真实姓名:
									</label>
									<div class="input-group" style="width:340px">
										<input required="required" name="name" type="text"
											class="form-control wk-normal-input"  maxlength="20" value="${user.name}"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										会员余额:
									</label>
									<div class="input-group" style="width:340px">
										<input required="required" name="jifen" type="text"  value="${user.jifen}"
											onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "
											class="form-control wk-normal-input"  maxlength="20"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										联系方式:
									</label>
									<div class="input-group" style="width:340px">
										<input required="required" name="tel" type="text"
											class="form-control wk-normal-input"  maxlength="20" value="${user.tel}"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										地址:
									</label>
									<div class="input-group" style="width:340px">
										<textarea rows="3" name="address" maxlength="200" class="form-control wk-normal-input" >${user.address}
										</textarea>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
											
									</label>
									<div class="input-group">
										<input type="submit" class="btn  wk-btn" value="保&nbsp;&nbsp;存" />
										
										<input class="btn  wk-btn" type="button" onClick="javascript :history.back(-1);" value="取&nbsp;&nbsp;消"  />
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