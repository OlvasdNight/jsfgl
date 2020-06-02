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
						<a>查看会员信息</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default wk-panel ">
					<div class="panel-heading">
						查看会员信息
					</div>
					<form>
						<div class="panel-body">
							<div class="form-inline">
								<div>
									<label class="control-label wk-filed-label">
										会员账号:
									</label>
									<div class="input-group" style="width:340px">
										<input readonly="readonly" name="uname" type="text"
											class="form-control wk-normal-input"  value="${admin.uname}"/>
									</div>
								</div>

								<div>
									<label class="control-label wk-filed-label">
										登录密码:
									</label>
									<div class="input-group" style="width:340px">
										<input readonly="readonly" name="upwd" type="password"
											class="form-control wk-normal-input" value="${admin.upwd}"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										真实姓名:
									</label>
									<div class="input-group" style="width:340px">
										<input readonly="readonly"  type="text"
											class="form-control wk-normal-input" value="${admin.name}"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										会员余额:
									</label>
									<div class="input-group" style="width:340px">
										<input readonly="readonly"  type="text"  value="${user.jifen}"
											class="form-control wk-normal-input"  />
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										联系方式:
									</label>
									<div class="input-group" style="width:340px">
										<input readonly="readonly"  type="text"
											class="form-control wk-normal-input" value="${admin.tel}"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										地址:
									</label>
									<div class="input-group" style="width:340px">
										<textarea rows="3" readonly="readonly">${admin.address}</textarea>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
											
									</label>
									<div class="input-group">
										<input class="btn  wk-btn" type="button" onClick="javascript :history.back(-1);" value="关&nbsp;&nbsp;闭"  />
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