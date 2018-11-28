<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="home.css">
<title>IKEA Table</title>
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
</head>
<body>

	<header id="header-wrap"> <!-- Navbar Start --> <nav
			class="navbar navbar-expand-lg fixed-top scrolling-navbar indigo"></nav>
	</header>
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
			 style="width:100%"></nav>
		<div class="collapse navbar-collapse" id="navbarNav">




			<ul class="nav navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="#hero-area"> Home </a></li>
				<li class="nav-item"><a class="nav-link" href="#team"> Team
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#contact">
						Contact </a></li>
			</ul>
			<ul class="nav navbar-nav ml-auto">
				<form name="regform" action="CustomerController" method="post"
					class="form-horizontal" role="form">
					<input class=" nav-item nav-link" type="hidden" name="username"
						value="${userId}"></input> <input class=" nav-item nav-link"
						type="submit" name="submit" value="editProfile"
						style="border: hidden"></input>
				</form>
				<li class=" nav-item "><a class="nav-link" href="postItem.jsp">
						Post Item </a></li>
				<li class="nav-item"><a class="nav-link " href="list_items.jsp">
						My List </a>
				<li class="nav-item"><a class="nav-link " href="logout.jsp">
						Logout </a></li>
			</ul>
		</div>
	</div>
	<!-- Mobile Menu Start -->
	<ul class="mobile-menu navbar-nav">
		<li><a class="page-scroll" href="#hero-area"> Home </a></li>
		<li class="nav-item"><a class="nav-link" href="#team"> Team </a>
		</li>
		<li><a class="page-scroll" href="#contact"> Contact </a></li>
		<li><a class="page-scroll" href="#feature "> Edit Profile </a></li>
		<li><a class="page-scroll" href="#feature "> My List </a></li>
		<li><a class="page-scroll" href="#feature "> Logout </a></li>
	</ul>
	<!-- Mobile Menu End --> </nav> <!-- Navbar End --> <!--  Hero Area Start -->
	<div id="hero-area" class="hero-area-bg">
		<div class="overlay"></div>
		<div class="container">
			<div class="row" style="background-color: white">
				<div class="col-md-12 col-sm-12">
					<div class="contents text-left">
						<div class="row contact-form-area wow fadeInUp"
							data-wow-delay="0.4s">

							<form name="itemform" action="ItemController" method="post"
								accept="image/gif, image/jpeg"
								class="col-md-6 col-lg-6 col-sm-12" role="form">
								<img src="${itemDetails.image_url}"
									style="float: right; width: 50%; height: 50%" />
								<h2>
									Product Name : <input type="text" name="pname"
										value="${itemDetails.product_name}" style="font-weight: normal" readonly>
								</h2>
								<h2>
									Category <input type="text" name="category" value="${itemDetails.category_name}"
										style="font-weight: normal" readonly>
								</h2>
								<h2>
									Quantity <input type="text" name="quantity" value="${itemDetails.quantity}"
										style="font-weight: normal" readonly>
								</h2>
								<h2>
									Tags <input type="text" name="tags" value="${itemDetails.tags}"
										style="font-weight: normal" readonly>
								</h2>
								<h2>
									Is this for sale? <input type="text" name="for_sale"
										value="${itemDetails.for_sale}" style="font-weight: normal" readonly>
								</h2>
								<h2>
									Price <input type="text" name="price" value="${itemDetails.price}"
										style="font-weight: normal" readonly>
								</h2>
								<h2>
									Negotiable? <input type="text" name="negotiable" value="${itemDetails.negotiable}"
										style="font-weight: normal" readonly>
								</h2>
								<h2>
									Comments
									<textarea rows="4" cols="50" name="comment"
										style="font-weight: normal" readonly>${itemDetails.comments}</textarea>
								</h2>
								<button type="button" class="btn btn-primary">Contact
									Seller</button>
								<input type="submit" class="btn btn-primary"
									name="Add to my
									list" value="addToFavorites">
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




					<section id="copyright">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<p>Copyright © 2018 UTDeals All Right Reserved</p>
							</div>
						</div>
					</div>
					</section>

					<!-- Go to Top Link -->
					<a href="#" class="back-to-top"> <i class="lni-arrow-up"></i>
					</a>

					<!-- Preloader -->
					<div id="preloader">
						<div class="loader" id="loader-1"></div>
					</div>
					<!-- End Preloader -->

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