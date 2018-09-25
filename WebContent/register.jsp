<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="bootstrap.css">

<!-- Website CSS style -->
<link rel="stylesheet" type="text/css" href="main.css">

<!-- Website Font style -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

</head>
<body>

<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">UTDeals</h1>
	               		<hr />
	               		<h5>* represents compulsory fields</h5>
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">NetId*</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Net id" required/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">First Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="first_name" id="first_name"  placeholder="Enter your First Name" required/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Last Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="last_name" id="last_name"  placeholder="Enter your Last Name" required/>
								</div>
							</div>
						</div>

			

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password* </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password" required/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password*</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="retry-password" id="retry-password"  placeholder="Confirm your Password" required/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Contact Number * </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="cell_phone" id="cell_phone" max="9999999999"  placeholder="Enter your Contact Info" required/>
								</div>
							</div>
						</div>

						

				         
				         <input type="submit" name="submit" value="register" >
							<input type="reset" name="reset">
					</form>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="bootstrap.js"></script>
	</body>






<!-- old -->
<!-- 
<form name="regform" action="LoginController" method="post" onsubmit="return regValidate()">
	<br>${message}<br>
	
	<h2>Register yourself!</h2>
	<h5> * means compulsory fields</h5>
	
	Netid*: <input type="text" name="username" required> <br> <!-- netid@utdallas.edu will be username -->
	<!-- 
	<div id="username_error"></div><br>
	
	
	First Name <input type="text" name="first_name">
	<br>
	
	Last Name <input type="text" name="last_name">
	<br>
	Password*: <input type="password" name="password" id="password" required> 
	<br>
	Re-Type Password*: <input type="password" name="retry-password" id="retry-password" required> 
	<br>
	<div id="password_error"></div><br>
	
	Contact Number * <input type="number" name="cell_phone" id="cell_phone" max="9999999999" required>
	<br>
	
	<input type="submit" name="submit" value="register" >
	<input type="reset" name="reset">
	
	</form>
	-->
</body>
</html>
