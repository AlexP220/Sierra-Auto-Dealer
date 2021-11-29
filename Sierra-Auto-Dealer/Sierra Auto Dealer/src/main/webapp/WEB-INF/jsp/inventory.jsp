<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- vvv this tag vvv...see below -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- ^^^ this tag ^^^...see below -->
<!DOCTYPE HTML>
<html>
<head>
<title>SAD Inventory</title>
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
				<th scope="col">Make</th>
				<th scope="col">Model</th>
				
				<th scope="col">YEAR</th>
				<th scope="col">PICTURE</th>
				<th scope="col">NEW/USED</th>
				<th scope="col"></th>
				<th scope="col">purchase date</th>


			</tr>
		</thead>
		<tbody>
			<c:forEach items="${allCars}" var="cars">
				<tr>
					<td>${cars.make}</td>
					<td>${cars.model}</td>
					
					<td>${cars.year}</td>
					<td><img width="500" height="350" src="${cars.imageURL}" /></td>
					<td>${cars.newCar ? "NEW" : "USED"}</td>
					<td><a type="button" class="nav-link; btn btn-info"  href="/cardetails?vinNumber=${cars.vin}">CLICK HERE FOR DETAILS</a></td>
					<td>${cars.dateOfPurchase}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script src="script.js"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>