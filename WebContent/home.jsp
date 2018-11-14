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

	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	<title>Searched Item</title>

	<link href="/items/bootstrap.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="/items/items.css" rel="stylesheet">
</head>
<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
	<h5 class="my-0 mr-md-auto font-weight-normal">UTDeals</h5>
	<nav class="my-2 my-md-0 mr-md-3">
		<a class="p-2 text-dark" href="userhomepage.jsp">Home</a>
		<a class="p-2 text-dark" href="#feature">About Us</a>
		<a class="p-2 text-dark" href="#team">Team</a>
		<a class="p-2 text-dark" href="#contact">Contact</a>
	</nav>
</div>


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
							<a href="register.jsp" class="btn btn-common">SignUp now</a> &nbsp
							<a href="login.jsp" class="btn btn-common">SignIn</a>
						</div>
					</div>
					<h2 class="w3-center" style="font-size: 25px; float: left; font-family:verdana; color: #1d2124"> Trending now</h2>
					<div class="w3-content w3-section" style="max-width: 350px">
						<img class="mySlides" src="home/assets/img/item/1.jpg" width="250" height="250">
						<img class="mySlides" src="home/assets/img/item/2.jpg" width="250" height="250">
						<img class="mySlides" src="home/assets/img/item/3.jpg" width="250" height="250">
						<img class="mySlides" src="home/assets/img/item/5.jpg" width="250" height="250">
						<img class="mySlides" src="home/assets/img/item/6.jpg" width="250" height="250">
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
	<!-- Hero Area End -->

	<!--new features-->
	<section id="feature" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-header text-center">
						<h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">Learn More About us</h2>
					</div>
				</div>
			</div>
			<div class="row contact-form-area wow fadeInUp" data-wow-delay="0.4s">

				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="features-box wow fadeInLeft" data-wow-delay="0.3s">
							<div class="features-icon">
								<i class="lni-layers"></i>
							</div>
							<div class="features-content">
								<h4>Sell and Buy</h4>
								<p>Students can easily sell and buy the products at a cheap price.</p>
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
								<p>The platform is free to use.</p>
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
								<p> UtDeals is responsive in nature.</p>
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
								<p>UTDeals is very easy to use as a platform to buy and sell.</p>
							</div>
						</div>
					</div>
			</div>
		</div>
		</div>
	</section>

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
							alt="" width="150" height="150">
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
							alt="" width="150" height="150">
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
							alt="" width="150" height="150">
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
							alt="" width="150" height="150">
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
							alt="" width="150" height="150">
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
							<a href="#">Namrata Rathore</a>
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