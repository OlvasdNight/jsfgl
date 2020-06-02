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
           function userDel(id){
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path%>/userDel.action?id="+id;
               }
           }
          
           function userAdd(){
           		var url="<%=path%>/man/user/userAdd.jsp";
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
						<a>会员管理</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="dx-operation-bar">
			<div class="col-lg-12">
				<form action="<%=path%>/userList.action" name="formAdd"
						method="post">
					<div class="panel-body">
					
						<div class="form-inline">
							<div class="input-group">
								<label class="control-label wk-filed-label" style=" margin: 10px 10px 10px 0px;">
									用户昵称:
								</label>
								<div class="input-group" style="width:150px">
									<input  name="seruname" type="text" value="${seruname}"
										class="form-control wk-normal-input" maxlength="20"/>
								</div>
							</div>
							
							<div class="input-group">
								<div class="input-group">
									<button type="submit" class="btn  wk-btn">查询</button>
								
								</div>
							</div>
						</div>
					</div>
					
				</form>
			
				
			</div>
		</div>
	
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default  wk-panel">
					<!-- 引入 分页   url里面的改成自己的路径 就是查询列表的这个方法  -->
			   		<pg:pager  url="userList.action" items="${itemSize}" maxPageItems="${pageItem}" 
			   			maxIndexPages="${pageItem}" isOffset="${true}" export="offset,currentPageNumber=pageNumber"  scope="request">
					<pg:param name="seruname" value="${seruname}" />
					<table class="man-table">
						<thead>
							<tr>
								<th width="180px">用户名</th>
								<th width="120px">真实姓名</th>
								<th width="60px">性别</th>
								<th width="60px">年龄</th>
								<th width="120px">会员余额</th>
								<th >联系方式</th>
								<th width="200px">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${userList}" var="user" varStatus="status">
		
								<tr>
									
									<td>${user.uname}</td>
									
									<td>${user.name}</td>
									<td>${user.sex}</td>
									<td>${user.age}</td>
									<td>${user.jifen}</td>
									<td>${user.tel}</td>
									
									<td>
										<a class="man-btn btn-xs" onclick="userpwd('${user.id}')">
											初始化密码
										</a>
										<!--
										<a class="man-btn btn-blue btn-xs" href="<%=path%>/touserEdit.action?id=${user.id}">
											编辑
										</a>
										-->
										
										<a class="man-btn btn-red btn-xs" onclick="userDel('${user.id}')">
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