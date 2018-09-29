<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>

	<br/>
	
	<div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
	
	<div class="panel-heading">
     <div class="panel-title">Sign In</div>
     <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="register.jsp">Need to Register?</a></div>
     </div> 
	
	<div style="padding-top:30px" class="panel-body" >

    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
	
	<form name="loginform" action="LoginController" method="post" onsubmit="return loginValidate()" class="form-horizontal" role="form">
	<br>

	
	 <div style="margin-bottom: 25px" class="input-group">
	 
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      
      <input id="username"  type="text" class="form-control" name="username" value="" placeholder="netid should be @utdallas.edu" pattern="+@utdallas.edu" title="Must be a utdallas email address" required>                                                    
       </div>
                                
     <div style="margin-bottom: 25px" class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
       </div>
         
     <input type="submit" name="submit" value="login"><br>
	                          
	
	<!-- Username: <input type="text" name="username" id="username"><br>
	Password: <input type="password" name="password" id="password"><br>
	<input type="submit" name="submit" value="login"><br>
	<a href="register.jsp">registration</a> -->
	
	
	</form>
	</div>
	</div>
	</div>
	</div>

</body>
</html>