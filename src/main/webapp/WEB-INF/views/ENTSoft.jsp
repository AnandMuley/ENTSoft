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

        <c:if test="${uid != null}">
		<%@include file="shared/Header.jsp" %>
		</c:if>
        <!--
        <main role="main" class="container">
          <div class="starter-template">
            <h1>Appointment Booking</h1>
            <p class="lead">
                Everything is online then why should we be in a queue at a hospital
            </p>

          </div>
        </main>-->
        <c:choose>
            <c:when test="${viewName == 'Index'}">
                <%@include file="Register.jsp"%>
            </c:when>
            <c:when test="${viewName == 'Login'}">
                <%@include file="Login.jsp"%>
            </c:when>
            <c:when test="${viewName == 'Home'}">
                <%@include file="Home.jsp"%>
            </c:when>
            <c:when test="${viewName == 'Booking'}">
                <%@include file="Booking.jsp"%>
            </c:when>
        </c:choose>

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