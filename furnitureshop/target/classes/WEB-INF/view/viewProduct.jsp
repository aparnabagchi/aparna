<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>OnlineFurniture</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     <style>
   .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      height:400px;
      margin: auto;
  }
  .circle {
margin-left: auto;
margin-right: auto;
border-radius: 50%;
width: 25%;
position: relative;
}

.circle-border {
border: 1px solid black;
}

.circle-solid{
background-color: whitesmoke;
}

.circle:before {
content: "";
display: block;
padding-top: 100%;
}

.circle-inner {
position: absolute;
top: 0;
left: 0;
bottom: 0;
right: 0;
text-align: center;
}
  </style>
</head>
<body>

   

    <nav role="navigation" class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">OnlineFurniture</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/furnitureshop">Home</a></li>
                <li><a href="AboutUs">About Us</a></li>
                <li><a href="contactUs">Contact Us</a></li>
                <li><a href="product">Gallery</a></li>
                <li><a href="Registration">Product Registration</a></li>
               
            </ul>
            <ul class="nav navbar-nav navbar-right">
      <li><a href="signUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       
    </ul>
        </div>

    </nav>

<section class="container" data-ng-app="cartApp" style="height: 430px;">

		<div class="row">
			<div class="col-md-6">
				<img src="${product.imagePath}" height="150" width=150 />
			</div>
			<div class="col-md-6">

				<h3>${product.name}</h3>
				<p>${product.description}</p>
				<p>
					<strong>Item Code : </strong><span class="label label-warning">${product.productId}</span>
				</p>
				<p>
					<strong>Product Group :</strong> : ${product.groupName}
				</p>
				<p>
					<strong>Quantity</strong> : ${product.quantity}
				</p>
				
				<h4>Rs &nbsp;${product.price}  &nbsp;INR</h4>
			
				<p ng-controller="cartController">
					<a href="<spring:url value="/product" />" class="btn btn-success">
						<span class="glyphicon-circle-arrow-left glyphicon"></span> back
					</a> 
					<a href="#" ng-click = "addToCart('${product.productId}')" class="btn btn-warning btn-large"> <span
						class="glyphicon-shopping-cart glyphicon"> </span> Order Now
					</a>
				</p>
			
			</div>
		</div>
	</section>
       



<script src="http://code.jquery.com/jquery-latest.min.js">
</script>
<!--Bootstrap-->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<BR><br><br><br><br><br><br><br>
<div class="bottom">
<nav class="navbar navbar-default">  
   <div class="container-fluid"> 
   @Copyright 2016
     </div>
</nav> 
</div>
</body>
</html>