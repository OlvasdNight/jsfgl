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
           function orderDel(id){
               if(confirm('您确定删除吗？')){
                   window.location.href="<%=path%>/order?type=orderDel&id="+id;
               }
           }
          
           function orderAdd(){
           		
                var url="<%=path%>/man/order/orderAdd.jsp";
			 	window.location.href=url;
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
						<a>预约信息管理</a>
					</li>
				</ul>
			</div>
		</div>
	
		
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default  wk-panel">
					<!-- 引入 分页   url里面的改成自己的路径 就是查询列表的这个方法  -->
			   		<pg:pager  url="order" items="${itemSize}" maxPageItems="${pageItem}" 
			   			maxIndexPages="${pageItem}" isOffset="${true}" export="offset,currentPageNumber=pageNumber"  scope="request">
					<pg:param name="type" value="orderMana" />
					<table class="man-table">
						<thead>
							<tr>
								<th width="180px">用户名</th>
								<th>课程名称</th>
								<th width="120px">教练名称</th>
								<th width="120px">预留电话</th>
								<th width="80px">费用</th>
								<th width="160px">预约时间</th>
								<th width="80px">状态</th>
								<th width="140px">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${orderList}" var="order" varStatus="status">
								<tr>
									<td>${order.uname}</td>
									<td>${order.coursename}</td>
									
									<td>${order.coachname} </td>
									<td>${order.tel}</td>
									<td>${order.feiyong}</td>
									<td>${order.cdate}</td>
									<td>${order.state}</td>
									<td>
										
										<a class="man-btn btn-blue btn-xs" href="<%=path%>/toorderView.action?id=${order.id}">
											查看
										</a>
									
										
										<a class="man-btn btn-red btn-xs" onclick="orderDel('${order.id}')">
											删除
										</a>
										<c:if test="${order.state=='预约'}">
										<a class="man-btn  btn-xs" href="<%=path%>/orderEdit.action?id=${order.id}">
											完成
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