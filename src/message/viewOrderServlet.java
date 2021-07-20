package message;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.io.*;


public class viewOrderServlet extends  javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	private Connection con;
	 //连接数据库
	 public viewOrderServlet()
		{
		String JDriver = "com.mysql.jdbc.Driver"; //定义JDBC驱动程序对象
	   	String userName="root";//数据库用户名
		String userPasswd="";//数据库存取密码
		String dbName="restrant";//数据库名
		//String tableName="userinfo";//数据库中的表名
		String conURL="jdbc:mysql://localhost:3306/"+dbName;//连接数据库的URL		 
			     try {
			     Class.forName(JDriver).newInstance(); //加载JDBC驱动程序
			     con=DriverManager.getConnection(conURL,userName,userPasswd); //连接数据库URL
			     }
			   catch(Exception e)
			     {  System.err.println(e.getMessage()); }
		}		
	 
	// 得到GET请求，从数据库中读出留言信息
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
						//将数据保存到MessageDataBean中
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
		    //访问显示留言的JSP
				request.setAttribute("message",ret);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("vieworder1.jsp");
			    requestDispatcher.forward(request,response);
			}
			catch(Exception e){	e.printStackTrace();}
		    }
}
