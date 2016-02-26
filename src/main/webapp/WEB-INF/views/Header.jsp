<div id="header">
	<div id="logo"></div>
	<div id="nav">
		<c:choose>
			<c:when test="${uid==null}">
				<ul>
					<li><a href="${pageContext.request.contextPath}/index" class="active">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutus">About Us</a></li>
					<li><a href="${pageContext.request.contextPath}/facilities">Facilities</a></li>
					<li><a href="${pageContext.request.contextPath}/services">Services</a></li>
					<li><a href="${pageContext.request.contextPath}/contactus">Contact Us</a></li>
					<li><a href="${pageContext.request.contextPath}/appointment">Appointment</a></li>
				</ul>
			</c:when>
			<c:otherwise>
				<ul>
					<li><a href="${pageContext.request.contextPath}/appointment">Book Appointment</a></li>
					<li><a href="${pageContext.request.contextPath}/appointment/viewall">View Appointments</a></li>
				</ul>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<br clear="all">
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
						src="${pageContext.request.contextPath}/resources/images/banners/banner1.png"
						alt="First slide">
				</div>
				<div class="item next left">
					<img class="second-slide"
						src="${pageContext.request.contextPath}/resources/images/banners/banner2.png"
						alt="Second slide">
				</div>
				<div class="item">
					<img class="third-slide"
						src="${pageContext.request.contextPath}/resources/images/banners/banner3.png"
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