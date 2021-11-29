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
				<th scope="col">BuyerID</th>
				<th scope="col">Vin</th>
				<th scope="col">Sell Price</th>
				<th scope="col">Sell Date</th>
				
		


			</tr>
		</thead>
		<tbody>
			<c:forEach items="${allCars}" var="cars">
				<tr>
					<td>${cars.sellerID}</td>
					<td>${cars.vin}</td>
			<!-- vvv this shows "price" as a 2 digit decimal along with the tag at the top of this page vvv -->		
					<td>$<fmt:formatNumber type="number" maxFractionDigits="2" value="${cars.sellPrice}" /></td>
			<!-- ^^^ this shows "price" as a 2 digit decimal along with the tag at the top of this page^^^ -->
					
					
					<td>${cars.sellDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script src="script.js"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>