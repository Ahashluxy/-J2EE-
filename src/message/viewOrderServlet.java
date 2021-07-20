package message;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.io.*;


public class viewOrderServlet extends  javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	private Connection con;
	 //�������ݿ�
	 public viewOrderServlet()
		{
		String JDriver = "com.mysql.jdbc.Driver"; //����JDBC�����������
	   	String userName="root";//���ݿ��û���
		String userPasswd="";//���ݿ��ȡ����
		String dbName="restrant";//���ݿ���
		//String tableName="userinfo";//���ݿ��еı���
		String conURL="jdbc:mysql://localhost:3306/"+dbName;//�������ݿ��URL		 
			     try {
			     Class.forName(JDriver).newInstance(); //����JDBC��������
			     con=DriverManager.getConnection(conURL,userName,userPasswd); //�������ݿ�URL
			     }
			   catch(Exception e)
			     {  System.err.println(e.getMessage()); }
		}		
	 
	// �õ�GET���󣬴����ݿ��ж���������Ϣ
	 public void doGet(HttpServletRequest request,HttpServletResponse response)
	        throws IOException, ServletException
	    {
		 doPost(request,response);
	    } 
	 public void doPost(HttpServletRequest request,HttpServletResponse response)
		        throws IOException, ServletException
		    {  	
	   		Collection<orderDataBean> ret=new ArrayList<orderDataBean>();
			try
			{
				Statement stm=con.createStatement();
				ResultSet result=stm.executeQuery("select count(*) from  orderinfo");		
				int message_count=1;
				if(result.next())
				{
					message_count=result.getInt(1);
					result.close();			
				}
				if(message_count>0)
				{
					result=stm.executeQuery("select * from orderinfo ");
					//result1=stm.executeQuery("select * from userinfo");
					while(result.next())
					{ 			
						String userid=result.getString("userid");
						String foodname=result.getString("foodname");
						String tnumber=result.getString("tnumber");
						String uprice=result.getString("uprice");
						String name=result.getString("name");
						String phone=result.getString("phone");
						String address=result.getString("address");
						String date=result.getString("date");
						//�����ݱ��浽MessageDataBean��
						orderDataBean order =new orderDataBean();
						order.setUserid(userid);
						order.setFoodname(foodname);
						order.setTnumber(tnumber);
						order.setUprice(uprice);
						order.setName(name);
						order.setPhone(phone);
						order.setAddress(address);
						order.setDate(date);
						ret.add(order);						
					}
				result.close();
				stm.close();
				}
		    //������ʾ���Ե�JSP
				request.setAttribute("message",ret);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("vieworder1.jsp");
			    requestDispatcher.forward(request,response);
			}
			catch(Exception e){	e.printStackTrace();}
		    }
}
