<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="home.css">
<title>Welcome to UTDeals</title>


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
				<li class="nav-item active"><a class="nav-link"
					href="#hero-area"> Home </a></li>
				<li class="nav-item"><a class="nav-link" href="#feature">
						About Us </a></li>

				<li class="nav-item"><a class="nav-link" href="#team"> Team
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#Subscribes">
						Jumpstart </a></li>
				<li class="nav-item"><a class="nav-link" href="#contact">
						Contact </a></li>


			</ul>
		</div>
	</div>

	<!-- Mobile Menu Start -->
	<ul class="mobile-menu navbar-nav">
		<li><a class="page-scroll" href="#hero-area"> Home </a></li>

		<li><a class="page-scroll" href="#feature"> About Us </a></li>

		<li class="nav-item"><a class="nav-link" href="#team"> Team </a>
		</li>
		<li><a class="page-scroll" href="#Subscribes"> Jumpstart </a></li>
		<li><a class="page-scroll" href="#contact"> Contact </a></li>
	</ul>
	<!-- Mobile Menu End --> </nav> <!-- Navbar End --> <!-- Hero Area Start -->
	<div id="hero-area" class="hero-area-bg">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="contents text-center">
						<h2 class="head-title wow fadeInUp">

							Welcome to<br> UTDeals
						</h2>
						<div class="header-button wow fadeInUp" data-wow-delay="0.3s">
							<a href="register.jsp" class="btn btn-common">SignUp now</a> <a
								href="login.jsp" class="btn btn-common">SignIn</a>
						</div>
					</div>
					<h2 class="w3-center"
						style="font-size: 25px; float: left; font-family: Segoe UI Light">Now
						trending...</h2>
					<div class="w3-content w3-section" style="max-width: 500px">
						<img class="mySlides" src="home/assets/img/item/1.jpg"
							style="width: 100%"> <img class="mySlides"
							src="home/assets/img/item/2.jpg" " style="width: 100%"> <img
							class="mySlides" src="home/assets/img/item/3.jpg"
							style="width: 100%"> <img class="mySlides"
							src="home/assets/img/item/5.jpg" " style="width: 100%"> <img
							class="mySlides" src="home/assets/img/item/6.jpg"
							style="width: 100%">
					</div>
					<script>
						var myIndex = 0;
						carousel();

						function carousel() {
							var i;
							var x = document.getElementsByClassName("mySlides");
							for (i = 0; i < x.length; i++) {
								x[i].style.display = "none";
							}
							myIndex++;
							if (myIndex > x.length) {
								myIndex = 1
							}
							x[myIndex - 1].style.display = "block";
							setTimeout(carousel, 4000); // Change image every 4 seconds
						}
					</script>
					<%-- <div class="img-thumb text-center wow fadeInUp" data-wow-delay="0.6s">
                <img class="img-fluid" src="home/assets/img/hero-1.jpg" alt="">
              </div> --%>
				</div>
			</div>
		</div>
	</div>
	<!-- Hero Area End --> </header>
	<!-- Header Area wrapper End -->




	<!-- Feature Section Start -->
	<div id="feature">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6 col-md-12 col-sm-12">
					<div class="text-wrapper">
						<div>

							<br /> <br />

							<div class="contents text-center">
								<h2 class="title-hl wow fadeInLeft" data-wow-delay="0.3s">Learn
									More About Us</h2>
							</div>
							<div class="row">
								<div class="col-md-6 col-sm-6">
									<div class="features-box wow fadeInLeft" data-wow-delay="0.3s">
										<div class="features-icon">
											<i class="lni-layers"></i>
										</div>
										<div class="features-content">
											<h4>Sell and Buy</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Veniam tempora quidem vel sint.</p>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="features-box wow fadeInLeft" data-wow-delay="0.6s">
										<div class="features-icon">
											<i class="lni-briefcase"></i>
										</div>
										<div class="features-content">
											<h4>100% Free</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Veniam tempora quidem vel sint.</p>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="features-box wow fadeInLeft" data-wow-delay="0.9s">
										<div class="features-icon">
											<i class="lni-cog"></i>
										</div>
										<div class="features-content">
											<h4>Responsive</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Veniam tempora quidem vel sint.</p>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="features-box wow fadeInLeft" data-wow-delay="1.2s">
										<div class="features-icon">
											<i class="lni-leaf"></i>
										</div>
										<div class="features-content">
											<h4>Easy to Use</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Veniam tempora quidem vel sint.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Feature Section End -->

	<!-- Team Section Start -->
	<section id="team" class="section-padding text-center">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-header text-center">
					<h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">Our
						Team</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-md-6 col-lg-4">
				<!-- Team Item Starts -->
				<div class="team-item text-center">
					<div class="team-img">
						<img class="img-fluid" src="home/assets/img/team/team-01.jpg"
							alt="">
						<div class="team-overlay">
							<div class="overlay-social-icon text-center">
								<ul class="social-icons">
									<li><a href="https://www.linkedin.com/in/sanket-modi"><i
											class="lni-linkedin-filled" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="info-text">
						<h3>
							<a href="#">Sanket Modi</a>
						</h3>
						<p>Front-end Designer</p>
					</div>
				</div>
				<!-- Team Item Ends -->
			</div>
			<div class="col-sm-6 col-md-6 col-lg-4">
				<!-- Team Item Starts -->
				<div class="team-item text-center">
					<div class="team-img">
						<img class="img-fluid" src="home/assets/img/team/team-02.jpg"
							alt="">
						<div class="team-overlay">
							<div class="overlay-social-icon text-center">
								<ul class="social-icons">
									<li><a
										href="https://www.linkedin.com/in/balnur-duisenbayeva/"><i
											class="lni-linkedin-filled" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="info-text">
						<h3>
							<a href="#">Balnur Duisenbayeva</a>
						</h3>
						<p>Back-end Designer</p>
					</div>
				</div>
				<!-- Team Item Ends -->
			</div>

			<div class="col-sm-6 col-md-6 col-lg-4">
				<!-- Team Item Starts -->
				<div class="team-item text-center">
					<div class="team-img">
						<img class="img-fluid" src="home/assets/img/team/team-03.jpg"
							alt="">
						<div class="team-overlay">
							<div class="overlay-social-icon text-center">
								<ul class="social-icons">
									<li><a href="https://www.linkedin.com/in/pavithraconnect/"><i
											class="lni-linkedin-filled" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="info-text">
						<h3>
							<a href="#">Pavithra Kannan</a>
						</h3>
						<p>Front-end Developer</p>
					</div>
				</div>
				<!-- Team Item Ends -->
			</div>
			<div class="col-sm-6 col-md-6 col-lg-4">
				<!-- Team Item Starts -->
				<div class="team-item text-center">
					<div class="team-img">
						<img class="img-fluid" src="home/assets/img/team/team-02.jpg"
							alt="">
						<div class="team-overlay">
							<div class="overlay-social-icon text-center">
								<ul class="social-icons">
									<li><a
										href="https://www.linkedin.com/in/tulika-mithal-95695886/"><i
											class="lni-linkedin-filled" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="info-text">
						<h3>
							<a href="#">Tulika Mithal</a>
						</h3>
						<p>Back-end Designer</p>
					</div>
				</div>
				<!-- Team Item Ends -->
			</div>

			<div class="col-sm-6 col-md-6 col-lg-4">
				<!-- Team Item Starts -->
				<div class="team-item text-center">
					<div class="team-img">
						<img class="img-fluid" src="home/assets/img/team/team-03.jpg"
							alt="">
						<div class="team-overlay">
							<div class="overlay-social-icon text-center">
								<ul class="social-icons">
									<li><a
										href="https://www.linkedin.com/in/namrata-rathore-88150212a/"><i
											class="lni-linkedin-filled" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="info-text">
						<h3>
							<a href="#">Namratha Rathore</a>
						</h3>
						<p>Front-end Designer</p>
					</div>
				</div>
				<!-- Team Item Ends -->
			</div>
		</div>
	</div>
	</section>
	<!-- Team Section End -->




	<!-- Subscribe Section Start -->
	<section id="Subscribes" class="subscribes section-padding">
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-md-10 col-lg-5">
				<h4 class="wow fadeInUp" data-wow-delay="0.3s">Start For Free</h4>
				<p class="wow fadeInUp" data-wow-delay="0.6s">
					Buy and sell Products <br>
				</p>
				<form for="">
					<div class="subscribe wow fadeInDown" data-wow-delay="0.3s">
						<input type="Email" class="form-control" name="username"
							placeholder="enter your netid"> <a href="register.jsp"><i
							class="lni-arrow-right"></i>
							</button></a>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<!-- Subscribe Section End -->


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