<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">

				<h1 class="text-center mb-3"><--Available Doctors are --></h1>


				<table class="table">
					<thead class="thead-dark">
						<tr>
							<!--  <th scope="col">Id</th>  -->
							<th scope="col">Specialization</th>
							<th scope="col">Doctor Name</th>
							<th scope="col">Clinic Address</th>
							<th scope="col">Fee</th>

							<th scope="col">Available Time Slot</th>
							<th scope="col">Action</th>

						</tr>
					</thead>
					<tbody>

						<c:forEach items="${dlist }" var="dl">
							<c:if test="${cid==dl.category.cid}">
								<tr>
									<%-- <th scope="row" > ${dl.did}</th> --%>
									<td>${dl.category.cname}</td>
									<td>${dl.dname }</td>
									<td>${dl.caddress }</td>
									<td>&#x20B9 ${dl.fee }</td>
									<td>${dl.starttime }-${dl.endtime }</td>


									<td><a href="book/${dl.did }/${category.cid}"><i
											class="fas fa-book text-success">BOOK NOW</i></a></td>

								</tr>
							</c:if>
						</c:forEach>


					</tbody>
				</table>







			</div>


		</div>

	</div>
</body>
</html>
