<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shopcar1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <table border=1 align="center" width="70%">
   <tr><th>����</th></th><th>����</th></tr> 
    <%
    int i=1;
    for(i=1;i<100;i++)
    {
    if(session.getAttribute("'"+i+"'")!="null");
    {
    out.println("<tr>");
    out.println("<td>"+session.getAttribute("'"+i+"'")+"</td>");
    out.println("<td>"+session.getAttribute("'p"+i+"'")+"</td>");
    out.println("</tr>");
    }
    }
     %>
     </table>
  </body>
</html>
