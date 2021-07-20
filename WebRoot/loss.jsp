<%@ page contentType="text/html; charset=GB2312" import="java.sql.*" %>

<html>
<link rel="stylesheet" href="css/loss.css" media="screen" type="text/css" />

    <script src="js/modernizr.js"></script>

        <p align="center" style="color:white" ><font size="10" >找回密码</font></p>
  <form method="post" action="play" >
  	
	<input name="zhanghao" placeholder="帐号?" class="name" required />
    <input name="telephone" type="number" placeholder="手机?" class="name" required />
    <input   class="btn" type="submit" value="Send" />
    <% 
		  if(session.getAttribute("flag1")==("no")){
		    
		     out.println("<script>");
		     out.println("alert('所给信息不正确，不能找回密码');");
		     out.println("</script>");
		     session.setAttribute("flag","asd");
		  }
		   if(session.getAttribute("flag1")==("yes")){
		    String b=session.getAttribute("mm").toString();
		     out.println("<script>");
		     out.println("alert('密码为"+b+"')");
		     out.println("</script>");
		     session.setAttribute("flag","asd");
		  }
		  
		%>
  </form>
</body>
<html>

