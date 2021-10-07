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
			<h1 class="text-center mb-3">Add Specialization</h1>
			<form action="add_category" method="post">

				<div class="form-group">
					<label for="name">Specialization</label> <input type="text"
						class="form-control" id="name" aria-describedby="emailHelp"
						name="cname" placeholder="Enter Specialization">
				</div>
				<div>
					<a href="${pageContext.request.contextPath }/"
						class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-primary">Add</button>
				</div>

			</form>
		</div>

	</div>
</body>
</html>