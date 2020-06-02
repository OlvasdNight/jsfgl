<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<script language=JavaScript>
		
		function logout() {
			if (confirm("您确定要退出 健身中心吗？")) {
				top.location = "<%=path%>/web/logout.jsp";
				return true;
			}
		
			return false;
		}
	</script>


<div class="nav_bg">
	<div class="nav">
		<ul>
			<li class="headlogo">
				<a href="<%=path%>/index.action"></a>
			</li>
			<li ><!-- class="cur" -->
				<a href="<%=path%>/index.action">首页<br>
					<span>Home</span>
				</a>
			</li>
			<li>
				<a href="<%=path%>/webcoachList.action">热门私教课<br>
					<span>Personal</span>
				</a>
			</li>
			<li>
				<a href="<%=path%>/webgonggaoList.action">活动公告<br>
					<span>Announcement</span>
				</a>
			</li>
			<li>
				<a href="<%=path%>/list.action">健身项目<br>
					<span>Course</span>
				</a>
			</li>
			
			<li>
				<a href="<%=path%>/myorderList.action">课程预约<br>
					<span>Yuyue</span>
				</a>
			</li>
			
		
			
			<!--
			<li>
				<a href="#">在线充值<br>
					<span>Recharge</span>
				</a>
			</li>
			-->
			
			<c:if test="${sessionScope.user.name!=null}">
			<li>
				<a href="<%=path%>/web/userinfo.jsp" >${sessionScope.user.name}<br>
					<span>个人中心</span>
				</a>
			</li>
			<li>
				<a onclick="return logout()">退出<br>
					<span>Exit</span>
				</a>
			</li>
			</c:if>
			<c:if test="${sessionScope.user.name==null}">
			<li>
				<a href="<%=path%>/web/login.jsp" >登录<br>
					<span>Login</span>
				</a>
				
			</li>
			<li>
				<a href="<%=path%>/web/regiset.jsp" >注册<br>
					<span>Regiset</span>
				</a>
				
			</li>
			</c:if>
		</ul>
	</div>
</div>