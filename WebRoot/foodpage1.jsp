<%@ page language="java" import="java.util.*" pageEncoding="gb2312" import="message.orderDataBean" import="java.sql.*"%>
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
  <li><a href="liuyanban.jsp">�� ��</a></li>
  <li><a href="userfind.jsp">�û���ѯ</a></li>
   <li><a href="insertorder.jsp">�����Ʒ</a></li>
    <li><a href="foodpage1.jsp">���в�Ʒ</a></li>
   <li><a href="aboutus1.html">��������</a></li>
   <li><a href="login.jsp">�˳�</a></li>
  <li style="float: right; color: white;font-size: 15px;margin: 15px;">���ã������̼ң���ӭ���٣�</a></li>
           </ul>
		</div>
		<div id="Photos">


         <ul>

                   <li><a href="#"><img src="images/logo1.jpg" style="width: 1024px;height: 450px;"  alt="��������"></a></li>

                   <li><a href="#"><img src="images/logo2.jpg" style="width: 1024px;height: 450px;"alt="��������"></a></li>

                   <li><a href="#"><img src="images/logo3.jpg" style="width: 1024px;height: 450px;"alt="��ζ�ջ�"></a></li>

                   <li><a href="#"><img src="images/logo4.jpg" style="width: 1024px;height: 450px;"alt="��ϲ�۸�"></a></li>


                  

         </ul>

</div>
        <hr  id="hr1"/>       
       <div id="scroll">
       <div id="scrollBody" >
        <ul style="list-style: none;">
            <li>����������ҵ��</li>
            <li>���������µ��������ͷ�</li>
            <li>�Żݶ�࣬��������</li>
        </ul>
        <br>
    </div>
    <img src="http://img.blog.csdn.net/20160831234909712" />
</div>
        <hr  id="hr2"/> 
        
    <div class="SJcontent">
   	<p align="center">���в�Ʒ</p>
   	<div class="formtable" >
     <table border=1 align="center">
   <tr><th>����</th><th>����</th></tr> 
     <% 
     
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
					 
					  out.println("<tr>");
					  out.println("<td>" +result.getString("foodname")+"</td>");
					  out.println("<td>" +result.getString("uprice")+"</td>");
					  out.println("</tr>");
					  
					}
					}
					}catch(Exception e){
					
					}
					
					%>
					</table>
    </div>
   
   </div>
   <hr style="width: 1020px; clear: all;">
   <hr style="width: 1020px;clear: all;">
     <footer>
   		<h1><span><a href="">��������</a></span><span><a href="tencent://message/?uin=1361286946">��ϵ����</a></span></h1>
   		<div>
   			��Ȩ����@����������Ŀ��
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

