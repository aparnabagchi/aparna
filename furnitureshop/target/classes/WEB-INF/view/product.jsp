<%@ include file="/WEB-INF/view/template/header.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



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
    


<br>
<br>
<style>
table, th, td {
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
<script type="text/javascript" src="resources/js/angular.min.js"></script>



<br>
<br>
<!--  -->
<div class="container">
	<div class="row">
		<div class="col-lg-9 col-centered">
			<!--  -->

			<div class="">

				<label>Search Element <input type="text" id="search"
					data-ng-model="search" value="${param.item}"
					data-ng-init="search='${param.item}'"></label>
<script>


$( window ).load(function() {
	searchTable($('#search').val());
	});
	$(document).ready(function() {
		$('#search').keyup(function() {
			searchTable($(this).val());
		});
	});

	function searchTable(inputVal) {
		var table = $('#myTable');
		table.find('tr').each(function(index, row) {
			var allCells = $(row).find('td');
			if (allCells.length > 0) {
				var found = false;
				allCells.each(function(index, td) {
					var regExp = new RegExp(inputVal, 'i');
					if (regExp.test($(td).text())) {
						found = true;
						return false;
					}
				});
				if (found == true)
					$(row).show();
				else
					$(row).hide();
			}
		});
	}
</script>

				<h2>List of Products</h2>
				<table id="myTable">
					<tr>
						<td>Prodcut ID</td>
						<td>Group Name</td>
						<td>Name</td>
						<td>Price</td>
						<td>Quanity</td>
						<td>Description</td>
						<td>Image</td>
						<td>Operations</td>
					</tr>
					<s:forEach items="${products}" var="product">
<tr>
						<td>${product.productId}</td>
						<td>${product.groupName}</td>
						<td>${product.name}</td>
						<td>${product.price}</td>
						<td>${product.quantity}</td>
						<td>${product.description}</td>
						<td><img
							src="<s:url value='/resources/${product.productId}.jpg'/>"></td>

						<td> <s:if
								test="${pageContext.request.userPrincipal.name == 'aparna'}">
								<a
									href="<spring:url value="/deleteProduct?productId=${product.productId }" />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon"> </span> Delete
								</a>
								<a
									href="<spring:url value="/editProduct?productId=${product.productId }" />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon"> </span> Edit
								</a>
							</s:if> <a
							href="<spring:url value="/viewProduct?productId=${product.productId }" />"
							class="btn btn-primary"> <span
								class="glyphicon-info-sign glyphicon"> </span> Details
						</a> </td>
						</tr>

					</s:forEach>

				</table>
			</div>
		</div>
	</div>
</div>

