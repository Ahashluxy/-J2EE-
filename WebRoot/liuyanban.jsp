<%@ page language="java" import="java.util.*" pageEncoding="gb2312"  import="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title></title>

    <link rel="stylesheet" href="css/form.css" media="screen" type="text/css" />

    <script src="js/modernizr.js"></script>


</head>

<body>

  <form method="post" action="houtai" >
  	
	<input name="telephone" placeholder="telephone?" class="name" required />
    <textarea rows="4" cols="50" name="message" placeholder="Please enter your message" class="message" required></textarea>
    <input class="btn" type="submit" value="Send" />
    
  </form>
  
   <div class="formtable">
   
     <font size=6 ><P align="center">留 言</P></font><table border=2 align="center" width="50%">
         <tr>
             <th width="20%">留言人</th><th width="50%">评价</th><th width="20%">时间</th>      
<% 
   String A="com.mysql.jdbc.Driver";
   String B="root";
   String C="";
   String D="restrant";
   String E="liuyeban";
   String F="jdbc:mysql://localhost:3306/"+D;
    Connection con=null;Statement s;ResultSet rs;
    Class.forName(A).newInstance();
    con=DriverManager.getConnection(F, B, C);
    s=con.createStatement();
    String sql="SELECt * FROM "+E;
    rs=s.executeQuery(sql);
    while(rs.next())
    {
        out.println("<tr>");
        out.println("<td align=>"+rs.getString("telephone")+"</td>");
        out.println("<td>"+rs.getString("message")+"</td>");
        out.println("<td>"+rs.getString("time")+"</td>");
        out.println("</tr>");
    }
%>      
   
</table> 
   </div>


  <script src='js/jquery.js'></script>

</body>

</html>
