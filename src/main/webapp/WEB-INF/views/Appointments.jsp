<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Appointments</title>
<%@include file="Include.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app/Appointment.js"></script>
</head>
<body class="site-body">
<div class="container">
	<%@include file="Header.jsp"%>
	<br>
	<div id="middle_content">
		<h3 class="text-info text-center">View Appointments</h3>
		<div align="center">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">Appointments for date ${searchResults[0].datedOn} </div>
			</div>
		</div>
		<br/>
		<c:if test="${fn:length(searchResults)==0}">
			<div class="row">
				<div class="col-md-12" align="center">No appointments !</div>
			</div>
		</c:if>
		<c:if test="${fn:length(searchResults)>0}">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				
						<table class="table table-bordered">
							<thead>
								<tr class="active">
									<th>Sr.No</th>
									<th>Name</th>
									<th>ContactNo</th>
									<th>Timeslot</th>
									<th>Details</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${searchResults}" var="appointment" varStatus="stat">
								<tr>
									<td>${stat.index+1}</td>
									<td>${appointment.name}</td>
									<td>${appointment.contactNo}</td>
									<td>${appointment.timeSlot}</td>
									<td>
										<i data-toggle="modal" title="${stat.index+1}" data-target="#appointmentsModal" class="glyphicon glyphicon-info-sign site-color details-icon">
											<div id="appointmentDetails${stat.index+1}" style="display: none;">
												<div class="row">
													<div class="col-md-1"></div>
													<div class="col-md-10">
														<div class="row">
															<div class="col-md-3 site-label">Name</div>
															<div class="col-md-8">${appointment.name}</div>
														</div>
														<div class="row">
															<div class="col-md-3 site-label">Age</div>
															<div class="col-md-8">${appointment.age} yrs</div>
														</div>
														<div class="row">
															<div class="col-md-3 site-label">ContactNo</div>
															<div class="col-md-8">${appointment.contactNo}</div>
														</div>
														<div class="row">
															<div class="col-md-3 site-label">Submitted On</div>
															<div class="col-md-8"><fmt:formatDate value="${appointment.requestSubmittedOn}" pattern="dd-MMM-yyyy hh:mm:ss a"/></div>
														</div>
														<div class="row">
															<div class="col-md-3 site-label">Address</div>
															<div class="col-md-8">${appointment.address}</div>
														</div>
													</div>
												</div>
											</div>
										</i>
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
			</div>
		</div>
		</c:if>
			<!-- Modal -->
			<div id="appointmentsModal" class="modal fade" role="dialog">
				<div class="modal-dialog modal-md">
	
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Appointment Details</h4>
						</div>
						<div class="modal-body">
							<p id="appointmentDetails">No details found</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
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