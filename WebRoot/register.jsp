<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<% 
		  if(session.getAttribute("flag")==("no")){
		    
		     out.println("<script>");
		     out.println("alert('该账号已注册');");
		     out.println("</script>");
		     session.setAttribute("flag","asd");
		  }
		%>
		<link rel="stylesheet" href="css/register.css" />
	</head>
	<body>
		<div id="navFont">
			<p>美食等你来</p>
		</div>
		
<div class="wrap"> 
  <form action="zheceServlet" method="post"> 
    <section class="loginForm"> 
      <header> 
        <h1>会员注册</h1> 
      </header> 
      <div class="loginForm_content"> 
        <fieldset> 
        <div id="font">账号</div>
          <div class="inputWrap"> 
            <input type="text" name="name" maxlength="10"  placeholder="会员帐号" autofocus required> 
          </div> 
         <div id="font">密码</div> <div class="inputWrap"> 
            <input type="password" name="pwd" placeholder="请输入密码" required> 
          </div> 
           <div id="font">确认密码</div> <div class="inputWrap"> 
            <input type="password" name="pwd" placeholder="请输入密码" required> 
          </div> 
         <div id="font">地址</div> <div class="inputWrap"> 
            <input type="text" name="address" placeholder="配送地址" required> 
          </div> 
         <div id="font">手机号</div> <div class="inputWrap"> 
            <input ime-mode:"disabled"   onkeydown="if(event.keyCode==13)event.keyCode=9" onKeypress="if ((event.keyCode<48 || event.keyCode>57)) event.returnValue=false"
            	type="number" name="num" placeholder="手机号" maxlength="11" required> 
          </div> 
          <div id="font">姓名</div><div class="inputWrap"> 
            <input type="text" name="cname" placeholder="请输入姓名" required> 
          </div> 
        </fieldset> 
        
        <fieldset> 
          <input type="submit" value="注册" style="margin-left:136px;"> 
         
        </fieldset> 
      </div> 
    </section> 
  </form> 
</div> 
	</body>
</html>


