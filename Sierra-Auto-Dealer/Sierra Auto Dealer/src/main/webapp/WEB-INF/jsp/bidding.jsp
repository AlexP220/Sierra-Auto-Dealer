<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	 <form:form method="post" action="/bidding" modelAttribute="bidDto">
		<fieldset>
			<h2>Login</h2>
			<div class="form-group">
			<div></div>
			<label class="form-label mt-4">Minimum Bid : </label>
			<h3>$<fmt:formatNumber type="number" maxFractionDigits="2"
							value="${bidDto.minSellPrice}"/></h3>
			</div>
			<form:input path = "vin" type= "hidden" value = "${vin}" /> 
			<form:input path = "bid" type= "number" value = "${bidDto.minSellPrice}" min="${bidDto.minSellPrice}"/> 
			
		 	<%-- <div>
				<label class="form-label mt-4">Bid</label>
				<form:input path="sellPrice" type="text" class="form-control" />
			</div>  --%>
		</fieldset>
		<br>
		<br>
		<a>
		<button type="submit" class="btn btn-primary" >Submit</button>
		</a>
	</form:form> 
    
    
    
    
    
    
    
    
<%--     c:if test="${loggedInUser != null  && numberofdays == true}">
   <a type="button" class="nav-link; btn btn-warning btn-primary" id="customer" href="/bidding?vinNumber=${listing.vin}" style="float: right ">Place Bid!</a> --%>
    
    
    
    
    <%@ include file="footer.jsp" %>
</body>
</html>