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
   	<p align="center">�ҵĶ���</p>
   	<div class="formtable" >
 <TABLE  align="center" width="100%" border=1  >
 <tr><th align="center">�������</th><th align="center">�ͻ�����</th><th align="center">�ͻ��ʺ�</th><th align="center">��Ʒ��ʽ</th><th align="center">��ϵ�绰</th><th align="center">���͵�ַ</th><th align="center">����</th><th align="center">����</th>
 <th align="center">�ܼ�</th><th align="center">�µ�ʱ��</th>
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
		<td align="center"> <input class="btn"style="width: 80px;" type="button" id="<%=a%>" value="δ����" onclick="change<%=a%>();"/></td>
		 <script type="text/javascript">

        function change<%=a%>(){
            var btn=document.getElementById("<%=a%>");
           	 btn.value="������";
           
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

