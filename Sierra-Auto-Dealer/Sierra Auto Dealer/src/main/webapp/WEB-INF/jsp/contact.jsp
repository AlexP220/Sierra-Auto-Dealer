<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>About US</title>
<!-- add icon link -->
<link rel="icon" href="/images/Tahoe.jfif" type="image/x-icon">


<link href="<c:url value="/styles/bootstrap.min.css" />"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

input[type=submit] {
	background-color: #04AA6D;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>

</head>
<body>
	<%@ include file="navbar.jsp"%>
<body>
	<div style="margin-left: 16px">
	<br>
	<h3 >Contact Form</h3>
	<p>&ensp;This page does not work</p>
	</div>
	<div class="container">
		<form action="/action_page.php">
			<label for="fname">First Name</label> <input type="text" id="fname"
				name="firstname" placeholder="Your name.."> <label
				for="lname">Last Name</label> <input type="text" id="lname"
				name="lastname" placeholder="Your last name.."> <label
				for="country">Country</label> <select id="country" name="country">
				<option value="australia">USA</option>
				<option value="canada">Canada</option>
				<option value="usa">Mexico</option>
			</select> <label for="subject">Subject</label>
			<textarea id="subject" name="subject" placeholder="Write something.."
				style="height: 200px"></textarea>

			<input type="submit" value="Submit">
		</form>
	</div>
	<br>
	<br>
	<div style="width: 50%; margin: 0 auto;">
		<h1>Our Contact Information</h1>
		<p>
			Sierra Auto Dealer <br>123 Main Street <br>
			<a href="https://www.fallonnevada.gov/">Fallon</a>, NV 89406
		</p>

		<p>775-586-4878</p>
	</div>
</body>

<%@ include file="footer.jsp"%>
</body>

</html>