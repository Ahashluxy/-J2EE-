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
  <li><a href="liuyanban.jsp">�� ��</a></li>
  <li><a href="userfind.jsp">�û���ѯ</a></li>
  <li><a href="insertorder.jsp">�����Ʒ</a></li>
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
        
    <div class="SJcontent formtable">
   	<p align="center" style="font-size:25px">�ҵĻ�Ա</p><hr><br>
	<table border=1 align="center">
		<tr><th>�û���¼��</th><th>����</th><th>��ϵ��ʽ</th>
			<th>��ַ</th></tr>
		<%
		String driverName="com.mysql.jdbc.Driver";
		String userName="root";//���ݿ��û���
		String userPasswd="";//���ݿ��ȡ����
		String dbName="restrant";//���ݿ���
		String tableName="userinfo";//���ݿ��еı���
		String url="jdbc:mysql://localhost:3306/"+dbName;//�������ݿ��URL
		Connection con=null;Statement s;ResultSet rs;//�����������
		try
			{Class.forName(driverName).newInstance();//����JDBC��������
			}catch(ClassNotFoundException e)
			{System.out.print("Error loading Driver,���ܼ�����������");}
		try
			{con=DriverManager.getConnection(url,userName,userPasswd);//�������ݿ�
			}catch(SQLException er)
			{System.out.print("Error getConnection�������������ݿ�");}
		try
			{
				s=con.createStatement();//����Statement��Ķ���
				String sql="SELECT * FROM "+tableName;//�����ѯ���
				rs=s.executeQuery(sql);//ִ�в�ѯ,�õ���ѯ�����
			while(rs.next())
				{out.println("<tr>");
				 out.println("<td align=center>"+rs.getString("userid")+"</td>");	
				 out.println("<td align=center>"+rs.getString("name")+"</td>");	
				 out.println("<td align=center>"+rs.getString("phone")+"</td>");	
				 out.println("<td align=center>"+rs.getString("address")+"</td>");	
				
				 out.println("</tr>");
				}
				rs.close();s.close();con.close();//�ر����ݿ�,�ͷ�ռ�õ���Դ
				}
				catch(SQLException er)
				{System.out.println("Error executeQuery,����ִ�в�ѯ!");}
				%>
			</table>
 
 
   
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

