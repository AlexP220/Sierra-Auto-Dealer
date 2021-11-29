<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>DDW ${car.make} ${car.model}</title>

<link rel="canonical"
    href="https://getbootstrap.com/docs/4.4/examples/cover/">

<!-- Bootstrap core CSS -->
<link
    href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
    crossorigin="anonymous">


<style>
.bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

@media ( min-width : 768px) {
    .bd-placeholder-img-lg {
        font-size: 3.5rem;
    }
}j
</style>
<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarColor01"
                aria-controls="navbarColor01" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link active" href="/">Home
                            <span class="visually-hidden">(current)</span>
                    </a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#">Pricing</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#">About</a></li>
                    <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                        href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Action</a> <a
                                class="dropdown-item" href="#">Another action</a> <a
                                class="dropdown-item" href="#">Something else here</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Separated link</a>
                        </div></li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-sm-2" type="text"
                        placeholder="Search">
                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <img src="${car.imageurl}" /> Make: ${car.make} Model: ${car.model}
    Mileage: ${car.mileage} Stock Number: ${car.id} Available:
    ${car.soldStatus} VIN: ${car.vinNumber} Color: ${car.color} It's been
    on the lot for ${car.daysOnLot} days.


</body>