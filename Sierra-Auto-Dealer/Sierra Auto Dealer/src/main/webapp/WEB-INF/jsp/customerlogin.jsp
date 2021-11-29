<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>SAD Customer Login</title>
<!-- add icon link -->
<link rel="icon" href="/images/Tahoe.jfif" type="image/x-icon">



<link href="<c:url value="/styles/bootstrap.min.css" />"
	rel="stylesheet">

<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>




</head>
<body>
	<%@ include file="navbar.jsp"%>
	<form:form method="post" action="/customerlogin" modelAttribute="customer">
		<fieldset>
		<br>
			<h2>Login</h2>
			<div class="form-group">
				<label class="form-label mt-4">User Name</label>
				<form:input path="userName" type="text" class="form-control" id="make"
					placeholder="hillbillycoder" />
			</div>
			<div class="form-group">
				<label class="form-label mt-4">Password</label>
				<form:input path="customerPassword" type="password" value="FakePSW" id="myInput"/><br><br>
				<input type="checkbox" onclick="myFunction()">Show Password
			</div>
			<br>
		<br>
			<div>
			<button type="submit" class="btn btn-primary">Submit</button>
			</div>
			<br>
		<br>
			<div>
			
			<h5>Don't have a login?</h5><h2><a class="nav-link" href="/customersignup">Sign-Up</a></h2>
			
		 </div>


		</fieldset>
		<br>
	
		
	</form:form>
	<%@ include file="footer.jsp"%>
</body>
</html>