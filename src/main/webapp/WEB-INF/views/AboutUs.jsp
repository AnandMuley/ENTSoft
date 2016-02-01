<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" ng-app="ICareUI">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<%@include file="Include.jsp"%>
</head>
<body class="site-body">
	<div class="container">
		<%@include file="Header.jsp"%>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class=""></li>
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active left">
					<img class="first-slide"
						src="resources/images/banners/banner1.png"
						alt="First slide">
				</div>
				<div class="item next left">
					<img class="second-slide"
						src="resources/images/banners/banner2.png"
						alt="Second slide">
				</div>
				<div class="item">
					<img class="third-slide"
						src="resources/images/banners/banner3.png"
						alt="Third slide">
					<div class="container">
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<div id="middle_content">
			<div id="heading_strip">
				<img src="resources/images/icon.png"
					style="margin-right: 13px; float: left; margin-top: 0px; margin-left: 19px;">Welcome
				to Anvi Ent Clinic
			</div>
			<div id="left_side" style="height: 416px;">
				<p style="width: 486px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ear,
					nose and throat (ENT) also known as Oto-Rhino-Laryngology is a
					medical and surgical specialty that focuses not only on diseases
					related to Ear Nose &amp; Throat but also on all head and neck
					diseases and disorders. <br>
					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;‘ANVI’
					ENT Clinic is one of the most well equipped ENT clinics in Pune.
					Located in the heart of Market Yard, this clinic caters to the ENT
					needs of near by area like Kondwa, Undri, NIBM, Bibewadi, Mukund
					Nagar Gultekdi and Camp. A relatively new clinic is as of now a
					working in a smaller area with plans of expansion in near future.
				</p>

				<div id="heading2">
					<img src="resources/images/facility.png"
						style="margin-right: 13px; float: left; margin-top: -5px; margin-left: 19px;">Facilities
					in the Clinic
				</div>

				<div>
					<ul
						style="font-family: Calibri; font-size: 16px; float: left; line-height: 26px; margin-left: 28px; margin-top: 0px; list-style-type: circle; color: #00639e;">


						<li><a href="Facilities.htm"
							style="text-decoration: none; color: #00639e;"> Endoscopy</a></li>
						<li><a href="Facilities.htm"
							style="text-decoration: none; color: #00639e;">Nasal
								Endoscopy</a></li>
						<li><a href="Facilities.htm"
							style="text-decoration: none; color: #00639e;">Video-Laryangoscopy</a></li>
						<li><a href="Facilities.htm"
							style="text-decoration: none; color: #00639e;">Audiometry</a></li>
						<li><a href="Facilities.htm"
							style="text-decoration: none; color: #00639e;">Oto Microscopy</a></li>
						<li><a href="Facilities.htm"
							style="text-decoration: none; color: #00639e;">Bronchoscopy</a></li>
					</ul>

				</div>
			</div>
			<div id="right_side">
				<img src="resources/images/img.png"
					style="width: 442px; height: 415px; margin-left: 8px;">
			</div>

		</div>
		<%@include file="Footer.jsp"%>
	</div>
</body>
</html>