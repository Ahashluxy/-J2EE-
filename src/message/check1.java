
package message;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.io 

.*;
 public class check1 extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet
 {
	 private Connection con;
	 //连接数据库
	 public check1()
		{
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
		}		
	 
	 public void doGet(HttpServletRequest request,HttpServletResponse response)
	        throws IOException, ServletException
	    {
		 doPost(request,response);
	    }  
	   	public void doPost(HttpServletRequest request,HttpServletResponse response)
		        throws IOException, ServletException
		    {  
	   		boolean create = true;
			HttpSession session=request.getSession(create); 
	   		byte b1[]=request.getParameter("na").getBytes("utf-8");
			String na=new String(b1);
			session.setAttribute("id",na);
			byte b2[]=request.getParameter("pw").getBytes("utf-8");
			String pw=new String(b2);
			if((na.equals("admin"))&&(pw.equals("000000")))
			{response.sendRedirect("viewOrderServlet");}
			try
			{
				String name=null;
				String passwd=null;
				Statement stm=con.createStatement();
				ResultSet result=stm.executeQuery("select count(*) from  userinfo");		
				int message_count=0;
				if(result.next())
				{
					message_count=result.getInt(1);
					result.close();			
				}
				if(message_count>0)
				{
					String sql="select * from userinfo where userid="+"'"+na+"'";
					result=stm.executeQuery(sql);
					
					while(result.next())
					{ 			
						name=result.getString("userid");
						passwd=result.getString("userpasswd");
						String phone1=result.getString("phone");
						String address1=result.getString("address");
						String name1=result.getString("name");
						session.setAttribute("phone",phone1);
						session.setAttribute("address", address1);
						session.setAttribute("name",name1 );		
					}
				result.close();
				stm.close();
				}
				if((na.equals(name))&&(pw.equals(passwd)))
				{response.sendRedirect("index.jsp");}
				else{response.sendRedirect("login.jsp");}
			}
			catch(Exception e){	e.printStackTrace();}
		    }
	   	
	}
