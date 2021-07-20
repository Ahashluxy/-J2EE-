<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'foodpage.jsp' starting page</title>
    
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
  <table border=1 align="center">
   <tr><th>菜名</th><th>单价</th><th>点餐</th></tr> 
  <%
  int i=1;
  Connection con=null;
  ResultSet rs=null;
  Statement s=null;
  String JDriver = "com.mysql.jdbc.Driver"; 
	   	String userName="root";
		String userPasswd="";
		String dbName="restrant";
		String conURL="jdbc:mysql://localhost:3306/"+dbName;	 
			     try {
			     Class.forName(JDriver); 
			     con=DriverManager.getConnection(conURL,userName,userPasswd); 
			     }
			   catch(Exception e)
			     {  System.err.println(e.getMessage()); }
			     try
			{
				String name=null;
				String passwd=null;
				Statement stm=con.createStatement();
				ResultSet result=stm.executeQuery("select count(*) from  food");		
				int message_count=0;
				if(result.next())
				{
					message_count=result.getInt(1);
					result.close();			
				}
				if(message_count>0)
				{
					String sql="select * from food" ;
					result=stm.executeQuery(sql);
					
					while(result.next())
					{ 	
	%>
					<tr>
					<td><%=result.getString("foodname")%></td>
					<td><%=result.getString("uprice")%></td>
					<td><button id="<%=i %>" onclick="myfunction<%=i%>()">添加至购物车</button></td>");
                    </tr>
                    <script>
                    function myfunction<%=i%>(){
                        <%session.setAttribute("'"+i+"'",result.getString("foodname"));
                          session.setAttribute("'"+"p"+i+"'",result.getString("uprice"));
                        %>
                    }
                    </script>
                    <%=i++%>
                    <%
                    } 
                    %>
					
				<% result.close();
				stm.close();
				}
				}
				catch(Exception e){	e.printStackTrace();}    		 
  %>
  <a href="shopcar1.jsp">购物车</a>
  </body>
</html>
