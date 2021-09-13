<%@ page import="java.sql.*" %>
<html>
       <head>
       <title>Employee management </title>
      <link rel="stylesheet" href="mystyle.css">
      <script src="myscript.js"></script>
       </head>
       <body>
  <ul>
  
    <li style="float:left;display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;font-weight:bold;font-size:19px;">EMPLOYEE MANAGEMENT</li>
  <li><a href="uprmemp.jsp">Update/Remove Employee</a></li>
  <li><a class="active" href="addemp.jsp">Add Employee</a></li>
  <li><a  href="employee_list.jsp">Employee List</a></li>
  </ul>
       <h1>Add new Employee</h1>
        <form  action="Addemp" method="post" name="addemp">
          <div class="field">
          <span>Employee Name</span>
          <input type="text"  id="name" name="username" onfocusout="namevalidate()">
          </div>
          <div class="field">
          <span>Department</span>
          <input type="text"  id="dept" name="dept" onfocusout="deptvalidate()">
          </div>
          <div class="field">
          <span>Salary</span>
          <input type="number"  id="sal" name="sal" onfocusout="fieldvalidate()">
          </div>
          <div class="field">
            <input class="sub" type="submit" value="ADD">
          </div>
        </form>
      
      
     </body>
</html>