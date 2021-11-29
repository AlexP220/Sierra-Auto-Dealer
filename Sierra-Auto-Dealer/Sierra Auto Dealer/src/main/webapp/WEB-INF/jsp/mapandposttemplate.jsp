<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Sierra Auto Dealer</title>
    <!-- add icon link -->
        <link rel = "icon" href = "/images/Tahoe.jfif" 
        type = "image/x-icon">

    
    <link href="<c:url value="/styles/bootstrap.min.css" />" rel="stylesheet">
    

</head>
<body>
    <%@ include file="navbar.jsp" %>
	<form:form method="post" action="/cutomerlogin" modelAttribute="customer">
		<fieldset>
			<h2>Login</h2>
			<div class="form-group">
				<label class="form-label mt-4">Email</label>
				<form:input path="email" type="text" class="form-control" id="make"
					placeholder="email@email.com" />
			</div>
			<div class="form-group">
				<label class="form-label mt-4">Password</label>
				<form:input path="customerPassword" type="password" value="FakePSW" id="myInput"/><br><br>
				<input type="checkbox" onclick="myFunction()">Show Password
			</div>
			<div>
			<button herf="/sign-up" type="button" class="btn btn-primary">Sign-Up</button>
			</div>
		</fieldset>
		<br>
		<br>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form:form>
    
    <%@ include file="footer.jsp" %>
</body>
</html>