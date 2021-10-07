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
			<h1 class="text-center mb-2">Login now</h1>
			<form action="loginprocess" method="post">



				<div class="form-group">
					<label for="email">EmailId</label> <input type="email"
						class="form-control" id="email" aria-describedby="emailHelp"
						name="email" placeholder="Enter your email address">
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						class="form-control" id="password" aria-describedby="emailHelp"
						name="password" placeholder="Enter Passsword" rows="5">
				</div>

				<div class="container text-center">

					<button type="submit" class="btn btn-primary">Login</button>


				</div>


			</form>
		</div>

	</div>
</body>
</html>