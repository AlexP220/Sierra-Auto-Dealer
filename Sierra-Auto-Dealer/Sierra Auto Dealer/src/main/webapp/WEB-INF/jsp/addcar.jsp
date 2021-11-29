<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE HTML>
<html>
<head>
<title>SAD Add New Car</title>
<!-- add icon link -->
<link rel="icon" href="/images/Tahoe.jfif" type="image/x-icon">



<link href="<c:url value="/styles/bootstrap.min.css" />"
	rel="stylesheet">






</head>
<body>
	<%@ include file="navbar.jsp"%>
	<form:form method="post" action="/newcar" modelAttribute="car" >
		<fieldset>
			<legend>Add Car to Inventory</legend>
			<div class="form-group">
				<label class="form-label mt-4">Make</label>
				<form:input path="make" type="text" class="form-control" id="make"
					placeholder="ex: Ford" />
			</div>
			<div class="form-group">
				<label class="form-label mt-4">Model</label>
				<form:input path="model" type="text" class="form-control" id="model"
					placeholder="ex: F150 4x4" />
			</div>
			<div class="form-group">
				<label class="form-label mt-4">VIN #</label>
				<form:input path="vin" type="text" class="form-control" id="vin"
					placeholder="ex: 145OMG543" />
			</div>
			<!-- VVV this allows for a double var to show in a placeholderVVV -->
			<div class="form-group">
				<label class="form-label mt-4">Year</label> <input
					onchange="document.querySelector('#hiddenInput').value = this.value"
					placeholder="2021" type="number" class="form-control" id="number" />

				<form:input id="hiddenInput" type="hidden" path="year" />
				<!-- ^^^ this allows for a double var to show in a placeholde^^^ -->
				<%-- 				<form:input path="year" type="number" class="form-control" id="year"
					placeholder="2021" /> --%>
				<%-- value="ex: 2021" /> --%>

			</div>
			
			

			
 			<div class="form-group">
				<label class="form-label mt-4">Image URL</label>
				<form:input path="imageURL" type="text" class="form-control"
					id="imageURL"
					value="C:\Users\Alex P\eclipse-workspace\Sierra Auto Dealer\src\main\webapp\WEB-INF\images\name-of-file" />
			</div> 


<%--  			<div class="form-group">
				<label class="form-label mt-4">Image URL</label>
				<form:input path="imageURL" type="text" class="form-control"
					id="imageURL"
					value="C:\Users\Alex P\eclipse-workspace\Sierra Auto Dealer\src\main\webapp\WEB-INF\images\name-of-file" />
			</div> 
 --%>







 			<div class="form-group">
				<label class="form-label mt-4">Date of Purchase</label>
				<form:input path="dateOfPurchase" type="text" class="form-control"
					id="dateOfPurchase"
					placeholder="MM/DD/YYYY" />
			</div> 
			




			<label class="form-label mt-4">Vehicle Condition</label>

			<div class="form-check">
				<label class="form-check-label"> <form:radiobutton
						path="newCar" class="form-check-input" name="optionsRadios"
						id="newCar" value="true" checked="" /> New
				</label>
			</div>
			<div class="form-check">
				<label class="form-check-label"> <form:radiobutton
						path="newCar" class="form-check-input" name="optionsRadios"
						id="newCar" value="false" /> Used
				</label>
			</div>


			<%-- 						<div class="form-check">
				<label class="form-check-label"> <form:input path="newCar"
						type="radio" class="form-check-input" name="optionsRadios"
						id="newCar" value="true" checked="" /> New
				</label>
			</div>
			<div class="form-check">
				<label class="form-check-label"> <form:input path="newCar"
						type="radio" class="form-check-input" name="optionsRadios"
						id="newCar" value="false" /> Used
				</label>
			</div>  --%>
			<div class="form-group">
				<label class="form-label mt-4">Bought Price</label>
				<div class="form-group">
					<div class="input-group mb-3">
						<span class="input-group-text">$</span>
						<form:input path="boughtPrice" type="text" class="form-control"
							aria-label="Amount (to the nearest dollar)" />
						<span class="input-group-text">No Commas</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="form-label mt-4">Sell Price</label>
				<div class="form-group">
					<div class="input-group mb-3">
						<span class="input-group-text">$</span>
						<form:input path="sellPrice" type="text" class="form-control"
							aria-label="Amount (to the nearest dollar)" />
						<span class="input-group-text">No Commas</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="form-label mt-4">Color</label>
				<form:input path="carDescription.color" type="text"
					class="form-control" id="color" placeholder="ex: Red" />
			</div>

			<div class="form-group">
				<label class="form-label mt-4">Milage</label> <input
					onchange="document.querySelector('#hiddenInput').value = this.value"
					placeholder="ex: 150462" type="number" class="form-control"
					id="number" />

				<form:input id="hiddenInput" type="hidden"
					path="carDescription.milage" />
			</div>
			<div class="form-group">
				<label for="exampleTextarea" class="form-label mt-4">Car
					Description</label>
				<form:textarea path="carDescription.description"
					class="form-control" id="exampleTextarea" rows="3"
					spellcheck="true" />
			</div>
		</fieldset>
		<br>
		<br>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form:form>
	<%@ include file="footer.jsp"%>
</body>
</html>