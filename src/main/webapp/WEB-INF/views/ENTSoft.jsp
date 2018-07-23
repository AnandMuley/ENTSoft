<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<%@include file="shared/Include.jsp"%>
<title>ENT Soft</title>
</head>
<body class="site-body">
	<div class="container">

		<%-- @include file="Header.jsp" --%>
        <!--
        <main role="main" class="container">
          <div class="starter-template">
            <h1>Appointment Booking</h1>
            <p class="lead">
                Everything is online then why should we be in a queue at a hospital
            </p>

          </div>
        </main>-->
        <%@include file="Register.jsp"%>
		<%@include file="shared/Footer.jsp"%>
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/resources/js/lib/jquery-3.3.1.slim.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/lib/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/lib/bootstrap.min.js"></script>
	</div>
</body>
</html>