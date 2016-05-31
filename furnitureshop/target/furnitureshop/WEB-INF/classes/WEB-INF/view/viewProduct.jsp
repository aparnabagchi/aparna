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

		<div class="row">
			<div class="col-md-6">
				
				<img src="<s:url value='/resources/${product.productId}.jpg'/>" height="150" width="150">
				
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
					<a href="<spring:url value="/cart?productId=${my.productId }" />" data-ng-click = "addToCart('${product.productId}')" class="btn btn-warning btn-large"> <span class="glyphicon-shopping-cart glyphicon"> </span> AddToCart
</a>
				</p>
			
			</div>
		</div>
	</section>
       

<%@ include file="/WEB-INF/view/template/footer.jsp" %>
</body>
</html>