package message;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io .*;
public class zheceServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{


private Connection con; Statement s; ResultSet rs;ResultSet rs1;
public zheceServlet() 
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

/* ����GET���� */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
	doPost(request,response);
  }
/* ����POST���� */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException{
	  response.setContentType("text/jsp;charset=gb2312");
	  PrintWriter out = response.getWriter();
	  byte b1[]=request.getParameter("name").getBytes("iso-8859-1");
		String na=new String(b1);
		String sql = "select * from userinfo where userid="+"'"+na+"'";
		HttpSession session = request.getSession(); 
		
		try {
			s=con.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			rs=s.executeQuery(sql);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			if(rs.next())
			{
				session.setAttribute("flag","no");
				response.setContentType("text/jsp;charset=gb2312");
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("register.jsp");
				requestdispatcher.forward(request,response);
				
				
			}
			else{
				byte b2[]=request.getParameter("pwd").getBytes("iso-8859-1");
				String pwd=new String(b2);
				byte b3[]=request.getParameter("cname").getBytes("iso-8859-1");
				String cna=new String(b3);
				byte b4[]=request.getParameter("num").getBytes("iso-8859-1");
				String nu=new String(b4);	
				byte b5[]=request.getParameter("address").getBytes("iso-8859-1");
				String ad=new String(b5);
				if(na==null){na="";}
				if(pwd==null){pwd="";}
				if(cna==null){cna="";}
				if(nu==null){nu="";}
				if(ad==null){ad="";}
				
				try
				 {
			   //����õ���Ϣװ�����ݿ�
					PreparedStatement stm=con.prepareStatement("insert into userinfo values(?,?,?,?,?)");
					stm.setString(1,na);
					stm.setString(2,pwd);
					stm.setString(3,cna);	
					stm.setString(4,nu);
					stm.setString(5,ad);
					try 
					  {	stm.execute();	} 
					catch(Exception e){ 	}
			}
 catch (SQLException e) 
 {e.printStackTrace();}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		response.sendRedirect("login.jsp");
	  }

}
  

