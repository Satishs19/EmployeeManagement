

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;

import javax.servlet.annotation.WebServlet;

@WebServlet("/logincheck")
public class Logincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Logincheck() {
        super();
    }
    Connection con;
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = req.getParameter("username");
        String pass = req.getParameter("pass");
        res.setContentType("text/html");
        ResultSet rs = null;
        PrintWriter out = res.getWriter();
        try{
        	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        	con = DriverManager.getConnection("jdbc:odbc:MS Access Database");
        	Statement s=con.createStatement();
        	String sql="SELECT * from Admin_details where username='"+name+"' AND password='"+pass+"'";
           rs = s.executeQuery(sql);
		               //boolean flag=false;
		               //while(rs.next()){
		               	//if(name==rs.getString(2) && pass==rs.getString(4)){
		               		//flag=true;
		               	//}
		               //}
		    if(rs.next()){
		    	res.sendRedirect("employee_list.jsp");
		    } else {
		        out.println("<h1 align='center'>Invalid Details Try again</h1>");
            }
            con.close();
            s.close();
        } catch(Exception e) {
            System.out.println("Exception is: " + e);
        }
	}

}
