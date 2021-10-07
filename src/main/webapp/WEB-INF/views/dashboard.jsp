<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">HealthCare</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">
						${name } <span class="sr-only">(current)</span>
				</a></li>
				<%-- <li class="nav-item">${name }</li> --%>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Choose Specialization </a>

					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<c:forEach items="${categorylist }" var="cl">
							<a class="dropdown-item" href="doctor-list/${cl.cid }">
								${cl.cname }</a>
							<!--  <a
							class="dropdown-item" href="#">Cardiologist</a>
							<a
							class="dropdown-item" href="#">Gynologist</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li> -->
						</c:forEach>
					</div>
			</ul>
			<form action="search" class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search" name="querybox"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<h2 class="text-center font-weight-bold">Welcome to Online
		appointment service ! Please choose a specialization category to get
		doctor list accordingly.</h2>







</body>

</html>