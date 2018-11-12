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

    <!-- Bootstrap core CSS -->
    <link href="/items/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/items/items.css" rel="stylesheet">

    <%
        ItemDAO itemDAO = new ItemDAOImpl();
        List<Item> items = itemDAO.fetchPostedItems(request.getSession().getAttribute("username").toString());
        System.out.println("Getting list of posted items"+items);
        request.getServletContext().setAttribute("postedItems", items);
        if(items==null) items= new ArrayList<Item>();
    %>
</head>

<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
    <h5 class="my-0 mr-md-auto font-weight-normal">UTDeals</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="userhomepage.jsp">Home</a>
        <a class="p-2 text-dark" href="myProfile.jsp">My Profile</a>
        <a class="p-2 text-dark" href="postItem.jsp">Post Item</a>
        <a class="p-2 text-dark" href="myList.jsp">Favorite List</a>
        <a class="p-2 text-dark" href="logout.jsp">Logout</a>
    </nav>
</div>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Your Items</h1>
    <p class="lead">Edit and Manage your items.</p>
</div>

<div class="container">
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
                              class="form-horizontal" role="form">
                            <input type="hidden" name="itemId" value="<%=items.get(i).getId()%>">
                            <%--<button type="button" class="btn btn-primary">Edit Item</button>--%>
                            <input type="hidden" name="submit" value="editItem">
                            <input type="submit" class=" btn btn-primary" value="edit">
                            <a href="javascript:document.editItemform.submit();"><span class="glyphicon glyphicon-pencil"></span></a> &nbsp &nbsp
                            <input type="hidden" name="submit" value="deleteItem">
                            <input type="submit" class=" btn btn-primary" value="delete">
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
</body>
</html>
