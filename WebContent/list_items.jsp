<%@page import="com.sun.org.apache.bcel.internal.generic.INSTANCEOF"%>
<%@page import="model.Item"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="home.css">
<title>List of Items</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%
List<Item> items = (List<Item>)request.getServletContext().getAttribute("postedItems");
 if(items==null) items= new ArrayList<Item>();
%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Item Lists
                    
                </div>
                <div class="panel-body">
                    <ul class="list-group">
                    <% for(int i=0; i<items.size(); i++){ %>
                        <li class="list-group-item">
                          
                                <label for="checkbox">
                                    <%= items.get(i).getName() %>
                                </label>
                            
                            <div class="pull-right action-buttons">
                                <a href="updateItem.jsp"><span class="glyphicon glyphicon-pencil"></span></a>
                                <a href="" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                                
                            </div>
                        </li>
                        <%} %>
                    </ul>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        
                        <div class="col-md-6">
                            <ul class="pagination pagination-sm pull-right">
                                <li class="disabled"><a href="javascript:void(0)">«</a></li>
                                <li class="active"><a href="javascript:void(0)">1 <span class="sr-only">(current)</span></a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">4</a></li>
                                <li><a href="">5</a></li>
                                <li><a href="javascript:void(0)">»</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>