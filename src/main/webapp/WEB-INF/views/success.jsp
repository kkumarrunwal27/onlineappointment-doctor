<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="./base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<body>

	<div class="container text-center">
		<div class="col-md-6 offset-md-3">
			<h3 class="text-center mb-3">Hi ${name }! You have Successfully
				registered</h3>
			<a href="login" class="btn btn-outline-success "> Login now</a>
		</div>
	</div>

</body>
</html>