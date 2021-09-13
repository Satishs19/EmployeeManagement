<html>
<head>
<title>Employee Management</title>
<link rel="stylesheet" href="mystyle.css">
<script src="myscript.js">
</script>
</head>
<body>
<div class="content">
        <h1>Admin Login</h1>
        <form  action="logincheck" method="post" name="loginform">

          <div class="field">
          <span>User name:</span>
          <input type="text"  name="username" onfocusout="namevalidate()">
          </div>
          
          <div class="field">
          <span>Password:&nbsp;</span>
          <input type="password"  name="pass" id="pa" onfocusout="passvalidate()">
          </div>
          <div class="field">
            <input class="sub" type="submit" value="LOGIN">
          </div>
        </form>
        </div>
</body>
</html>