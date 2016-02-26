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
	<br/><br/><br/><br/><br/><br/>
	<div class="col-md-4"></div>
	<div id="login_content_panel" class="col-md-4">
		<h3 class="text-info text-center">Krishna EnT</h3>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-12">
				<div align="center">
					<form id="userAuthFrm" action="create" method="post">
					<div class="row">
						<div class="col-md-12">
							<input type="text" required="required" placeholder="Username" class="form-control input-group-lg" name="username"/>
						</div>
					</div>
					<br/>
					<div class="row">
						<div class="col-md-12">
							<input type="password" required="required" placeholder="Password" class="form-control input-group-lg" name="password"/>
						</div>
					</div>
					<br/>
					<div class="row">
						<div class="col-md-12">
							<button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
						</div>
					</div>
					</form>
				</div>
			</div>
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
</div>
</body>
</html>