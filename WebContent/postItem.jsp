<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript" src="password.css"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Post an Item</title>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="home.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css"
          href="home/assets/css/bootstrap.min.css">
    <!-- Icon -->
    <link rel="stylesheet" type="text/css"
          href="home/assets/fonts/line-icons.css">
    <!-- Slicknav -->
    <link rel="stylesheet" type="text/css"
          href="home/assets/css/slicknav.css">
    <!-- Owl carousel -->
    <link rel="stylesheet" type="text/css"
          href="home/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css"
          href="home/assets/css/owl.theme.css">
    <!-- Slick Slider -->
    <link rel="stylesheet" type="text/css" href="home/assets/css/slick.css">
    <link rel="stylesheet" type="text/css"
          href="home/assets/css/slick-theme.css">
    <!-- Animate -->
    <link rel="stylesheet" type="text/css"
          href="home/assets/css/animate.css">
    <!-- Main Style -->
    <link rel="stylesheet" type="text/css" href="home/assets/css/main.css">
    <!-- Responsive Style -->
    <link rel="stylesheet" type="text/css"
          href="home/sassets/css/responsive.css">

    <%

        String message = request.getServletContext().getAttribute("message").toString();
        String userId = request.getServletContext().getAttribute("userId").toString();

    %>

    <style>
        .footer {
            position: relative;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 70px;
            background-color: #808080;
            color: white;
            text-align: center;
            padding-top: 22px;
        }
    </style>
</head>


<header id="header-wrap"> <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg fixed-top scrolling-navbar indigo">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#main-navbar" aria-controls="main-navbar"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span> <span class="icon-menu"></span>
                    <span class="icon-menu"></span> <span class="icon-menu"></span>
                </button>
            </div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light"
                 style="width:100%">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link"
                                                href="userhomepage.jsp"> Home </a></li>

                        <li class="nav-item"><a class="nav-link" href="#contact">
                            Contact </a></li>
                    </ul>
                    <b><%= message %></b>
                    <ul class="nav navbar-nav ml-auto">
                        <%--<form name="regform" action="CustomerController" method="post"--%>
                        <%--class="form-horizontal" role="form">--%>
                        <%--<input class=" nav-item nav-link" type="hidden" name="username"--%>
                        <%--value="<%= userId %>">--%>
                        <%--&lt;%&ndash;<input class=" nav-item nav-link" type="submit" name="submit" value="editProfile"&ndash;%&gt;--%>
                        <%--&lt;%&ndash;style="border: hidden">&ndash;%&gt;--%>

                        <%--</form>--%>

                        <li class=" nav-item "><a class="nav-link" href="postItem.jsp">
                            Post New Item </a></li>
                        <li class="nav-item"><a class="nav-link " href="list_items.jsp">
                            View Posted Items </a>
                        <li class="nav-item"><a class="nav-link " href="myList.jsp">
                            Favorites </a>
                        <li class=" nav-item "><a class="nav-link" href="myProfile.jsp">
                            My Profile </a></li>

                        <li class="nav-item"><a class="nav-link " href="logout.jsp">
                            Logout </a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- Mobile Menu Start -->
        <ul class="mobile-menu navbar-nav">
            <li><a class="page-scroll" href="userhomepage.jsp"> Home </a></li>

            <li><a class="page-scroll" href="#contact"> Contact </a></li>
            <li><a class="page-scroll" href="postItem.jsp"> Post New Item </a></li>
            <li><a class="page-scroll" href="list_items.jsp"> View Posted Items </a></li>
            <li><a class="page-scroll" href="myList.jsp"> Favorites </a></li>
            <li><a class="page-scroll" href="myProfile.jsp"> My Profile </a></li>
            <li><a class="page-scroll" href="#feature "> Logout </a></li>
        </ul>
        <!-- Mobile Menu End --> </nav> <!-- Navbar End --> <!--  Hero Area Start -->
