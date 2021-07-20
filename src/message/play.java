
package message;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class play extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(); 
		response.setContentType("text/html;charset=GB2312");
	    PrintWriter out=response.getWriter();
	    String s1 = new String(); 
	     s1=request.getParameter("zhanghao");
		//String s1=new String(b1);
	     out.println("<p>"+s1+"</p>");
	    
		byte b2[]=request.getParameter("telephone").getBytes("GB2312");
		String s2=new String(b2);
		Connection con=null;
        Statement s=null;
        ResultSet rs=null;
		   String A="com.mysql.jdbc.Driver";
		   String B="root";
		   String C="";
		   String D="restrant";
		   String E="userinfo";
		   String F="jdbc:mysql://localhost:3306/"+D;
		    try {
				Class.forName(A).newInstance();
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    try {
				con=DriverManager.getConnection(F, B, C);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    try {
		    	String sql="SELECT * FROM "+E+" where userid="+"'"+s1+"'"+"&& phone="+"'"+s2+"'";
		    	s=con.createStatement();
		    	rs=s.executeQuery(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}   
		   
		    
					   try {
						       if(rs.next())
						       {
						    	   session.setAttribute("flag1","yes");
						    	   String mm=rs.getString("userpasswd");
						    	   session.setAttribute("mm", mm);
									RequestDispatcher requestdispatcher = request.getRequestDispatcher("loss.jsp");
									requestdispatcher.forward(request,response);
						       }
						       else
						       {
						    	   session.setAttribute("flag1", "no");
									RequestDispatcher requestdispatcher = request.getRequestDispatcher("loss.jsp");
									requestdispatcher.forward(request,response);
						       }
					       } catch (SQLException e)
					          {
						  // TODO Auto-generated catch block
						       e.printStackTrace();
	
	}
	}

	private String trim(String s1) {
		// TODO Auto-generated method stub
		return null;
	}

	private void trim() {
		// TODO Auto-generated method stub
		
	}
}