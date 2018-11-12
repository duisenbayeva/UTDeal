<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="home.css">
<title>Welcome to UTDeals</title>

<%--<style>--%>
    <%--.dropdown {--%>
        <%--float: left;--%>
        <%--overflow: hidden;--%>
    <%--}--%>

    <%--.dropdown .dropbtn {--%>
        <%--font-size: 16px;--%>
        <%--border: none;--%>
        <%--outline: none;--%>
        <%--color: white;--%>
        <%--padding: 14px 16px;--%>
        <%--/*background-color: inherit;*/--%>
        <%--font-family: inherit;--%>
        <%--margin: 0;--%>
    <%--}--%>

    <%--.navbar a:hover, .dropdown:hover .dropbtn {--%>
        <%--/*background-color: red;*/--%>
    <%--}--%>

    <%--.dropdown-content {--%>
        <%--display: none;--%>
        <%--position: absolute;--%>
        <%--/*background-color: #f9f9f9;*/--%>
        <%--min-width: 160px;--%>
        <%--box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);--%>
        <%--z-index: 1;--%>
    <%--}--%>

    <%--.dropdown-content a {--%>
        <%--float: none;--%>
        <%--color: black;--%>
        <%--padding: 12px 16px;--%>
        <%--text-decoration: none;--%>
        <%--display: block;--%>
        <%--text-align: left;--%>
    <%--}--%>

    <%--.dropdown-content a:hover {--%>
        <%--/*background-color: #ddd;*/--%>
    <%--}--%>

    <%--.dropdown:hover .dropdown-content {--%>
        <%--display: block;--%>
    <%--}
    <style>--%>

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
				<li class="nav-item"><a class="nav-link" href="#team"> Team
				</a></li>
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
                <li class=" nav-item "><a class="nav-link" href="myProfile.jsp">
                    My Profile </a></li>
				<li class=" nav-item "><a class="nav-link" href="postItem.jsp">
						Post Item </a></li>
                <%--<div class="dropdown">--%>
                    <%--<<li class=" nav-item "><a class="dropbtn">MyList--%>
                        <%--&lt;%&ndash;<i class="fa fa-caret-down"></i>&ndash;%&gt;--%>
                    <%--</a></li>--%>
                    <%--<div class="dropdown-content">--%>
                        <%--<a href="list_items.jsp">Posted Items</a>--%>
                        <%--<a href="myList.jsp">Favorite List</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <li class="nav-item"><a class="nav-link " href="list_items.jsp">
						Posted Items </a>
                <li class="nav-item"><a class="nav-link " href="myList.jsp">
                    Favorite List </a>
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
        <li><a class="page-scroll" href="list_items.jsp"> Posted Items </a></li>
		<li><a class="page-scroll" href="myList.jsp"> Favorite List </a></li>
		<li><a class="page-scroll" href="#feature "> Logout </a></li>
	</ul>
	<!-- Mobile Menu End --> </nav> <!-- Navbar End --> <!--  Hero Area Start -->

	<div id="hero-area" class="hero-area-bg">
		<div class="overlay"></div>
		<div class="container">
			<div class="row" style="background-color: white">
				<div class="col-md-12 col-sm-12">
					<div class="contents text-center">

						<div class="row">
							<div class="left" style="background-color: #bbb;">
								<div class="search-container">
									<input type="text" onkeyup="myFunction()"
										placeholder="Enter your search term" name="searchbar"
										id="mySearch" style="width: 95%">

								</div>
								<ul id="myMenu">
									<li><a href="#">Furniture</a></li>
									<li><a href="#">Books</a></li>
									<li><a href="#">Kitchen</a></li>
									<li><a href="#">Electronics</a></li>
									<li><a href="#">Clothes</a></li>
								</ul>
							</div>

							<div class="right">

								<div class="search-container">
									<input type="text" placeholder="Search.." name="itemSearch"

										style="border: solid; color: grey; height: 50px; width: 80%">
									<button type="submit"
										style="float: right; vertical-align: top; height: 50px"
										onclick="searchItem()" name="itemSearch" id="itemSearch">Submit</button>
								</div>
								<br />
								<br />
								<h2 class="w3-center"
									style="font-size: 25px; float: left; font-family: Segoe UI Light">Now
									trending...</h2>
								<div class="w3-content w3-section" style="max-width: 500px">
									<img class="mySlides" src="home/assets/img/item/1.jpg"
										style="width: 100%"> <img class="mySlides"
										src="home/assets/img/item/2.jpg" style="width: 100%">
									<img class="mySlides" src="home/assets/img/item/3.jpg"
										style="width: 100%"> <img class="mySlides"
										src="home/assets/img/item/5.jpg" style="width: 100%">
									<img class="mySlides" src="home/assets/img/item/6.jpg"
										style="width: 100%">
								</div>






								<script>
									var myIndex = 0;
									carousel();

									function carousel() {
										var i;
										var x = document
												.getElementsByClassName("mySlides");
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

								<script>
									function searchItem() {
										var x = document
												.getElementById("itemSearch").value;
										if (x.includes("table") == true) {
											window.open("itemPage1.jsp",
													"_self");
										} else if (x.includes("chair") == true) {
											window.open("itemPage2.jsp",
													"_self");
										} else if (x.includes("insta") == true) {
											window.open("itemPage3.jsp",
													"_self");
										}
									}
								</script>

							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Hero Area End --> </header>
	<!-- Header Area wrapper End -->

	<script>
		function myFunction() {
			var input, filter, ul, li, a, i;
			input = document.getElementById("mySearch");
			filter = input.value.toUpperCase();
			ul = document.getElementById("myMenu");
			li = ul.getElementsByTagName("li");
			for (i = 0; i < li.length; i++) {
				a = li[i].getElementsByTagName("a")[0];
				if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
					li[i].style.display = "";
				} else {
					li[i].style.display = "none";
				}
			}
		}
	</script>
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