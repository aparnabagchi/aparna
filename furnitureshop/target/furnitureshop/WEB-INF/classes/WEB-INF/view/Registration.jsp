<%@include file="/WEB-INF/view/template/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>


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
    

<section>
	
	 
	  <div align="center">
        <form:form action="${pageContext.request.contextPath }/admin/Registration" method="post" commandName="product"
        enctype="multipart/form-data">
           <table >
        <thead>
                <tr>
                    <th  align="center"><h2>Product Registration</h2></th>
                </tr>
                </thead>
                <tbody>
                <tr >
                    <td>Group Name:</td>
                    <td><form:input path="groupName" /></td>
                </tr>
                <tr >
                    <td>Product Name:</td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr >
                    <td>Description:</td>
                    <td><form:input path="description" /></td>
                </tr >
                <tr >
                    <td>Product Quantity:</td>
                    <td><form:input path="quantity" /></td>
                </tr>
                <tr >
                    <td>Product Price:</td>
                    <td><form:input path="price" /></td>
                </tr>
                <tr >
                    <td>Product Image:</td>
                  <td><form:input type="file" path="image" /></td>
                </tr>
                <tr>
                <br>
                    <td style="padding":4px;">
                    <!--  <input type="submit" name="action" value="Add" onclick="location.href='/product'">-->
                   <!-- <input type="submit" name="action" value="Update"></td> -->
                    <!-- <td><input type="submit" name="action" value="Delete"> -->
                    <input type="submit" value="Add"></td> 
                </tr>
                <tbody>
            </table>
        </form:form>
        
    </div>
	</section>
<!--end Form--></form>
<!--end col block--></div>

<!--end col--></div>
<!--end row--></div>
<!--end container--></div>
<%@ include file="/WEB-INF/view/template/footer.jsp" %>