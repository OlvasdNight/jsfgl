<%@ page contentType="text/html; charset=gb2312" %>
<%@page session="true"%>
<%
	String path = request.getContextPath();
	//request.getSession().invalidate();
%>
<script>
      	  var win=window;
          while(win.parent!=window.top){
          	win=win.parent;
          }
          
          win.parent.location.replace("<%=path%>/login.jsp"); 
          <%
          session.invalidate();  
          %>
</script>