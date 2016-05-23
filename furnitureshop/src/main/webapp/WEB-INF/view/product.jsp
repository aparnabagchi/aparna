<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online Furniture</title>
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
.rTable {   	display: table;   	width: 100%; } 
	.rTableRow {   	display: table-row; border-bottom: 1px solid #000000; } 
	.rTableHeading {   	display: table-header-group;   	background-color: #ddd; } 
	.rTableCell, .rTableHead {   	display: table-cell;   	padding: 3px 10px;   	border: 1px solid #999999; } 
	.rTableHeading {   	display: table-header-group;   	background-color: #ddd;   	font-weight: bold; } 
	.rTableFoot {   	display: table-footer-group;   	font-weight: bold;   	background-color: #ddd; } 
	.rTableBody {   	display: table-row-group; }
  </style>
</head>

<script type="text/javascript" src="resources/js/angular.min.js"></script>

<style>
table, th , td {
    border: 1px solid grey;
    border-collapse: collapse;
    padding: 5px;
}
table tr:nth-child(odd) {
    background-color: #f1f1f1;
}
table tr:nth-child(even) {
    background-color: #ffffff;
}
</style>

<body >

	<script type="text/javascript" src="resources/references/js/jquery-1.12.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

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




	<br>
	<br>

					
					
					
					
<br><br>
					
					<!--  -->
	                <div class="container">
					<div class="row">
					<div class="col-lg-9 col-centered">
					<!--  -->
					
					
					
		 <h2>List of Products</h2>  
    <table>
        <tr>
            <td>Prodcut ID</td><td>Group Name</td><td>Name</td><td>Price</td><td>Quanity</td><td>Description</td><td>Image</td>
        <td colspan="2">Operations</td></tr>
        <c:forEach items="${products}" var="product">
            <tr>
            <td>${product.productId}</td>
            <td>${product.groupName}</td>
            <td>${product.name}</td>
             <td>${product.price}</td>
            <td>${product.quantity}</td>
            <td>${product.description}</td>
            <td><img src="${product.imagePath}" height="50" width="50"/></td>
          
 <td><a href="<spring:url value="/viewProduct?productId=${product.productId }" />"  class="btn btn-primary" >
					<span class="glyphicon-info-sign glyphicon"> </span>  Details</a></td>
        <td><a href="<spring:url value="/deleteProduct?productId=${product.productId }" />"  class="btn btn-primary" >
					<span class="glyphicon-info-sign glyphicon"> </span>  Delete</a></td> </tr>
     
        </c:forEach>
    </table>
    <br/>
    <a href="<c:url value='/Registration' />"><span class="glyphicon-info-sign glyphicon"> </span> Add New Product</a>	
				<!--  -->
	            </div>
				</div>
				</div>
				<!--  -->								
							
				
				<!--  -->
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

