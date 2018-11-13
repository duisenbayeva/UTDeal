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
    <style>
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #808080;
            color: white;
            text-align: center;
            padding-top: 22px;
            height: 70px;
        }
    </style>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <link href="/items/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/items/items.css" rel="stylesheet">

</head>
<body>

<br/>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
    <h5 class="my-0 mr-md-auto font-weight-normal">UTDeals</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="userhomepage.jsp">Home</a>
        <a class="p-2 text-dark" href="myProfile.jsp">My Profile</a>
        <a class="p-2 text-dark" href="postItem.jsp">Post Item</a>
        <a class="p-2 text-dark" href="list_items.jsp">Posted Items</a>
        <a class="p-2 text-dark" href="myList.jsp">Favorite List</a>
        <a class="p-2 text-dark" href="logout.jsp">Logout</a>
    </nav>
</div>

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

<div class="footer">
    <p>Copyright 2018 UTDeals All Right Reserved</p>
</div>

</body>
</html>
