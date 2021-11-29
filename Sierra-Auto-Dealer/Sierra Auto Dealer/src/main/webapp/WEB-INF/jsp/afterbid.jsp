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
	<%@ include file="navbar.jsp"%>
	<h4>CONGRADULATIONS! <br> Please <a href="/contact">contact</a> us for further instructions.</h4>
	<table class="table table-success table-striped">
		<thead>
			<tr>
				<th scope="col">Make</th>
				<th scope="col">Model</th>
				<th scope="col">YEAR</th>
				<th scope="col">PICTURE</th>
				<th scope="col">NEW/USED</th>
				<th scope="col"></th>
	

			</tr>
		</thead>
		<tbody>
			
			 	<tr>
					<td>${randomcar.make}</td>
 					<td>${randomcar.model}</td>

					<td>${randomcar.year}</td>
					<td><img width="500" height="350" src="${randomcar.imageURL}" /></td>
					<td>${randomcar.newCar ? "NEW" : "USED"}</td>
					<td><a type="button" class="nav-link; btn btn-info"  href="/cardetails?vinNumber=${randomcar.vin}">CLICK HERE FOR DETAILS</a></td>

				 </tr> 
				 <tr>
					<td>${randomcar1.make}</td>
 					<td>${randomcar1.model}</td>

					<td>${randomcar1.year}</td>
					<td><img width="500" height="350" src="${randomcar1.imageURL}" /></td>
					<td>${randomcar1.newCar ? "NEW" : "USED"}</td>
					<td><a type="button" class="nav-link; btn btn-info"  href="/cardetails?vinNumber=${randomcar1.vin}">CLICK HERE FOR DETAILS</a></td>

				 </tr> 
		</tbody>
	</table>
	<script src="script.js"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>

