<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<div class="d-block bg-dark">

		<h1
			class="cover-container w-75 h-100 mx-auto mb-0 text-white text-center pt-4">Sierra</h1>


	</div>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">


		<div class="container-fluid">
			<div class="d-block bg-dark w-5">
				<div>
				
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarColor02"
					aria-controls="navbarColor02" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			
				<div class="collapse navbar-collapse" id="navbarColor02">
				
					<ul class="navbar-nav me-auto">
						<li class="nav-item"><a class="nav-link active" href="/">Home
								<!--                 <span class="visually-hidden">(current)</span>  -->
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/inventory">INVENTORY</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/aboutus">About Us</a>
								</li>
						<li class="nav-item"><a class="nav-link" href="/customerlogin">Login</a>
								</li>
								
								 
					</ul>
					 <form class="d-flex"  method="post" action="/carsearch" >
					
					
						<input name="searched" class="form-control me-sm-2" type="text"
							placeholder="Search"/>
							
						<button class="btn btn-secondary my-2 my-sm-0" value="submit" type="submit">Search</button>
						
					</form> 

					<c:if test="${loggedInUser != null}">
										<a class="navbar-brand" style="margin-left: 100px" ><h6 style="color: red">Logged in as:</h6> <p> ${loggedInUser.userName}</p></a>
					<a type="button" class="nav-link; btn btn-light"  href="/signout">Sign Out</a>
						</c:if>
						</div>	
	
				</div>
				
				
					<div class="d-block bg-dark">


				
				
			</div>
			</div>
	</nav>
</header>