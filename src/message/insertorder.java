

package message;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class insertorder extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
            doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    response.setContentType("text/html;charset=GB2312");
		    PrintWriter out=response.getWriter();
		   
		    byte b1[]=request.getParameter("a1").getBytes("ISO-8859-1");
			String s1=new String(b1);
			byte b2[]=request.getParameter("b1").getBytes("ISO-8859-1");
			String s2=new String(b2);
			Connection con=null;
			   String A="com.mysql.jdbc.Driver";
			   String B="root";
			   String C="";
			   String D="restrant";
			   String E="food";
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
			    	PreparedStatement stm=con.prepareStatement("insert into food values(?,?)");
			    	stm.setString(1,s1);
			    	stm.setString(2,s2);
			    	stm.execute();
			    	response.sendRedirect("foodpage1.jsp");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
				}
		}
}