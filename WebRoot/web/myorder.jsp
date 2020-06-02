
<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"  %> 
<%
	String path = request.getContextPath();
	String basePath = path;
	path = path + "/web";
%>

<!DOCTYPE html>
<!-- saved from url=(0063)http://www.1012china.com/web/mission_details.html?courseId=1494 -->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<meta name="renderer" content="webkit">
		<title>健身中心</title>
		<!--css-->
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/reset.css">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/pagination.css">
		<link rel="stylesheet" href="<%=path%>/css/kalendae.css"
			type="text/css" charset="utf-8">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/style1.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/style2.css">
		<link rel="stylesheet" href="<%=path%>/css/swiper.min.css">
		<script language=JavaScript>
		
			function changeTab(temp) {
				var url = '';
				if(temp==1){
					url = "<%=basePath%>/web/userinfo.jsp";
				}else if(temp==2){
					url = "<%=basePath%>/myorderList.action";
				}else if(temp==3){
					url = "<%=basePath%>/myrecordList.action";
				}else if(temp==4){
					url = "<%=basePath%>/tochongzhi.action";
				}
				
				window.location.href=url;
			}
			function orderDel(id){
               if(confirm('您确定删除吗？')){
                   window.location.href="<%=basePath%>/myorderDel.action?id="+id;
               }
           }
			
		</script>	
	</head>

	<body>
		<jsp:include page="page/head.jsp" />
		<div class="classinfo">
			<div class="left" valign="top">
				<ul class="group1">
					<li  class="" onclick="changeTab(1)">
						用户资料
					</li>
					<li class="on" onclick="changeTab(2)">
						预约中心
					</li>
					<li class="" onclick="changeTab(4)">
						在线充值
					</li>
					<li class="" onclick="changeTab(3)">
						充值消费记录
					</li>
					
				</ul>
			</div>
			
			<div class="right" style="width: 990px;">
				<div class="service" style="width:100%">
					<h2 style="text-align:left;text-align: center;">
						我的预约
					</h2>
				</div>
				<section class="groupcoach_detail" style="margin:20px 0;">
				<!-- 引入 分页   url里面的改成自己的路径 就是查询列表的这个方法  -->
		   		<pg:pager  url="myorder.action" items="${itemSize}" maxPageItems="${pageItem}" 
		   			maxIndexPages="${pageItem}" isOffset="${true}" export="offset,currentPageNumber=pageNumber"  scope="request">
					
				<table class="excel">
					<tbody>
						<tr class="header">
							<th class="top myweek top-one">
								<b>课程名称</b>
							</th>
							<th class="top myweek top-one" width="100px">
								<b>教练</b>
							</th>
							<th class="top myweek top-two" width="180px">
								<b>预约时间</b>
							</th>
							<th class="top myweek top-thress" width="100px">
								<b>费用</b>
							</th>
							<th class="top myweek top-four" width="80px">
								<b>状态</b>
							</th>
							<th class="top myweek top-five" width="80px">
								<b>操作</b>
							</th>
							
						</tr>
		
						<c:forEach items="${orderList}" var="order" varStatus="status">	
						<tr>
							<td><p class="courseName">${order.coursename}</p></td>
							<td><p class="courseName">${order.coachname}</p>
							</td>
							<td><p class="time">${order.cdate}</p></td>
							<td><p>${order.feiyong}</p></td>
							<td><p>${order.state}</p></td>
							<td>
								<!--<a class="man-btn btn-xs" href="<%=basePath%>/orderWC.action?id=${order.id}">
											完成
								</a>
								-->
								
								<a class="man-btn btn-red btn-xs" onclick="orderDel(${order.id})">
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
				</section>
			
			</div>

		</div>
		<jsp:include page="page/foot.jsp" />

	</body>
</html>