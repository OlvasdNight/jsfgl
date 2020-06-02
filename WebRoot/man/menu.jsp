<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=path%>/css/wukong-ui.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-select.min.css">
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap-select.min.js"></script>

		<script language='javascript'>var curopenItem = '1';</script>
		<script language="javascript" type="text/javascript"
			src="<%=path %>/js/menu.js"></script>
		<base target="main" />
		<style type="text/css">
		body {
		    background: #666;
		    margin: 0px;
		    padding: 0px;
		}
		</style>
	</head>

	<div class="row" style="background: #666;">
		<div class="col-lg-2" id="wk-menu-panel">
			<!--<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default wk-menu-panel-header">
						<div class="panel-body wk-menu-panel-body">
							管理面板 MENU
							<a data-toggle="collapse" href="#AMenu" data-parent="#accordion">管理面板 MENU</a>
						</div>
					</div>
				</div>
			</div>
			-->
		

			<div class="row">
				<div class="col-lg-12">
					<div class="panel-group wk-accordion-panel-group" id="accordion">
						
						<c:if test="${sessionScope.userType==0}">
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/adminList.action' target='main' >管理员管理</a>
								</div>
							</div>
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/userList.action' target='main' >会员管理</a>
								</div>
							</div>
							
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/coachList.action' target='main' >教练信息管理</a>
								</div>
							</div>
							
							<div class="panel panel-info wk-accordion-header">
								<div class="panel-heading">
									<a data-toggle="collapse" href="#GMenu" data-parent="#accordion">项目课程管理</a>
								</div>
								<div id="GMenu" class="panel-collapse collapse">
									<div class="list-group wk-accordion-list-group">
										<a type="button" class="list-group-item" href='<%=path %>/xiangmuList.action' target='main'>
											>&nbsp;&nbsp;项目管理
										</a>
									
										<a type="button" class="list-group-item" href='<%=path %>/courseList.action' target='main'>
											>&nbsp;&nbsp;课程管理
										</a>
										
									</div>
								</div>
							</div>
							
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/qicaiList.action' target='main' >器材管理</a>
								</div>
							</div>
							
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/gonggaoList.action' target='main' >公告管理</a>
								</div>
							</div>
							
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a data-toggle="collapse" href="#GMenu1" data-parent="#accordion">统计分析</a>
									
								</div>
								<div id="GMenu1" class="panel-collapse collapse">
									<div class="list-group wk-accordion-list-group">
										<a type="button" class="list-group-item" href='<%=path %>/barChart.action' target='main'>
											>&nbsp;&nbsp;柱状图
										</a>
									
										<a type="button" class="list-group-item" href='<%=path %>/pieChart.action' target='main'>
											>&nbsp;&nbsp;饼状图
										</a>
										
									</div>
								</div>
							</div>
							
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/orderList.action' target='main' >预约信息管理</a>
								</div>
							</div>
							
							
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/jiluList.action' target='main' >充值消费管理</a>
								</div>
							</div>
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/shcourseList.action' target='main'>审核信息管理</a>
								</div>
								
								
								
							</div>
						</c:if>
						
						<c:if test="${sessionScope.userType==1}">
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/tocoachInfo.action?id=${sessionScope.coach.id}' target='main' >个人信息</a>
								</div>
							</div>
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/teacourseList.action' target='main' >课程管理</a>
								</div>
							</div>
						
						
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/mygonggaoList.action' target='main' >公告管理</a>
								</div>
							</div>
							
							<div class="panel panel-info wk-accordion-header">
								<span ></span>
								<div class="panel-heading">
									<a href='<%=path %>/orderList.action' target='main' >课程预约</a>
								</div>
							</div>
						
						</c:if>
							
					
						
						
					
					</div>
				</div>
			</div>
		</div>

	
	</div>
</html>