</header>
<body>

	<br /><br />

	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">

				<div class="panel-heading">
					<div class="panel-title">Post an Item</div>
				</div>

				<h5>
					<p>* fields are compulsory</p>
				</h5>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					<form name="itemform" action="ItemController" method="post"
						accept="image/gif, image/jpeg" class="form-horizontal"
						role="form" style="color: black">
						
						<%--@declare id="primary"--%><br> <label for="primary">*Product name:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span> 
							<input id="pname" type="text" class="form-control" name="pname" value=""
								placeholder="Enter the product name"
								title="Missing product name" required>
						</div>

						<label for="primary">*Category:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span> <select
								class="form-control" name="category">
								
								<% List<Category> categories = (List<Category>)request.getServletContext().getAttribute("categories"); %>
						
								<% for(int i=0; i<categories.size(); i++){ %>
									<option value="<%=categories.get(i).getId()%>"><%=categories.get(i).getName() %></option>
								<%}%>
								
							</select>
						</div>


						<label for="primary">*Quantity:</label>
						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"></span> <input type="text"
								class="form-control" name="quantity" id="quantity"
								placeholder="Enter the quantity" required />
						</div>


						<label for="primary">*Tags:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span> 
							<input type="text"	class="form-control" name="tags" id="tags"
								placeholder="Enter the tag names"  required/>
						</div>

						<label for="primary">*Photos:</label>
						<div style="margin-bottom: 25px" class="input-group">
					

							<span class="input-group-addon"></span> 
							<input type='file' onchange="readURL(this);" class="form-control" name="image_url" id="image_url"
								placeholder="Upload a picture" required/>
						</div>
						    <img id="blah" src="#" alt="" style="width:30%"/>
						
						<br/><br/>


						<label for="primary">*Is this item for sale/rent?</label>
						<div style="margin-bottom: 25px" class="input-group">
							<input type="radio" name="for_sale" id="for_sale" value="true"
								required />sale <input type="radio" name="for_sale"
								id="for_sale" value="false" required />Rent

						</div>

						<label for="primary">*Price:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span> 
							<input type="number" class="form-control" name="price" id="price"
								placeholder="Enter the price" required />
						</div>

						<label for="primary">*Is the price negotiable?</label>
						<div style="margin-bottom: 25px" class="input-group">

							<input type="radio" name="negotiable" id="negotiable" value="true"
								required />Yes <input type="radio" name="negotiable"
								id="negotiable" value="false" required />No
						</div>

						<label for="primary">Comments:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span>
							<textarea class="form-control" name="comment" id="comment"
								rows="5" cols="50" placeholder="Enter the item description"></textarea>
						</div>

						<input class="btn btn-primary" type="submit" name="submit"
							value="saveItem">


					</form>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#blah')
                .attr('src', e.target.result)
                .width(150)
                .height(200);
        };

        reader.readAsDataURL(input.files[0]);
    }
}</script>

	<!-- Contact Section Start -->
	<section id="contact" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-header text-center">
						<h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">Contact</h2>
					</div>
				</div>
			</div>
			<div class="row contact-form-area wow fadeInUp" data-wow-delay="0.4s">

				<div class="col-md-6 col-lg-6 col-sm-12">
					<div class="contact-right-area wow fadeIn">
						<h2>Get In Touch</h2>
						<div class="contact-right">
							<div class="single-contact">
								<div class="contact-icon">
									<i class="lni-map-marker"></i>
								</div>
								<p>Richardson,Texas</p>
							</div>
							<div class="single-contact">
								<div class="contact-icon">
									<i class="lni-envelope"></i>
								</div>
								<p>
									<a href="#">utdeals@gmail.com</a>
								</p>
								<p>
									<a href="#">s.b.p.t.n@gmail.com</a>
								</p>
							</div>
							<div class="single-contact">
								<div class="contact-icon">
									<i class="lni-phone-handset"></i>
								</div>
								<p>
									<a href="#">+(123) 456-7890</a>
								</p>
								<p>
									<a href="#">+(123) 789-0456</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact Section End -->

<div class="footer" style="background-color: black">
	<p>Copyright 2018 UTDeals All Right Reserved</p>
</div>


<!-- Go to Top Link -->
<a href="#" class="back-to-top"> <i class="lni-arrow-up"></i>
</a>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="home/assets/js/jquery-min.js"></script>
	<script src="home/assets/js/popper.min.js"></script>
	<script src="home/assets/js/bootstrap.min.js"></script>
	<script src="home/assets/js/owl.carousel.min.js"></script>
	<script src="home/assets/js/slick.min.js"></script>
	<script src="home/assets/js/wow.js"></script>
	<script src="home/assets/js/jquery.nav.js"></script>
	<script src="home/assets/js/scrolling-nav.js"></script>
	<script src="home/assets/js/jquery.easing.min.js"></script>
	<script src="home/assets/js/jquery.slicknav.js"></script>
	<script src="home/assets/js/main.js"></script>
	<script src="home/assets/js/form-validator.min.js"></script>
	<script src="home/assets/js/contact-form-script.min.js"></script>
	<script src="home/assets/js/map.js"></script>
	<script type="text/javascript"
			src="//maps.googleapis.com/maps/api/js?key=AIzaSyCsa2Mi2HqyEcEnM1urFSIGEpvualYjwwM"></script>
</body>
</html>