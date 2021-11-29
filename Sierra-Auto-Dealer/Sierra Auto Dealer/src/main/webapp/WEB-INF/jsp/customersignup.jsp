<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Sierra Auto Dealer</title>
<!-- add icon link -->
<link rel="icon" href="/images/Tahoe.jfif" type="image/x-icon">


<link href="<c:url value="/styles/bootstrap.min.css" />"
	rel="stylesheet">


</head>
<body>
	<%@ include file="navbar.jsp"%>
	<form:form method="post" action="/customersignup" modelAttribute="customer">
		<fieldset>
			<h2>Login</h2>
			<div class="form-group">
				<label class="col-form-label mt-4" for="inputDefault">First Name</label> 
				<form:input path="firstName" type="text" class="form-control" placeholder="first name" id="inputDefault"/>
			</div>
			<div class="form-group">
				<label class="col-form-label mt-4" for="inputDefault">Last Name</label> 
				<form:input path="lastName" type="text" class="form-control" placeholder="last name" id="inputDefault"/>
			</div>
			 <div class="form-group">
     			 <label for="exampleTextarea" class="form-label mt-4">Address</label>
     			 <form:textarea path="address" class="form-control" id="exampleTextarea" rows="3"/>
   			 </div>
   			 <div class="form-group">
      			<label for="exampleInputEmail1" class="form-label mt-4">Email address</label>
   			   <form:input path="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>
     		</div>
     		<div class="form-group">
				<label class="col-form-label mt-4" for="inputDefault">Phone Number</label> 
				<form:input path="phoneNumber" type="text" class="form-control" placeholder="phone number" id="inputDefault"/>
			</div>
			 <div class="form-group">
				<label class="col-form-label mt-4" for="inputDefault">User Name</label> 
				<form:input path="userName" type="text" class="form-control" placeholder="userName" id="inputDefault"/>
			</div>
			<div class="form-group">
				<label class="col-form-label mt-4" for="inputDefault">Password</label> 
				<form:input path="customerPassword" type="text" class="form-control" placeholder="Password" id="inputDefault"/>
			</div>
			<div class="form-group">
				<label class="col-form-label mt-4" for="inputDefault">id</label> 
				<form:input path="customerID" type="text" class="form-control" placeholder="id" id="inputDefault"/>
			</div>
		</fieldset>
		<br>
		<br>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form:form>
	<%@ include file="footer.jsp"%>
</body>
</html>