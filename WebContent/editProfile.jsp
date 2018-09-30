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
<script type="text/javascript" src="password.css"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Profile</title>
</head>
<body>

	<br/>
	
	<div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
	
	<div class="panel-heading">
     <div class="panel-title">Edit Profile</div>
     </div> 
     
	
	<div style="padding-top:30px" class="panel-body" >

    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
	
	<form name="loginform" action="CustomerController" method="post" onsubmit="return loginValidate()" class="form-horizontal" role="form">
	<br>

	<label for="primary">Netid:</label>
	 <div style="margin-bottom: 25px" class="input-group">
	 
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       
      <input id="username" readonly type="text" class="form-control" name="username" value="${userDetails.username}" placeholder="netid should be @utdallas.edu" pattern="+.@utdallas.edu" title="Must be a utdallas email address" required>                                        
       </div>
       
       
       <label for="primary">First Name:</label>
       <div style="margin-bottom: 25px" class="input-group">
	 
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       <input type="text" class="form-control" name="first_name" id="first_name" value="${userDetails.first_name }" placeholder="Enter your First Name" required/>
         </div>
         
         
         <label for="primary">Last Name:</label>
         <div style="margin-bottom: 25px" class="input-group">
	 
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       <input type="text" class="form-control" name="last_name" id="last_name" value="${userDetails.last_name }"  placeholder="Enter your last name" required/>
         </div>
         
         
      <label for="primary">Password:</label>                          
     <div style="margin-bottom: 25px" class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" value="${userDetails.password}" placeholder="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
       </div>
       
       
       <label for="primary">Confirm Password:</label>
       <div style="margin-bottom: 25px" class="input-group">
	 
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
       <input type="password" class="form-control" name="retry-password" id="retry-password"  placeholder="Confirm your password" value="${userDetails.password}" required/>
         </div>
         
         <label for="primary">Contact Number:</label>
          <div style="margin-bottom: 25px" class="input-group">
	 
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       <input type="number" class="form-control" name="cell_phone" id="cell_phone" value="${userDetails.cell_phone}" placeholder="Enter your contact number" required/>
         </div>
         
         
       
       
       
         
     <input class="btn btn-primary" type="submit" name="submit" value="updateProfile" >
							
	                          
	
	
	
	
	</form>
	</div>
	</div>
	</div>
	</div>

</body>
</html>
