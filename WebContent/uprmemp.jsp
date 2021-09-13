<%@ page import="java.sql.*" %>
<html>
       <head>
       <title>Employee management </title>
      <link rel="stylesheet" href="mystyle.css">
       </head>
       <body>
  <ul>
  
  <li style="float:left;display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;font-weight:bold;font-size:19px;">EMPLOYEE MANAGEMENT</li>
  <li><a class="active" href="uprmemp.jsp">Update/Remove Employee</a></li>
  <li><a href="addemp.jsp">Add Employee</a></li>
  <li><a href="employee_list.jsp">Employee List</a></li>
  </ul>
       <h1>Update Employee Details</h1>
       <form  action="Upemp" method="post">
       <div class="field">
          <span>Employee Id</span>
          <input type="number"  name="id" id="eid" onfocusout="idvalidate()">
          </div>
          <div class="field">
          <span>Employee Name</span>
          <input type="text"  name="username" id="name" onfocusout="namevalidate()">
          </div>
          <div class="field">
          <span>Department</span>
          <input type="text"  name="dept" id="dept" onfocusout="deptvalidate()">
          </div>
          <div class="field">
          <span>Salary</span>
          <input type="number"  name="sal" id="sal" onfocusout="salvalidate()">
          </div>
          <div class="field">
            <input class="sub" type="submit" value="Update">
          </div>
        </form>
       
       <br>
       <hr><br>
       <h1>Remove Employee</h1>
      <form  action="Remove" method="post">
       <div class="field">
          <span>Employee Id</span>
          <input type="number"  name="id" id="eid" onfocusout="idvalidate()">
          </div>
          <div class="field">
            <input class="sub" type="submit" value="Delete">
          </div>
        </form>
      
     </body>
