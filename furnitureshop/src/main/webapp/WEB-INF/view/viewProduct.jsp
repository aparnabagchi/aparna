<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %>

    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.prettyPhoto.js"></script>
    <script src="resources/js/jquery.isotope.min.js"></script>
    <script src="resources/js/main.js"></script>
    <script src="resources/js/wow.min.js"></script>
     <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/prettyPhoto.css" rel="stylesheet">
	<link href="resources/css/item_hover.css" rel="stylesheet">
    <link href="resources/css/animate.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
    <link href="resources/fonts/stylesheet.css" rel="stylesheet">
    <link href="resources/css/responsive.css" rel="stylesheet">
    
<section class="container" data-ng-app="cartApp" style="height: 430px;">

		<div class="row"  data-ng-app="myApp" data-ng-controller="myCtrl">
			<div class="col-md-6">
		<img src="<c:url value='/resources/${product.productId }.jpg' />" height="200" width="200" />

			</div>
			<div class="col-md-6">
                <h2 style="color: blue;">Product Information</h2>
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
			
				<p data-ng-controller="cartController">
					<a href="<spring:url value="/product" />" class="btn btn-success">Back
						
					</a> 
					<a href="<spring:url value="/cart?productId=${product.productId }"/>" class="btn btn-warning btn-large" data-ng-click="addToCart('${product.productId}')">
					<span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
				</p>
			
			</div>
		</div>
	</section>
       

<%@ include file="/WEB-INF/view/template/footer.jsp" %>
</body>
</html>