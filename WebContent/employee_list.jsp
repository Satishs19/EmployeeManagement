<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<html>
       <head>
       <title>Employee management </title>
      <link rel="stylesheet" href="mystyle.css">
       </head>
       <body>
  <ul>
  <li style="float:left;display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;font-weight:bold;font-size:19px;">EMPLOYEE MANAGEMENT</li>
  <li><a href="uprmemp.jsp">Update/Remove Employee</a></li>
  <li><a href="addemp.jsp">Add Employee</a></li>
  <li><a class="active" href="employee_list.jsp">Employee List</a></li>
  </ul>
       <h1>List of Employee's</h1>
       <%
           Connection connection = DriverManager.getConnection("jdbc:odbc:MS Access Database");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from emp_list") ;
       %>
      <table border=1 cellPadding=10 cellSpacing=1>
      <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Department</th>
      <th>Salary</th>
      </tr>
      <% while(resultset.next()){ %>
      <tr>
       <td> <%= resultset.getString(1) %></td>
       <td> <%= resultset.getString(2) %></td>
       <td> <%= resultset.getString(3) %></td>
       <td> <%= resultset.getString(4) %></td>
      </tr>
      <% } %>
     </table>
     </body>
</html>