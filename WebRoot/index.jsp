<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/lunbotu.css" />
		<script type="text/javascript" src="js/lunbotu.js"></script>
		<script type="text/javascript" src="js/gonggao.js"></script>
		<link rel="stylesheet" href="css/index.css" />
		<script>
function myfunction1()
{
  
  <%
  String a1 = request.getParameter("number1");
  session.setAttribute("yxrs","鱼香肉丝");
  session.setAttribute("yxrsp", "10");
  session.setAttribute("yxrst",a1);
  %>
}
function myfunction2()
{
  
  <%
  String a2 = request.getParameter("number2");
  session.setAttribute("jjrs","京酱肉丝");
  session.setAttribute("jjrsp", "28");
  session.setAttribute("jjrst",a2);
  %>
}
function myfunction3()
{
  
  <%
  String a3 = request.getParameter("number3");
  session.setAttribute("mlxlx","麻辣小龙虾");
  session.setAttribute("mlxlxp", "30");
  session.setAttribute("mlxlxt",a3);
  %>
}
function myfunction4()
{
  
  <%
  String a4 = request.getParameter("number4");
  session.setAttribute("sltds","酸溜土豆丝");
  session.setAttribute("sltdsp", "50");
  session.setAttribute("sltdst",a4);
  %>
}
</script>
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
  <li style="float: right; color: white;font-size: 15px;margin: 15px;">您好，第 <jsp:useBean id="cn" scope="application" class="message.count"/> 
  <jsp:setProperty  name="cn"  property="count"  value="0" /> <!--该语句只有创建新对象时才执行  -->
   <% cn.increase(); %>
   <!-- 在网页上显示计数器结果   -->
    <jsp:getProperty  name="cn"  property="count"   /> 位会员，欢迎光临！</a></li>
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
   <div class="left">
   <div class="gg">
   	<div class="gg1">
        <marquee direction="up" onMouseOut="this.start()" onMouseOver="this.stop()" scrollamount="3" >
            <ul>
                <li>天天外卖菜单</li>
                <li>鱼香肉丝</li>
                <li>麻辣小龙虾</li>
                <li>京酱肉丝</li>
                <li>酸辣土豆丝</li>
                <li>物美价廉</li>
                <li>极速配送</li>
                <li>免除餐盒费</li>
            </ul>
        </marquee>
     </div>
   </div>
   <div id="ch">
   	<h3></h3>
   	</div>
   	<div class="gz">
   		
  <video  controls="controls" loop="loop" autoplay="autoplay">
  <source src="images/video.mp4" type="audio/mp4"></source>

</video>
   	</div>
   	<div id="fon">
   	<h2>当前访问人数： <jsp:getProperty  name="cn"  property="count"   /> 人</h2>	
   	</div>
   	</div>
   	<div class="right">
   	 <form action="index.jsp">
<table border="1" cellpadding="-100" >
<tr>
  <td ><img src="images/ML.jpeg"><div id="gwc"><input type="number"min="0" max="99" value="<%= session.getAttribute("mlxlxt")%>" name="number3" onclick="myfunction3()"/>
  <input type="submit" value="加入购物车"></input></div></td>
  <td><img src="images/SL.jpeg"><div id="gwc"><input type="number"min="0" max="99" value="<%= session.getAttribute("sltdst")%>"name="number4"  onclick="myfunction4()"/> 
  	<input type="submit" value="加入购物车"></input></div></td>
</tr>   
<tr>
  <td><img src="images/YX.jpeg"><div id="gwc"><input type="number" min="0" max="99" value="<%= session.getAttribute("yxrst")%>" name="number1" onclick="myfunction1()"/> 
  	<input type="submit" value="加入购物车" width="100px"></input></div></td>
  <td><img src="images/JJ.jpeg"><div id="gwc"><input type="number" min="0" max="99" value="<%= session.getAttribute("jjrst")%>"name="number2" onclick="myfunction2()"/> 
  	<input type="submit" value="加入购物车"></input></div></td>
</tr>
</table>
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

