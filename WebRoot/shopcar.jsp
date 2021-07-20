<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/lunbotu.css" />
		<script type="text/javascript" src="js/lunbotu.js"></script>
		<script type="text/javascript" src="js/gonggao.js"></script>
		<link rel="stylesheet" href="css/index.css" />
		<link rel="stylesheet" href="css/vieworder.css" />
	</head>
	<body>
		<div id="all">
		<div id="nav">
			<ul>
  <li><a href="index.jsp"><img src="images/tt2.jpeg" ></a></li>
  <li><a href="index.jsp">主页</a></li>
  <li><a href="shopcar.jsp">购物车</a></li>
  <li><a href="liuyanban.jsp">留 言</a></li>
  <li><a href="order.jsp">我的订单</a></li>
   <li><a href="update.jsp">修改信息</a></li>
   <li><a href="foodpage3.jsp">所有菜品</a></li>
  <li><a href="aboutus.html">关于我们</a></li>
  <li><a href="login.jsp">退出</a></li>
  <li style="float: right; color: white;font-size: 15px;margin: 15px;">您好，欢迎光临！</a></li>
           </ul>
		</div>
		<div id="Photos">


         <ul>

                    <li><a href="#"><img src="images/logo1.jpg" style="width: 1024px;height: 450px;"  alt="天天外卖"></a></li>

                   <li><a href="#"><img src="images/logo2.jpg" style="width: 1024px;height: 450px;"alt="热卖披萨"></a></li>

                   <li><a href="#"><img src="images/logo3.jpg" style="width: 1024px;height: 450px;"alt="美味诱惑"></a></li>

                   <li><a href="#"><img src="images/logo4.jpg" style="width: 1024px;height: 450px;"alt="惊喜价格"></a></li>


                  

         </ul>

</div>
        <hr  id="hr1"/>       
       <div id="scroll">
       <div id="scrollBody" >
        <ul style="list-style: none;">
            <li>天天外卖开业大吉</li>
            <li>各种外卖下单即免配送费</li>
            <li>优惠多多，速来抢购</li>
        </ul>
        <br>
    </div>
    <img src="http://img.blog.csdn.net/20160831234909712" />
</div>
        <hr  id="hr2"/> 
   <div class="GWCcontent formtable" >
    <form action="ding" align="center">
  您的个人id是：<%out.print(session.getAttribute("id"));%><br><br>
  您点的菜如下：<br><br>
   <table border=1 align="center" width="70%">
   <tr><th>菜名</th><th>数量</th><th>单价</th></tr> 
  <%
  int x1=0;
  if(session.getAttribute("yxrst").toString()==""){}
  else 
  if(Integer.parseInt(session.getAttribute("yxrst").toString())>0)
  {
  out.println("<tr>");
  out.println("<td>"+session.getAttribute("yxrs")+"</td>");
  out.println("<td>"+session.getAttribute("yxrst")+"</td>");
  out.println("<td>"+session.getAttribute("yxrsp")+"</td>");
  out.println("</tr>");
  x1=Integer.parseInt(session.getAttribute("yxrsp").toString())*Integer.parseInt(session.getAttribute("yxrst").toString());
  }
  else
  {x1=0;}
  int x2=0;
  if(session.getAttribute("jjrst").toString()==""){}
  else if(Integer.parseInt(session.getAttribute("jjrst").toString())>0)
  {
  out.println("<tr>");
  out.println("<td>"+session.getAttribute("jjrs")+"</td>");
  out.println("<td>"+session.getAttribute("jjrst")+"</td>");
  out.println("<td>"+session.getAttribute("jjrsp")+"</td>");
  out.println("</tr>");
  x2=Integer.parseInt(session.getAttribute("jjrsp").toString())*Integer.parseInt(session.getAttribute("jjrst").toString());
  }
  else
  {x2=0;}
  int x3=0;
  if(session.getAttribute("mlxlxt").toString()==""){}
  else 
  if(Integer.parseInt(session.getAttribute("mlxlxt").toString())>0)
  {
  out.println("<tr>");
  out.println("<td>"+session.getAttribute("mlxlx")+"</td>");
  out.println("<td>"+session.getAttribute("mlxlxt")+"</td>");
  out.println("<td>"+session.getAttribute("mlxlxp")+"</td>");
  out.println("</tr>");
  x3=Integer.parseInt(session.getAttribute("mlxlxp").toString())*Integer.parseInt(session.getAttribute("mlxlxt").toString());
  }
  else
  {x3=0;}
  %>

    <%
  int x4=0;
  if(session.getAttribute("sltdst").toString()==""){}
  else if(Integer.parseInt(session.getAttribute("sltdst").toString())>0)
  {
  out.println("<tr>");
  out.println("<td>"+session.getAttribute("sltds")+"</td>");
  out.println("<td>"+session.getAttribute("sltdst")+"</td>");
  out.println("<td>"+session.getAttribute("sltdsp")+"</td>");
  out.println("</tr>");
  x4=Integer.parseInt(session.getAttribute("sltdsp").toString())*Integer.parseInt(session.getAttribute("sltdst").toString());
  }
  else
  {x4=0;}
  %>
  </table><br>
  合计:
  <% 
  out.println(x1+x2+x3+x4);
  %>
  <br> <br>
 <div style="margin-right:410px">
  <input type="submit" value="结算" class="btn">
  </div>
  </form>
   </div>
   
   <hr style="width: 1020px; clear: all;">
   <hr style="width: 1020px;clear: all;">
     <footer>
   		<h1><span><a href="">关于我们</a></span><span><a href="tencent://message/?uin=1361286946">联系我们</a></span></h1>
   		<div>
   			版权所有@天天外卖项目组
   		</div>
   	</footer>
        
<script type="text/javascript">
	scroll();
</script>
<script type="text/javascript">


         var Photos = new DongHua.Photos.init('Photos',{id:'Photos'});

</script>
</div>
	</body>
</html>

