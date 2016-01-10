<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spectacle Prescription</title>
<%@include file="Include.jsp"%>
</head>
<body>
<div class="container">
	<%-- <%@include file="Header.jsp"%> --%>
	<br>
	<div class="row">
		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/index" class="glyphicon glyphicon-chevron-left">Home</a>
		</div>
	</div>
	<div align="center">
			<div class="prescription-container">
				<div class="row">
					<div class="col-md-6">
						<div class="row">
							<h2 class="text-info">Ugale Retina Care and Laser Centre</h2>
						</div>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-4">
						<div class="row">
							<h3 align="right" class="text-info">Dr. Rajesh K. Ugale</h3>
						</div>
						<div class="row" align="right">M.B.B.S,D.O(Chennai),F.V.R.S</div>
						<div class="row" align="right" style="font-weight: bold;">Vitreoretina
							Surgeon</div>
						<div class="row" align="right">Above Nokia Priority,Tower
							Road</div>
						<div class="row" align="right">Ratanlal Plot Sq.,Akola</div>
						<div class="row" align="right">Mo:9420938167</div>

					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-1 label-text" align="left">Name</div>
					<div class="col-md-8" align="left">
						<input class="form-control input-sm prescription-input"
							name="name" />
					</div>
					<div class="col-md-1 label-text">Date</div>
					<div class="col-md-2" align="left">
						<input class="form-control input-sm prescription-input"
							name="date" />
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-1 label-text" align="left">Address</div>
					<div class="col-md-11" align="left">
						<input class="form-control input-sm prescription-input"
							name="address" />
					</div>
				</div>
				<br>
				<div class="row">
					<table class="table table-bordercolor" border="1">
						<thead>
							<tr>
								<th colspan="4" style="text-align: center;">Right Eye</th>
								<th colspan="3" style="text-align: center;">Left Eye</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="4" style="text-align: center;">
									<div class="row">
										<div class="col-md-2">V/A</div>
										<div class="col-md-3">
											<input class="form-control input-sm" />
										</div>
										<div class="col-md-3">Near</div>
										<div class="col-md-3">
											<input class="form-control input-sm" />
										</div>
									</div>
								</td>
								<td colspan="4" style="text-align: center;">
									<div class="row">
										<div class="col-md-2">V/A</div>
										<div class="col-md-3">
											<input class="form-control input-sm" />
										</div>
										<div class="col-md-3">Near</div>
										<div class="col-md-3">
											<input class="form-control input-sm" />
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th></th>
								<th style="text-align: center;">SPH</th>
								<th style="text-align: center;">CYL</th>
								<th style="text-align: center;">AXIS</th>
								<th style="text-align: center;">SPH</th>
								<th style="text-align: center;">CYL</th>
								<th style="text-align: center;">AXIS</th>
							</tr>
							<tr>
								<th>DIST</th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
							</tr>
							<tr>
								<th>NEAR</th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
								<th style="text-align: center;"><input
									class="form-control input-md" /></th>
							</tr>
						</tbody>
					</table>
					<div class="row">
						<div class="col-md-3 pres-text-label">Type of glasses</div>
						<div class="col-md-3">
							<select class="form-control input-group-md">
								<option></option>
								<option>Type A</option>
								<option>Type B</option>
							</select>
						</div>
						<div class="col-md-2 pres-text-label">Color</div>
						<div class="col-md-3">
							<select class="form-control input-group-md">
								<option></option>
								<option>Color A</option>
								<option>Color B</option>
							</select>
						</div>
					</div>
					<br />
					<div class="row">
						<div class="col-md-3" style="font-weight: bold;">Any
							Procedure</div>
					</div>
					<br />
					<div class="row">
						<div class="col-md-1" align="left"></div>
						<div class="col-md-2 pres-text-label">Right Eye</div>
						<div class="col-md-3" align="left">
							<input class="form-control input-md" />
						</div>
						<div class="col-md-2 pres-text-label">Left Eye</div>
						<div class="col-md-3" align="left">
							<input class="form-control input-md" />
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-2 label-text" align="right">REMARKS</div>
					<div class="col-md-5">
						<input class="form-control input-sm prescription-input"
							name="address" />
					</div>
					<div class="col-md-2 label-text" align="right">Signature</div>
					<div class="col-md-3">
						<input disabled="disabled"
							class="form-control input-sm prescription-input" name="address" />
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>