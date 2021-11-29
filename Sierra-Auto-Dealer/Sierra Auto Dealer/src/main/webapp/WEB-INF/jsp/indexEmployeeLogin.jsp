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
    <h1>You are logged in as an Employee</h1>
    
    <%@ include file="footer.jsp" %>
</body>
</html>