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
		
		
		<script language="javascript" type="text/javascript" src="<%=path%>/My97DatePicker/WdatePicker.js"></script>
			
	</head>

	<body>
		
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb wk-breadcrumb">
					<li>
						<a>首页</a>
					</li>
					<li>
						<a>器材管理</a>
					</li>
					<li>
						<a>新增器材</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default wk-panel ">
					<div class="panel-heading">
						新增器材
					</div>
					<form action="<%=path%>/qicaiAdd.action" name="formAdd"
						method="post">
						<div class="panel-body">
						
								<div class="form-inline">
									<div>
										<label class="control-label wk-filed-label">
											器材名称:
										</label>
										<div class="input-group" style="width:340px">
											<input required="required" name="name" type="text" 
												class="form-control wk-normal-input" maxlength="50"/>
										</div>
									</div>

								
									
									<div>
										<label class="control-label wk-filed-label">
											生产厂家:
										</label>
										<div class="input-group" style="width:340px">
											<input required="required" name="changjia" type="text" 
												class="form-control wk-normal-input"  maxlength="50"/>
										</div>
									</div>
									
									
									<div>
										<label class="control-label wk-filed-label">
											生产时间:
										</label>
										<div class="input-group" style="width:340px">
											
											<input required="required" class="form-control wk-normal-input Wdate" type="text" 
												name="time"  maxlength="20" 
												onclick="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})"  maxlength="20"/>
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="control-label wk-filed-label">
											状态:
										</label>
										<div class="input-group" style="width: 340px">
											<select class="wk-select" name="state" style="width: 340px">
												<option value="使用中">使用中</option>
												<option value="维护">维护</option>
												<option value="停止使用">停止使用</option>
											</select>
										</div>
									</div>
									
									<div>
										<label class="control-label wk-filed-label">
												
										</label>
										<div class="input-group">
											<button type="submit" class="btn  wk-btn">
												提&nbsp;&nbsp;交
											</button>
											<button type="reset" class="btn  wk-btn">
												重&nbsp;&nbsp;置
											</button>
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