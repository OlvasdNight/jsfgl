<%@ page contentType="text/html; charset=gb2312" %>
<%@page session="true"%>
<%
    String path = request.getContextPath();
    session.invalidate();
%>
<script>
   var win=window;
   while(win.parent!=window.top){
      win=win.parent;
   }
   win.parent.location.replace("login.jsp"); 
   session.invalidate(); 
</script>