<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<h1 class="text-center mb-3">Register Here</h1>
			<form action="registerprocess" method="post">

				<div class="form-group">
					<label for="name">Name</label> <input type="text"
						class="form-control" id="name" aria-describedby="emailHelp"
						name="name" placeholder="Enter your name here">
				</div>

				<div class="form-group">
					<label for="email">EmailId</label> <input type="email"
						class="form-control" id="email" aria-describedby="emailHelp"
						name="email" placeholder="Enter your email address" rows="5">
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						class="form-control" id="password" aria-describedby="emailHelp"
						name="password" placeholder="Enter Passsword" rows="5">
				</div>
				<!-- here name should be matched with model class variables -->
				<div class="form-group">
					<label for="address">Address</label> <input type="text"
						class="form-control" id="address" aria-describedby="emailHelp"
						name="address" placeholder="Enter the Address">
				</div>
				<div class="form-group">
					<label for="contact">Contact Info:</label> <input type="number"
						class="form-control" id="contact" aria-describedby="emailHelp"
						name="contact" placeholder="Enter Contact Number">
				</div>
				<div class="container text-center">
					<a href="${pageContext.request.contextPath }/"
						class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-primary">Register</button>


				</div>


			</form>
		</div>

	</div>
</body>
</html>