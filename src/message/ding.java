
package message;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.io 

.*;
 public class ding extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet
 {
	 private Connection con;
	 //连接数据库
	 public ding()
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
	   		response.setContentType("gb2312");
	   		boolean create = true;
			HttpSession session=request.getSession(create); 
			byte b1[]=session.getAttribute("id").toString().getBytes("iso-8859-1");
			String id=new String(b1);
				
			try
			{
				String name=null;
				String phone=null;
				String address=null;
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
					
					String sql="select * from userinfo where userid="+"'"+id+"'";
					result=stm.executeQuery(sql);
					
					while(result.next())
					{ 			
				        phone=result.getString("phone");
				        address=result.getString("address");
				        name=result.getString("name");
					}
					session.setAttribute("phone", phone);
					session.setAttribute("address", address);
					session.setAttribute("name", name);					
					if(session.getAttribute("yxrst").toString()==""){}
					else if(Integer.parseInt(session.getAttribute("yxrst").toString())>0)
					{
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
					String date=df.format(new Date());
					String fdn=session.getAttribute("yxrs").toString();
					String fdp=session.getAttribute("yxrsp").toString();
				    String fdt=session.getAttribute("yxrst").toString();
					PreparedStatement stm2=con.prepareStatement("insert into orderinfo values(?,?,?,?,?,?,?,?)");
					stm2.setString(1,id);
					stm2.setString(2,fdn);
					stm2.setString(3,fdt);	
					stm2.setString(4,fdp);
					stm2.setString(5,name);
					stm2.setString(6,phone);
					stm2.setString(7,address);
					stm2.setString(8, date);
					try 
					  {	stm2.execute();} 
					catch(Exception e){}
					}
					
					if(session.getAttribute("jjrst").toString()==""){}
					else if(Integer.parseInt(session.getAttribute("jjrst").toString())>0)
					{
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
					String date=df.format(new Date());
					String fdn=session.getAttribute("jjrs").toString();
					String fdp=session.getAttribute("jjrsp").toString();
				    String fdt=session.getAttribute("jjrst").toString();
					PreparedStatement stm2=con.prepareStatement("insert into orderinfo values(?,?,?,?,?,?,?,?)");
					stm2.setString(1,id);
					stm2.setString(2,fdn);
					stm2.setString(3,fdt);	
					stm2.setString(4,fdp);
					stm2.setString(5,name);
					stm2.setString(6,phone);
					stm2.setString(7,address);
					stm2.setString(8, date);
					try 
					  {	stm2.execute();} 
					catch(Exception e){}
					}
					if(session.getAttribute("mlxlxt").toString()==""){}
					else if(Integer.parseInt(session.getAttribute("mlxlxt").toString())>0)
					{
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
					String date=df.format(new Date());
					String fdn=session.getAttribute("mlxlx").toString();
					String fdp=session.getAttribute("mlxlxp").toString();
				    String fdt=session.getAttribute("mlxlxt").toString();
					PreparedStatement stm2=con.prepareStatement("insert into orderinfo values(?,?,?,?,?,?,?,?)");
					stm2.setString(1,id);
					stm2.setString(2,fdn);
					stm2.setString(3,fdt);	
					stm2.setString(4,fdp);
					stm2.setString(5,name);
					stm2.setString(6,phone);
					stm2.setString(7,address);
					stm2.setString(8, date);
					try 
					  {	stm2.execute();} 
					catch(Exception e){}
					}
					if(session.getAttribute("sltdst").toString()==""){}
					else if(Integer.parseInt(session.getAttribute("sltdst").toString())>0)
					{
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
					String date=df.format(new Date());
					String fdn=session.getAttribute("sltds").toString();
					String fdp=session.getAttribute("sltdsp").toString();
				    String fdt=session.getAttribute("sltdst").toString();
					PreparedStatement stm2=con.prepareStatement("insert into orderinfo values(?,?,?,?,?,?,?,?)");
					stm2.setString(1,id);
					stm2.setString(2,fdn);
					stm2.setString(3,fdt);	
					stm2.setString(4,fdp);
					stm2.setString(5,name);
					stm2.setString(6,phone);
					stm2.setString(7,address);
					stm2.setString(8, date);
					try 
					  {	stm2.execute();} 
					catch(Exception e){}
					}
				result.close();
				stm.close();
				}
			}
			catch(Exception e){	e.printStackTrace();}
			response.sendRedirect("order.jsp");
		    }
	    
	   	
	}
