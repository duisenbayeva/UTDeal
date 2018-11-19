<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="home.css">
<title>My Favorite List</title>


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


<header id="header-wrap"> <!-- Navbar Start --> <nav
		class="navbar navbar-expand-lg fixed-top scrolling-navbar indigo">
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
					<li class="nav-item "><a class="nav-link"
												   href="userhomepage.jsp"> Home </a></li>

					<li class="nav-item"><a class="nav-link" href="#contact">
						Contact </a></li>
				</ul>
				<ul class="nav navbar-nav ml-auto">
					<form name="regform" action="CustomerController" method="post"
						  class="form-horizontal" role="form">
						<input class=" nav-item nav-link" type="hidden" name="username"
							   value="${userId}">
						<%--<input class=" nav-item nav-link" type="submit" name="submit" value="editProfile"--%>
						<%--style="border: hidden">--%>

					</form>

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
		<li><a class="page-scroll" href="#hero-area"> Home </a></li>
		<li class="nav-item"><a class="nav-link" href="#team"> Team </a>
		</li>
		<li><a class="page-scroll" href="#contact"> Contact </a></li>
		<li><a class="page-scroll" href="#feature "> Edit Profile </a></li>
		<li><a class="page-scroll" href="postItem.jsp"> Post New Item </a></li>
		<li><a class="page-scroll" href="list_items.jsp"> View Posted Items </a></li>
		<li><a class="page-scroll" href="myList.jsp"> Favorites </a></li>
		<li><a class="page-scroll" href="#myProfile.jsp"> My Profile </a></li>
		<li><a class="page-scroll" href="#feature "> Logout </a></li>
	</ul>
	<!-- Mobile Menu End --> </nav> <!-- Navbar End --> <!--  Hero Area Start -->
</header>
<body>
	<div id="hero-area" class="hero-area-bg">
		<div class="overlay"></div>
		<div class="container">
			<div class="row" style="background-color: white">
				<div class="col-md-12 col-sm-12">
					<div class="contents text-left">
						<div class="row contact-form-area wow fadeInUp"
							data-wow-delay="0.4s">

							<div class="col-md-6 col-lg-6 col-sm-12">
							<a href="itemPage1.jsp">
							<img src="home/assets/img/item/1.jpg" alt="Snow"
								style="width:30%"/></a>
								<a href="itemPage2.jsp">
							<img src="home/assets/img/item/2.jpg" alt="Forest"
								style="width:30%"/></a>
								<a href="itemPage3.jsp">
							<img src="home/assets/img/item/6.jpg" alt="Mountains"
								style="width:30%"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>

<div class="footer" style="background-color: black">
	<p>Copyright 2018 UTDeals All Right Reserved</p>
</div>


			<!-- Go to Top Link -->
			<a href="#" class="back-to-top"> <i class="lni-arrow-up"></i>
			</a>

		<!-- Preloader -->
		<div id="preloader">
			<div class="loader" id="loader-1"></div>
		</div>
		<!-- End Preloader -->
        </div>
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
        </div>
    </div>
    </body>
</html>