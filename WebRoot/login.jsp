<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/login.css" />
    </head>
    <body>
    	<div id="navPic">
    		<img src="images/tt2.jpeg">
    	</div>
    	<div class="leftlogin">
    		
    		<p>天天外卖项目组</p>
    		<p>课程设计专用</p>
    		<p>所有内容均为虚构</p>
    		<p>素材全部都从网上借鉴</p>
    		<p>仅供内部交流</p>
    		<img src="images/1d78553f303638e0dfb2ea22f5a1edb5.jpg">
    	</div>
    	<div class="wrap"> 
  <form action="check1" method="post"> 
    <section class="loginForm"> 
      <header> 
        <h1>会员登录</h1> 
      </header> 
      <div class="loginForm_content"> 
        <fieldset> 
          <div class="inputWrap"> 
            <input type="text" name="na" placeholder="会员帐号" autofocus required> 
          </div> 
          <div class="inputWrap"> 
            <input type="password" name="pw" placeholder="请输入密码" required> 
          </div> 
        </fieldset> 
        <fieldset> 
          <input type="checkbox" checked="checked"> 
          <span>下次自动登录</span> 
        </fieldset> 
        <fieldset> 
          <input type="submit" value="登录"> 
          <a href="loss.jsp">忘记密码？</a> <a href="register.jsp">注册</a> 
        </fieldset> 
      </div> 
    </section> 
  </form> 
</div> 
 	</body>
</html>