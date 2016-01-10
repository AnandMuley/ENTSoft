<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Medicine Home</title>
<%@include file="Include.jsp"%>
</head>
<body>
<div class="container">
	<%@include file="Header.jsp"%>
	<br>
	<div class="row">
		<div class="col-md-9"></div>
		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/medicine/search" class="glyphicon glyphicon-search"> Search</a>
		</div>
	</div>
	<h3 class="text-info text-center">Medicine Home</h3>
	<div align="center">
		<form id="createAppointmentFrm" action="medicine/add" method="post">
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
					<div class="col-md-6 appointment-text-label">Code</div>
					<div class="col-md-6 appointment-text-label">Type</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<input required="required" class="form-control input-group-lg" name="code"/>
					</div>
					<div class="col-md-6">
								<select name="medicineType" class="form-control input-group-lg">
									<option value=""></option>
									<option value="Capsule">Capsule</option>
									<option value="Tablet">Tablet</option>
									<option value="EyeDrop">EyeDrop</option>
									<option value="EyeOintment">EyeOintment</option>
									<option value="Injection">Injection</option>
									<option value="Syrup">Syrup</option>
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
						<button class="btn btn-lg btn-primary" type="submit">ADD</button>
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