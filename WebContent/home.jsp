<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="home.css">
<title>Home Page</title>
</head>
<body>

	<!-- Navigation -->
	<nav class="w3-bar w3-black">
	  <a href="#home" class="w3-button w3-bar-item">Home</a>
	  <a href="#Aboutus" class="w3-button w3-bar-item">About Us</a>
	  <a href="#contact" class="w3-button w3-bar-item">Contact</a> 
	</nav>
	
	<!-- Slide Show -->
	<section>
	  <img class="mySlides" src="images/one.jpg" 
	  style="width:50% ; height:400px"
	  >
	  <img class="mySlides" src="images/two.jpg"
	  style="width:50% ; height:400px">
	</section>
	
	<script>
// Automatic Slideshow - change image every 3 seconds
	var myIndex = 0;
	carousel();
	
	function carousel() {
	    var i;
	    var x = document.getElementsByClassName("mySlides");
	    for (i = 0; i < x.length; i++) {
	       x[i].style.display = "none";
	    }
	    myIndex++;
	    if (myIndex > x.length) {myIndex = 1}
	    x[myIndex-1].style.display = "block";
	    setTimeout(carousel, 3000);
	}
</script>
	
	
	<a href="register.jsp">Register</a>
	<a href="login.jsp">SignIn</a> 
	

</body>
</html>