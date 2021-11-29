<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- vvv this tag vvv...see below -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- ^^^ this tag ^^^...see below -->
<!DOCTYPE HTML>
<html>
<head>
    <title>SAD Customer DB</title>
    <!-- add icon link -->
        <link rel = "icon" href = "/images/Tahoe.jfif" 
        type = "image/x-icon">

<link href="<c:url value="/styles/bootstrap.min.css" />"
	rel="stylesheet">


</head>
<body>
	<%@ include file="navbar.jsp"%>
	<table class="table table-success table-striped">
		<thead>
			<tr>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Customer ID</th>
				<th scope="col">Address</th>
				<th scope="col">Email</th>
				<th scope="col">Phone Number</th>
				<th scope="col">User Name</th>
				<th scope="col">Password</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${allCustomers}" var="customer">
				<tr>
					<td>${customer.firstName}</td>
					<td>${customer.lastName}</td>
					<td>${customer.customerID}</td>
					<td>${customer.address}</td>
					<td>${customer.email}</td>
					<td>${customer.phoneNumber}</td>
					<td>${customer.userName}</td>
					<td>${customer.customerPassword}</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script src="script.js"></script>
	<%@ include file="employeefooter.jsp"%>
</body>
</html>