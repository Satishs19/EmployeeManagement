

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.*;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;


@WebServlet("/Remove")
public class Remove extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Remove() {
        super();
    }
    
    Connection con;
	//private ServletConfig config;
	//public void init(ServletConfig config) throws ServletException{
	//this.config=config; }
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
        try{
        	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        	con = DriverManager.getConnection("jdbc:odbc:MS Access Database");
        	Statement sta = con.createStatement();
        	int c=0;
        	c = sta.executeUpdate("DELETE FROM emp_list WHERE Emp_id="+id+"");
            if(c!=0) {
            	res.sendRedirect("employee_list.jsp");
            } 
            con.close();
            sta.close();
        } catch(Exception e) {
            System.out.println("Exception is: " + e);
        }
	}
}
