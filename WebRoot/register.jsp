<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<% 
		  if(session.getAttribute("flag")==("no")){
		    
		     out.println("<script>");
		     out.println("alert('���˺���ע��');");
		     out.println("</script>");
		     session.setAttribute("flag","asd");
		  }
		%>
		<link rel="stylesheet" href="css/register.css" />
	</head>
	<body>
		<div id="navFont">
			<p>��ʳ������</p>
		</div>
		
<div class="wrap"> 
  <form action="zheceServlet" method="post"> 
    <section class="loginForm"> 
      <header> 
        <h1>��Աע��</h1> 
      </header> 
      <div class="loginForm_content"> 
        <fieldset> 
        <div id="font">�˺�</div>
          <div class="inputWrap"> 
            <input type="text" name="name" maxlength="10"  placeholder="��Ա�ʺ�" autofocus required> 
          </div> 
         <div id="font">����</div> <div class="inputWrap"> 
            <input type="password" name="pwd" placeholder="����������" required> 
          </div> 
           <div id="font">ȷ������</div> <div class="inputWrap"> 
            <input type="password" name="pwd" placeholder="����������" required> 
          </div> 
         <div id="font">��ַ</div> <div class="inputWrap"> 
            <input type="text" name="address" placeholder="���͵�ַ" required> 
          </div> 
         <div id="font">�ֻ���</div> <div class="inputWrap"> 
            <input ime-mode:"disabled"   onkeydown="if(event.keyCode==13)event.keyCode=9" onKeypress="if ((event.keyCode<48 || event.keyCode>57)) event.returnValue=false"
            	type="number" name="num" placeholder="�ֻ���" maxlength="11" required> 
          </div> 
          <div id="font">����</div><div class="inputWrap"> 
            <input type="text" name="cname" placeholder="����������" required> 
          </div> 
        </fieldset> 
        
        <fieldset> 
          <input type="submit" value="ע��" style="margin-left:136px;"> 
         
        </fieldset> 
      </div> 
    </section> 
  </form> 
</div> 
	</body>
</html>


