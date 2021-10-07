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
			<h1 class="text-center mb-3">Fill the Doctor details</h1>
			<form action="save-doctor" method="post">

				<div class="form-group">
					<label for="cid">Category Id</label> <input type="text"
						class="form-control" id="cid" aria-describedby="emailHelp"
						name="category.cid" placeholder="Category id">
				</div>


				<div class="form-group">
					<label for="name">Doctor Name</label> <input type="text"
						class="form-control" id="name" aria-describedby="emailHelp"
						name="dname" placeholder="Enter the Doctor name here">
				</div>

				<div class="form-group">
					<label for="clinic address">Clinic Address</label> <input
						type="text" class="form-control" id="clinic address"
						aria-describedby="emailHelp" name="caddress"
						placeholder="Enter Clinic Address">
				</div>
				<!-- here name should be matched with model class variables -->
				<div class="form-group">
					<label for="fee">Fees</label> <input type="text"
						class="form-control" id="fee" aria-describedby="emailHelp"
						name="fee" placeholder="Enter the fees">
				</div>

				<div class="form-group">
					<div class="form-group">
						<label for="appt-time">Choose a Start time : </label> <input
							id="appt-time" type="time" name="starttime"> <span
							class="validity"></span> <label for="appt-time">Choose an
							End time : </label> <input id="appt-time" type="time" name="endtime">
						<span class="validity"></span>
						<!--   <label class="control-label" for="timeslot">Available Time Slot</label>
                                        <select id="timeslot"    name="timeslot" class="form-control" >
                                            
                                            <option value="16:04:07">5:00 PM to 07:00 PM</option>
                                           <option value="6to8">6:00 PM to 08:00 PM</option>
                                           <option value="12to2">12:00 PM to 02:00 PM</option>
                                        </select> -->
					</div>
				</div>
				<div class="container text-center">
					<a href="${pageContext.request.contextPath }/"
						class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-primary">Add</button>


				</div>


			</form>
		</div>

	</div>
</body>
</html>
