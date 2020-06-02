<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"  %> 
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
		<script language="javascript">
           function courseSH(id,shState) {
               if(confirm('您确定此操作吗？')){
                   window.location.href="<%=path%>/courseSH.action?id="+id+"&shState="+shState;
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
						<a>审核私教课程管理</a>
					</li>
				</ul>
			</div>
		</div>

		
	
		

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default  wk-panel">
					<!-- 引入 分页   url里面的改成自己的路径 就是查询列表的这个方法  -->
			   		<pg:pager  url="teacourseList.action" items="${itemSize}" maxPageItems="${pageItem}" 
			   			maxIndexPages="${pageItem}" isOffset="${true}" export="offset,currentPageNumber=pageNumber"  scope="request">
					
					<table class="man-table" style=" table-layout: fixed; ">
						<thead>
							<tr>
								<th width="200px">项目名称</th>
								<th>课程名称</th>
								<th width="120px">教练姓名</th>
								<th width="140px">课程时间</th>
								<th width="80px">课程费用</th>
								
								<th width="80px">状态</th>
								<th width="120px">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${courseList}" var="course" varStatus="status">
		
								<tr>
									<td>${course.xmname} </td>
									<td><a style="text-decoration:underline;color:blue;" target="_blank" href="<%=path%>/tocourseView.action?id=${course.id}">${course.name}</a> </td>
									<td>${course.coachname} </td>
									<td>${course.time}</td>
									<td>${course.jiage}</td>
									<td><c:if test="${course.state==0}">待审核</c:if> <c:if test="${course.state==1}">通过</c:if> <c:if test="${course.state==-1}">不通过</c:if>  </td>
									<td>
										<c:if test="${course.state==0}">
										<a class="man-btn btn-blue btn-xs" onclick="courseSH('${course.id}',1)">
											通过
										</a>
										<a class="man-btn btn-red btn-xs" onclick="courseSH('${course.id}',-1)">
											不通过
										</a>
										</c:if>	
									</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
					<!-- 引入 分页  -->
					<pg:index>
					 	<jsp:include page="/man/pagination_tag.jsp" flush="true" />
					</pg:index>
					</pg:pager>   
				</div>
			</div>
		</div>

		

	</body>
</html>