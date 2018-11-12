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
    <title>My Profile</title>
</head>
<body>

<br/>

<div class="container">
    <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info" >

            <div class="panel-heading">
                <div class="panel-title">Your Profile</div>
            </div>

            <div style="padding-top:30px" class="panel-body" >
                <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                <form name="loginform" action="CustomerController" method="post" onsubmit="return loginValidate()" class="form-horizontal" role="form">
                    <%--@declare id="primary"--%><br>
                        Netid : ${user.getUsername()} <br/> <br/>
                        First Name : ${user.getFirst_name() } <br/> <br/>
                        Last Name : ${user.getLast_name() } <br/> <br/>
                        Contact number : ${user.getCell_phone() } <br/> <br/>

                    <input class="btn btn-primary" type="submit" name="submit" value="editProfile" >
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
