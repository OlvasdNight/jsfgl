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
           function qicaiDel(id){
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path%>/qicaiDel.action?id="+id;
               }
           }
          
           function qicaiAdd(){
           		var url="<%=path%>/man/qicai/qicaiAdd.jsp";
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
						<a>器材管理</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="dx-operation-bar">
			<div class="col-lg-12">
				<button type="button" onclick="qicaiAdd()" class="man-btn man-btn-100">添加</button>
			</div>
		</div>
	
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default  wk-panel">
					<!-- 引入 分页   url里面的改成自己的路径 就是查询列表的这个方法  -->
			   		<pg:pager  url="qicaiList.action" items="${itemSize}" maxPageItems="${pageItem}" 
			   			maxIndexPages="${pageItem}" isOffset="${true}" export="offset,currentPageNumber=pageNumber"  scope="request">
					<pg:param name="type" value="qicaiMana" />
					<table class="man-table">
						<thead>
							<tr>
								<th width="180px">器材名称</th>
								<th >生产厂家</th>
								<th width="120px">生产时间</th>
								<th width="120px">状态</th>
								<th width="200px">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${qicaiList}" var="qicai" varStatus="status">
		
								<tr>
									
									<td>${qicai.name}</td>
									<td>${qicai.changjia}</td>
									<td>${qicai.time}</td>
									<td>${qicai.state}</td>
									
									<td>
										<a class="man-btn btn-blue btn-xs" href="<%=path%>/toqicaiEdit.action?id=${qicai.id}">
											编辑
										</a>
										<a class="man-btn btn-red btn-xs" onclick="qicaiDel('${qicai.id}')">
											删除
										</a>	
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