package message;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class update extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
            doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    response.setContentType("text/html;charset=GB2312");
		    PrintWriter out=response.getWriter();
		   
		    byte b1[]=request.getParameter("a").getBytes("ISO-8859-1");
			String s1=new String(b1);
			byte b2[]=request.getParameter("b").getBytes("ISO-8859-1");
			String s2=new String(b2);
			byte b3[]=request.getParameter("c").getBytes("ISO-8859-1");
			String s3=new String(b3);
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
			    String sql="Update userinfo set phone="+"'"+s1+"'"+"where userid="+"'"+s2+"'"; 
			    String sql1="Update userinfo set address="+"'"+s3+"'"+"where userid="+"'"+s2+"'"; 
			    try {
					s=con.createStatement();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		    	try {
					s.executeUpdate(sql);
					s.executeUpdate(sql1);
					response.sendRedirect("update.jsp");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
}