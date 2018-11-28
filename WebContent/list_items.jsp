<%@ page import="dao.ItemDAOImpl" %>
<%@ page import="dao.ItemDAO" %>
<%@ page import="model.Item" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <title>List of posted items</title>

    <link href="/items/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/items/items.css" rel="stylesheet">

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
        ItemDAO itemDAO = new ItemDAOImpl();
        List<Item> items = itemDAO.fetchPostedItems(request.getSession().getAttribute("username").toString());
        System.out.println("Getting list of posted items"+items);
        request.getServletContext().setAttribute("postedItems", items);
        if(items==null) items= new ArrayList<Item>();

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

<%--<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">--%>
    <%--<h5 class="my-0 mr-md-auto font-weight-normal">UTDeals</h5>--%>
    <%--<nav class="my-2 my-md-0 mr-md-3">--%>
        <%--<a class="p-2 text-dark" href="userhomepage.jsp">Home</a>--%>
        <%--<a class="p-2 text-dark" href="myProfile.jsp">My Profile</a>--%>
        <%--<a class="p-2 text-dark" href="postItem.jsp">Post Item</a>--%>
        <%--<a class="p-2 text-dark" href="myList.jsp">Favorite List</a>--%>
        <%--<a class="p-2 text-dark" href="logout.jsp">Logout</a>--%>
    <%--</nav>--%>
<%--</div>--%>
<br/><br/>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center" style="color: black">
    <h1 class="display-4">Your Items</h1>
    <p class="lead">Edit and Manage your items.</p>
</div>

<div class="container"style="color: black">
    <div class="card-deck mb-3 text-center">
        <div class="card mb-4 box-shadow">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal">Items</h4>
            </div>
            <div class="card-body">

                <% for(int i=0; i<items.size(); i++){ %>
                <li class="list-group-item">

                    <%--@declare id="checkbox"--%><label for="checkbox">
                    <%= items.get(i).getName() %>
                </label>

                    <div class="pull-right action-buttons">

                        <form name="editItemform" action="ItemController" method="post"
                              class="form-horizontal" role="form"  enctype="multipart/form-data">
                            <input type="hidden" name="itemId" value="<%=items.get(i).getId()%>">
                            <%--<button type="button" class="btn btn-primary">Edit Item</button>--%>
                            <input type="hidden" name="submit" value="editItem">
                           <input type="submit" class=" btn btn-primary" value="edit"> 
                           <!--  <a href="javascript:document.editItemform.submit();"><span class="glyphicon glyphicon-pencil"></span></a> &nbsp &nbsp -->
                          <!--   <input type="hidden" name="submit" value="deleteItem"> -->
                          <!--   <input type="submit" class=" btn btn-primary" value="delete"> -->
                            <a href="" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                        </form>
                    </div>
                </li>
                <%} %>

            </div>

            <br/>
        </div>
    </div>
</div>
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


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="../../assets/js/vendor/popper.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>
<script src="../../assets/js/vendor/holder.min.js"></script>
<script>
    Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
    });
</script>
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
