<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book Appointment</title>
<%@include file="Include.jsp"%>
</head>
<body>
<div class="container">
	<%@include file="Header.jsp"%>
	<br>
	<h3 class="text-info text-center">Book Appointment</h3>
	<div align="center">
		<form id="createAppointmentFrm" action="appointment/book" method="post">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-12 appointment-text-label">Name</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<input required="required" class="form-control input-group-lg" name="name"/>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-6 appointment-text-label">Age</div>
					<div class="col-md-6 appointment-text-label">Sex</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<input required="required" class="form-control input-group-lg" name="age"/>
					</div>
					<div class="col-md-6">
								<select name="sex" class="form-control input-group-lg">
									<option value=""></option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
								</select>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-6 appointment-text-label">ContactNo</div>
					<div class="col-md-6 appointment-text-label">Date</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<input required="required" class="form-control input-group-lg" name="contactNo"/>
					</div>
					<div class="col-md-6">
						<input required="required" type="date" class="form-control input-group-lg" name="date" placeholder="For Date"/>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-12 appointment-text-label">Address</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<textarea name="address" class="form-control input-group-lg" rows="3" cols="40"></textarea>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-6 appointment-text-label">Consultant</div>
					<div class="col-md-6 appointment-text-label">Referred By</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<input required="required" class="form-control input-group-lg" name="consultant"/>
					</div>
					<div class="col-md-6">
								<select name="referredBy" class="form-control input-group-lg">
									<option value=""></option>
									<option value="DoctorA">DoctorA</option>
									<option value="DoctorB">DoctorB</option>
								</select>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3"></div>	
			<div class="col-md-6">
				<br/>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
					</div>
				</div>
				<br/>
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<button class="btn btn-lg btn-primary btn-block" type="submit">CREATE</button>
					</div>
				</div>
			</div>
		</div>
		</form>
	</div>
	<br/>
		<c:if test="${Message != null}">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div align="center" class="alert alert-success" role="alert">${Message}</div>
				</div>
			</div>
		</c:if>
	<br/>
	</div>
</body>
</html>