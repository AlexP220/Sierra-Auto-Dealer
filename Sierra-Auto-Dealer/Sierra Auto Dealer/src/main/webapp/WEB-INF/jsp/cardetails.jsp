<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- vvv this tag vvv...see below -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- ^^^ this tag ^^^...see below -->
<!DOCTYPE HTML>
<html>
<head>
<title>Car Details</title>
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
				<th scope="col">VIN</th>
				<th scope="col">YEAR</th>
				<th scope="col">PICTURE</th>
				<th scope="col">NEW/USED</th>
				<th scope="col">PRICE</th>
				<th scope="col">COLOR</th>
				<th scope="col">MILAGE</th>
				<th scope="col">DESCRIPTION</th>

			</tr>
		</thead>
		<tbody>
			
			 	<tr>
					<td>${listing.make}</td>
 					<td>${listing.model}</td>
					<td>${listing.vin}</td>
					<td>${listing.year}</td>
					<td><img width="500" height="350" src="${listing.imageURL}" /></td>
					<td>${listing.newCar ? "NEW" : "USED"}</td>
					<!-- vvv this shows "price" as a 2 digit decimal along with the tag at the top of this page vvv -->
					<td>$<fmt:formatNumber type="number" maxFractionDigits="2"
							value="${listing.sellPrice}" /></td>
							
							

							
							
					<!-- ^^^ this shows "price" as a 2 digit decimal along with the tag at the top of this page^^^ -->
					<td>${listing.carDescription.color}</td>
					<td>${listing.carDescription.milage}</td>
					<td>${listing.carDescription.description}</td>  
					
					
					
					
					

					
					
					
					

				 </tr> 
			 
		</tbody>
	</table>
	
	<div>
   <%-- 	<%@ page isELIgnored="false"%> --%>
   <div class="d-grid gap-2">
<c:if test="${loggedInUser != null  && numberofdays == true}">
   <a type="button" class="nav-link; btn btn-warning btn-primary" id="customer" href="/bidding?vinNumber=${listing.vin}" style="float: right ">Place Bid!</a>
    
   
</c:if>
</div>
</div>




	<script src="script.js"></script>
</body>
</html>