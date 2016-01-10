<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Medicine</title>
<%@include file="Include.jsp"%>
</head>
<body>
<div class="container">
	<%@include file="Header.jsp"%>
	<br>
	<h3 class="text-info text-center">Search Medicine</h3>
	<form action="searchby">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<input name="searchTxt" class="form-control input-md" placeholder="Enter name to search..."/>
			</div>
			<div class="col-md-4">
				<button class="btn btn-md btn-primary" type="submit">Search</button>
			</div>
		</div>
	</form>
	<br/>
	<c:if test="${fn:length(medicines) > 0}">
	<div class="row">
		<div class="col-md-12 panel panel-default">
			<form id="editMedicineFrm" action="edit" method="get">
				<input id="medicineId" type="hidden" name="id" value="-1"/>
				<table class="table">
					<thead>
						<tr>
							<th>Sr.No</th>
							<th>Name</th>
							<th>Code</th>
							<th>Type</th>
							<th>
								<div align="center">Actions</div>
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${medicines}" var="medicine" varStatus="stat">
						<tr>
							<td scope="row">${medicine.id}</td>
							<td>${medicine.name}</td>
							<td>${medicine.code}</td>
							<td>${medicine.medicineType}</td>
							<td>
								<div align="center">
									<div title="Edit" id="edit${medicine.id}" class="fa fa-pencil-square-o editBtn links"></div>
									<div title="Delete" id="del${medicine.id}" class="glyphicon glyphicon-trash deleteBtn links"></div>
								</div>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	</c:if>
	<c:if test="${Message != null}">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div align="center" class="alert alert-info" role="alert">${Message}</div>
			</div>
		</div>
	</c:if>
</div>
</body>
</html>