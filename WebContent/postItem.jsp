<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
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

					<form name="loginform" action="LoginController" method="post"
						onsubmit="return loginValidate()" accept="image/gif, image/jpeg" class="form-horizontal"
						role="form">
						<br> <label for="primary">*Product name:</label>
						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"></span> <input id="pname"
								type="text" class="form-control" name="pname" value=""
								placeholder="Enter the product name"
								title="Missing product name" required>
						</div>

						<label for="primary">*Category:</label>
						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"></span> <select
								class="form-control">
								<option value="Furniture">Furniture</option>
								<option value="Books">Books</option>
								<option value="Kitchen">Kitchen</option>
								<option value="Electronics">Electronics</option>
								<option value="Clothes">Clothes</option>

							</select>
						</div>


						<label for="primary">*Quantity:</label>
						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"></span> <input type="text"
								class="form-control" name="quantity" id="quantity"
								placeholder="Enter the quantity" required />
						</div>


						<label for="primary">*Tags:</label>
						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"></span> <input type="text"
								class="form-control" name="tagname" id="tagname"
								placeholder="Enter the tag names" required />
						</div>

						<label for="primary">*Photos:</label>
						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"></span> <input accept="image/gif, image/jpeg" type="file"
								class="form-control" name="itemimage" id="itemimage"
								placeholder="Upload a picture" required />
						</div>
						<input class="btn btn-primary" type="submit" name="submit"
							value="Upload">
						<br/><br/>


						<label for="primary">*Is this item for sale?</label>
						<div style="margin-bottom: 25px" class="input-group">

							<input type="radio" name="for_sale" id="for_sale" value="Yes"
								required />Yes <input type="radio" name="for_sale"
								id="for_sale" value="No" required />No

						</div>

						<label for="primary">*Price:</label>
						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"></span> <input type="number"
								class="form-control" name="price" id="price"
								placeholder="Enter the price" required />

						</div>

						<label for="primary">*Is the price negotiable?</label>
						<div style="margin-bottom: 25px" class="input-group">

							<input type="radio" name="negotiable" id="negotiable" value="Yes"
								required />Yes <input type="radio" name="negotiable"
								id="negotiable" value="No" required />No

						</div>

						<label for="primary">Comments:</label>
						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"></span>
							<textarea class="form-control" name="comment" id="comment"
								rows="5" cols="50" placeholder="Enter the item description"></textarea>

						</div>

						<label for="primary">Is the item sold?</label>
						<div style="margin-bottom: 25px" class="input-group">

							<input type="radio" name="status" id="status" value="Yes" />Yes
							<input type="radio" name="status" id="status" value="No" />No

						</div>


						<input class="btn btn-primary" type="submit" name="submit"
							value="Post">





					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>