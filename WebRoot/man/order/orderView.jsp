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
						<a>预约信息管理</a>
					</li>
					<li>
						<a>查看预约信息</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default wk-panel ">
					<div class="panel-heading">
						查看预约信息
					</div>
					<form>
						<div class="panel-body">
							<input name="id" type="hidden" value="${admin.id}"/>
							<div class="form-inline">
								<div>
									<label class="control-label wk-filed-label">
										客户账号:
									</label>
									<div class="input-group" style="width:450px">
										<input readonly="readonly" type="text"
											class="form-control wk-normal-input"  value="${order.uname}"/>
									</div>
								</div>

								
								
								<div>
									<label class="control-label wk-filed-label">
										课程名称:
									</label>
									<div class="input-group" style="width:450px">
										<input readonly="readonly" type="text"
											class="form-control wk-normal-input"  value="${order.coursename}" />
									</div>
								</div>
								<div>
									<label class="control-label wk-filed-label">
										教练:
									</label>
									<div class="input-group" style="width:450px">
										<input readonly="readonly" type="text"
											class="form-control wk-normal-input"  value="${order.coachname}"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										预留电话:
									</label>
									<div class="input-group" style="width:450px">
										<input readonly="readonly" type="text"
											class="form-control wk-normal-input"  value="${order.tel}"/>
									</div>
								</div>
								<div>
									<label class="control-label wk-filed-label">
										费用:
									</label>
									<div class="input-group" style="width:450px">
										<input readonly="readonly" type="text"
											class="form-control wk-normal-input"  value="${order.feiyong}"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										预约时间:
									</label>
									<div class="input-group" style="width:450px">
										<input readonly="readonly" type="text"
											class="form-control wk-normal-input"  value="${order.cdate}"/>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										状态:
									</label>
									<div class="input-group" style="width:450px">
										<input readonly="readonly" type="text"
											class="form-control wk-normal-input"  value="${order.state}"/>
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