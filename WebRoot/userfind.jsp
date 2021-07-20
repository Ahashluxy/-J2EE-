<%@ page language="java" import="java.util.*" pageEncoding="gb2312" import="java.sql.*"%>
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
        
    <div class="SJcontent formtable">
   	<p align="center" style="font-size:25px">我的会员</p><hr><br>
	<table border=1 align="center">
		<tr><th>用户登录号</th><th>姓名</th><th>联系方式</th>
			<th>地址</th></tr>
		<%
		String driverName="com.mysql.jdbc.Driver";
		String userName="root";//数据库用户名
		String userPasswd="";//数据库存取密码
		String dbName="restrant";//数据库名
		String tableName="userinfo";//数据库中的表名
		String url="jdbc:mysql://localhost:3306/"+dbName;//连接数据库的URL
		Connection con=null;Statement s;ResultSet rs;//声明三类对象
		try
			{Class.forName(driverName).newInstance();//加载JDBC驱动程序
			}catch(ClassNotFoundException e)
			{System.out.print("Error loading Driver,不能加载驱动程序！");}
		try
			{con=DriverManager.getConnection(url,userName,userPasswd);//连接数据库
			}catch(SQLException er)
			{System.out.print("Error getConnection，不能连接数据库");}
		try
			{
				s=con.createStatement();//创建Statement类的对象
				String sql="SELECT * FROM "+tableName;//定义查询语句
				rs=s.executeQuery(sql);//执行查询,得到查询结果集
			while(rs.next())
				{out.println("<tr>");
				 out.println("<td align=center>"+rs.getString("userid")+"</td>");	
				 out.println("<td align=center>"+rs.getString("name")+"</td>");	
				 out.println("<td align=center>"+rs.getString("phone")+"</td>");	
				 out.println("<td align=center>"+rs.getString("address")+"</td>");	
				
				 out.println("</tr>");
				}
				rs.close();s.close();con.close();//关闭数据库,释放占用的资源
				}
				catch(SQLException er)
				{System.out.println("Error executeQuery,不能执行查询!");}
				%>
			</table>
 
 
   
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

