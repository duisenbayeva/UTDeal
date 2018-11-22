<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@page import="model.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

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

	<%

	//	String message = request.getServletContext().getAttribute("message").toString();
		//String userId = request.getServletContext().getAttribute("userId").toString();

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
												href="#hero-area"> Home </a></li>
						<li class="nav-item"><a class="nav-link" href="#team"> Team
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#contact">
							Contact </a></li>
					</ul>
					
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
				<div class="contents text-center">
					<div class="right">

						<form action="ItemController" method="post">
								<div>
							        <select style="height:30px" id="categ">
									  <option value="1">Furniture</option>
									  <option value="2">Books</option>
									  <option value="3">Kitchen</option>
									  <option value="4">Electronics</option>
									  <option value="5">Clothes</option>
									</select>
									<input type="text" id="Search" name = "Search" value="${searchQuery}" autocomplete="off">
								    <input type="submit" name="submit" value="searchItem">Search</input>
							       
							    </div>
						</form>
						<div class="row">
							&ensp;
						</div>
						
						<!--<div class="search-container">
							<input type="text" placeholder="Search.." name="itemSearch"
								   style="border: solid; color: grey; height: 50px; width: 90%">
							<button type="submit" class="btn btn-common"
									style="float: right; vertical-align: top; height: 50px;border-radius: 12px"
									onclick="searchItem()" name="itemSearch" id="itemSearch">Search</button>
						</div>-->
						<br />
						<br />
						<h2 class="w3-center"
							style="font-size: 25px; float: left; font-family: Segoe UI Light">Now
							trending......
							<% List<Item> items = (List<Item>)request.getAttribute("itemDetails"); 
							if(items==null) items= new ArrayList<Item>();%>
							<% for(int i=0; i<items.size(); i++){ %>
								<p><%= items.get(i).getName() %></p>
							<%}%></h2>
						<div class="w3-content w3-section" style="max-width: 500px">
							<img class="mySlides" src="home/assets/img/item/1.jpg"
								 style="width: 500px; height: 500px"> <img class="mySlides"
																		   src="home/assets/img/item/2.jpg" style="width: 500px; height: 500px">
							<img class="mySlides" src="home/assets/img/item/3.jpg"
								 style="width: 500px; height: 500px"> <img class="mySlides"
																		   src="home/assets/img/item/5.jpg" style="width: 500px; height: 500px">
							<img class="mySlides" src="home/assets/img/item/6.jpg"
								 style="width: 500px; height: 500px">
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

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="home/assets/js/jquery-min.js"></script>
<script src="home/assets/js/bootstrap.min.js"></script>
<script src="home/assets/js/bootstrap3-typeahead.js"></script>
<script src="home/assets/js/script.js"></script>
<script src="home/assets/js/popper.min.js"></script>
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