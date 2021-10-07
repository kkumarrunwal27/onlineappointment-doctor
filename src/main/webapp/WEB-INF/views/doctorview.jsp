
<head>
<%@include file="./base.jsp"%>
<%@page isELIgnored="false"%>
</head>

<div>
	<br></br>

	<form action="booking-reciept/${doctor.did }/${category.cid}"
		method="post">
		<div className="card col-md-6 offset-md-3">
			<h3 className="text-center">Doctor Details</h3>
			<div className="card-body">
				<div className="row">
					<label> Name: </label>
					<div>${ doctor.dname }</div>
				</div>
				<!-- <div className="row">
				<label> Employee Last Name: </label>
				<div>{ this.state.employee.lastName }</div>
			</div> -->
				<div className="row">
					<label>Clinic Address </label>
					<div>${ doctor.caddress }</div>
				</div>
				<div className="row">
					<label> Fee: </label>
					<div>${doctor.fee }</div>
				</div>

				<div class="form-group">
					<div class="form-group">
						<label for="appt-time">Choose a Time : </label> <input
							id="appt-time" type="time" name="time" min="${doctor.starttime }"
							max="${doctor.endtime }" required>
					</div>

					<div class="form-group">
						<label for="appt-date">Choose Date : </label> <input
							id="appt-date" type="date" name="date">
					</div>
					<button type="submit" class="btn btn-primary">Book
						Appointment</button>
				</div>
	</form>
</div>


































