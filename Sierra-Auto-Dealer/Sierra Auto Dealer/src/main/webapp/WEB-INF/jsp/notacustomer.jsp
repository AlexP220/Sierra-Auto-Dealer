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
	<h2>OOPS! Something went wrong :()</h2>
<p>You have not created an account or you credentials were wrong. Click <a href="/customerlogin">here</a> to return to the login page or if you have not created a login go to our <a href="/customersignup">sign up</a> page.</p>
	<%@ include file="footer.jsp"%>
</body>
</html>

