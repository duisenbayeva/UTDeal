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
    <style>
        .footer {
            position: fixed;
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
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <title>Searched Item</title>

    <link href="/items/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/items/items.css" rel="stylesheet">
    <%
    ItemDAO itemDAO = new ItemDAOImpl();
    String id = request.getParameter("itemId")==null ? request.getAttribute("itemId").toString():request.getParameter("itemId");
    Item item = itemDAO.getItemDetails(Integer.parseInt(id));
    System.out.println(item.toString());
    %>


</head>

<body>

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


<div class="container-fluid">
    <div class="content-wrapper">
        <div class="item-container">
            <div class="container">
                <div class="col-md-12">
                    <div class="product col-md-3 service-image-left">
                        <center>
                            <img id="item-display" src="<%= item.getImage_url() %>" alt="" width="250" height="250"></img>
                        </center>
                    </div>
                </div>

                <div class="col-md-7">
                    <div class="product-title"><%= item.getName() %> </div>
                    <div class="product-desc">Comment -<%= item.getComments() %></div>
                    <hr>
                    <div class="product-price">$ <%= item.getPrice() %> (price)</div>
                    
                    <hr>
                    <form class="btn-group cart" action="ItemController" method="post">
                    <input type="hidden" name="itemId" value="<%= item.getId() %>"></input>
                        <input type="submit" value="addToFavorites" class="btn btn-success"
                            name="submit"/>
                       
                    </form>
                    <div class="btn-group wishlist">
                        <button type="button" class="btn"><a href="contactSeller.jsp">
                            Contact seller</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <p>Copyright 2018 UTDeals All Right Reserved</p>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>
