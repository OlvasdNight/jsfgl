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
			
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
		
		<script language="javascript"> 
		    
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
						<a>
							项目管理
						</a>
					</li>
					<li>
						<a>
							新增项目信息
						</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default wk-panel " style="overflow: hidden;">
					<div class="panel-heading">
						新增项目信息
					</div>
					<form action="<%=path%>/xiangmuAdd.action" name="formAdd"
						method="post">
						<div class="panel-body" style="float: left; width: 600px;">
								
								<div class="form-inline">
									<div>
										<label class="control-label wk-filed-label">
											项目名称:
										</label>
										<div class="input-group" style="width:450px">
											<input required="required" name="name" type="text"
												class="form-control wk-normal-input" />
										</div>
									</div>
									
									

									<div>
										<label class="control-label wk-filed-label">
											描述:
										</label>
										<div class="input-group" style="width:450px">
											<textarea required="required" name="miaoshu"  rows="6"
												class="form-control wk-normal-input" placeholder="请输入描述信息"></textarea>
										</div>
									</div>
									
									
									
									<div>
										<label class="control-label wk-filed-label">
												
										</label>
										<div class="input-group">
											<button type="submit"  class="btn  wk-btn">
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