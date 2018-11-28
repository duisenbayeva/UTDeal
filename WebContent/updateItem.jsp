<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript" src="password.css"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Post an Item</title>
</head>
<body>

	<br />

	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">

				<div class="panel-heading">
					<div class="panel-title">Post an Item</div>
				</div>

				<h5>
					<p>* fields are compulsory</p>
				</h5>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					<form name="itemform" action="ItemController" method="post"
						enctype="multipart/form-data" class="form-horizontal"
						role="form">
						
						<%--@declare id="primary"--%><br> <label for="primary">*Product name:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span> 
							<input id="pname" type="text" class="form-control" name="pname" value="${itemDetails.product_name }"
								placeholder="Enter the product name"
								title="Missing product name" required>
						</div>

						<label for="primary">*Category:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span> <select
								class="form-control" id="selectCategory" name="category">
								<% List<Category> categories = (List<Category>)request.getServletContext().getAttribute("categories"); %>
						
								<% for(int i=0; i<categories.size(); i++){ %>
									<option value="<%=categories.get(i).getId()%>"><%=categories.get(i).getName() %></option>
								<%}%>
							</select>
						</div>


						<label for="primary">*Quantity:</label>
						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"></span> <input type="text"
								class="form-control" name="quantity" id="quantity"
								placeholder="Enter the quantity" required value="${itemDetails.quantity}" />
						</div>


						<label for="primary">*Tags:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span> 
							<input type="text"	class="form-control" name="tags" id="tags"
								placeholder="Enter the tag names"  required value="${itemDetails.tags}"/>
						</div>


						<label for="primary">*Is this item for sale/rent?</label>
						<div style="margin-bottom: 25px" class="input-group">
							<input type="radio" name="for_sale" id="for_sale_yes" value="True"
								required />Sale <input type="radio" name="for_sale"
								id="for_sale_no" value="False" required />Rent

						</div>

						<label for="primary">*Price:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span> 
							<input type="number" class="form-control" name="price" id="price"
								placeholder="Enter the price" required value="${itemDetails.price}"/>
						</div>

						<label for="primary">*Is the price negotiable?</label>
						<div style="margin-bottom: 25px" class="input-group">

							<input type="radio" name="negotiable" id="negotiable_yes" value="True"
								required />Yes <input type="radio" name="negotiable"
								id="negotiable_no" value="False" required />No
						</div>

						<label for="primary">Comments:</label>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"></span>
							<textarea class="form-control" name="comment" id="comment"
								rows="5" cols="50" placeholder="Enter the item description" value="${itemDetails.comments}">${itemDetails.comments}</textarea>
						</div>

						<label for="primary">Is the item sold?</label>
						<div style="margin-bottom: 25px" class="input-group">
							<input type="radio" name="status" id="status_yes" value="True" />Yes
							<input type="radio" name="status" id="status_no" value="False" />No
						</div>


						<input type="hidden" name="itemId" value="${itemDetails.itemId}"></input>
						<input class="btn btn-primary" type="submit" name="submit"
							value="updateItem">


					</form>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#blah')
                .attr('src', e.target.result)
                .width(150)
                .height(200);
        };

        reader.readAsDataURL(input.files[0]);
    }
}

$(document).ready(function(){
	document.getElementById("selectCategory").selectedIndex = parseInt("${itemDetails.category_id}")-1;

	console.log("${itemDetails.for_sale}");
	if("${itemDetails.for_sale}" == "true")
		document.getElementById("for_sale_yes").checked = true;
	else
		document.getElementById("for_sale_no").checked = true;
		
	if("${itemDetails.status}" == "true")
		document.getElementById("status_yes").checked = true;
	
	else
		document.getElementById("status_no").checked = true;

	if("${itemDetails.negotiable}" == "true")
		document.getElementById("negotiable_yes").checked = true;
	else
		document.getElementById("negotiable_no").checked = true;
	
});


	
	

</script>
</body>
</html>