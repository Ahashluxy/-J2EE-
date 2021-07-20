<%@ page language="java" import="java.util.*" pageEncoding="gb2312" import="message.orderDataBean"%>
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
  <li><a href="liuyanban.jsp">留 言</a></li>
  <li><a href="userfind.jsp">用户查询</a></li>
   <li><a href="insertorder.jsp">插入菜品</a></li>
    <li><a href="foodpage1.jsp">所有菜品</a></li>
   <li><a href="aboutus1.html">关于我们</a></li>
   <li><a href="login.jsp">退出</a></li>
  <li style="float: right; color: white;font-size: 15px;margin: 15px;">您好，尊贵的商家，欢迎光临！</a></li>
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
        
    <div class="SJcontent">
   	<p align="center">我的订单</p>
   	<div class="formtable" >
 <TABLE  align="center" width="100%" border=1  >
 <tr><th align="center">订单编号</th><th align="center">客户姓名</th><th align="center">客户帐号</th><th align="center">餐品菜式</th><th align="center">联系电话</th><th align="center">配送地址</th><th align="center">件数</th><th align="center">单价</th>
 <th align="center">总价</th><th align="center">下单时间</th>
 </tr>
 <% 
    //int message_count=0;
    Collection <orderDataBean>messages1=(Collection<orderDataBean>)request.getAttribute("message");
    Iterator<orderDataBean> it=messages1.iterator();
    int a = 1;
    while(it.hasNext())
     {  orderDataBean mg=(orderDataBean)it.next();  
       

 %>
   <tr>
		<td align="center"><%=a%></td>
		<td align="center"><%=mg.getName()%></td>	
		<td align="center"><%=mg.getUserid()%></td>
		<td align="center"><%=mg.getFoodname()%></td>
		<td align="center"><%=mg.getPhone()%></td>
		<td align="center"><%=mg.getAddress()%></td>
	    <td align="center"><%=mg.getTnumber()%></td>
        <td align="center"><%=mg.getUprice()%></td>
		 <% int price,total,num;
		 price=Integer.parseInt(mg.getUprice());
		 num=Integer.parseInt(mg.getTnumber());
		 total=price*num;
		 %> 
		<td align="center"><%=total%></td>
		<td align="center"><%=mg.getDate()%></td>
		<td align="center"> <input class="btn"style="width: 80px;" type="button" id="<%=a%>" value="未配送" onclick="change<%=a%>();"/></td>
		 <script type="text/javascript">

        function change<%=a%>(){
            var btn=document.getElementById("<%=a%>");
           	 btn.value="已配送";
           
        }
       
    </script>
		<td><%a=a+1; %></td>
		
	</tr>
   <%  //message_count++;
   
  } 
   %>
 </table>
 </div>
   
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

