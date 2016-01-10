<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register New</title>
<%@include file="Include.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="Header.jsp"%>
		<br>
		<h3 class="text-info text-center">Register New</h3>
		<form action="register" method="post" enctype="multipart/form-data">
			<input name="id" value="${patient.id}" type="hidden"/>
			<div align="center">
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-4 text-label">Name</div>
					<div class="col-md-2 text-label">Contact No</div>
					<div class="col-md-2 text-label">Age</div>
					<div class="col-md-2 text-label">Sex</div>
				</div>
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-4">
						<input class="form-control input-group-lg" value="${patient.name}" name="name" />
					</div>
					<div class="col-md-2">
						<input class="form-control input-group-lg" name="contactNo" value="${patient.contactNo}"/>
					</div>
					<div class="col-md-2">
						<input max="200" maxlength="3" class="form-control input-group-lg" value="${patient.age}" name="age"/>
					</div>
					<div class="col-md-2">
							<select name="sex" class="form-control input-group-lg">
									<c:choose>
										<c:when test="${patient.sex != null}">
											<c:if test="${patient.sex=='Male'}">
												<option selected="selected" value="Male">Male</option>
												<option value="Female">Female</option>
											</c:if>
											<c:if test="${patient.sex=='Female'}">
												<option value="Male">Male</option>
												<option selected="selected" value="Female">Female</option>
											</c:if>
										</c:when>
										<c:otherwise>
											<option value=""></option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
										</c:otherwise>
									</c:choose>
								</select>
					</div>
				</div>
				<br/>
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-4 text-label">Address</div>
					<div class="col-md-4 text-label">Disease History</div>
					<div class="col-md-2 text-label">Mrd No</div>
				</div>
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-4">
						<textarea class="form-control input-group-lg" name="address" cols="" rows="3">${patient.address}</textarea>
					</div>
					<div class="col-md-4">
						<textarea class="form-control input-group-lg" name="diseaseHistory" cols="" rows="3">${patient.diseaseHistory}</textarea>
					</div>
					<div class="col-md-2">
						<input class="form-control input-group-lg" value="${patient.mrdNo}" name="mrdNo"/>
					</div>
				</div>
				<br/>
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-4 text-label">Allergies</div>
					<div class="col-md-2 text-label">Referred By</div>
					<div class="col-md-2 text-label">Fees</div>
					<div class="col-md-2 text-label">Procedure Fees</div>
				</div>
				
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-4">
						<textarea class="form-control input-group-lg" name="allergies" cols="" rows="3">${patient.allergies}</textarea>
					</div>
					<div class="col-md-2">
						<input value="${patient.referredBy}" class="form-control input-group-lg" name="referredBy"/>
						<!-- <select name="referredBy" class="form-control input-group-lg">
							<option value=""></option>
							<option value="DoctorA">DoctorA</option>
							<option value="DoctorB">DoctorB</option>
						</select> -->
					</div>
					<div class="col-md-2">
						<input value="${patient.fees}" class="form-control input-group-lg" name="fees"/>
					</div>
					<div class="col-md-2">
						<input value="${patient.procedureFees}" class="form-control input-group-lg" name="procedureFees"/>
					</div>
				</div>
				<hr/>
				<!-- Old -->
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-4">
								<button class="btn btn-lg btn-primary btn-block" type="submit">SAVE</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<br/>
		<c:if test="${Message != null}">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div align="center" class="alert alert-success" role="alert">${Message}</div>
				</div>
			</div>
		</c:if>
	</div>

</body>
</html>