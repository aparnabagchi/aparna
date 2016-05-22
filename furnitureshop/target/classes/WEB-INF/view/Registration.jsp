<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
  
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
            <a href="index" class="navbar-brand">OnlineFurniture</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/furnitureshop">Home</a></li>
                <li><a href="AboutUs">About Us</a></li>
                <li><a href="contactUs">Contact Us</a></li>
                <li><a href="product">All Product</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
      <li><a href="signUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      
       
    </ul>
        </div>

    </nav>
<section>
	 <div align="center">
        <form:form action="Registration.do" method="get" commandName="Registration">
            <table border="1">
                <tr>
                    <td colspan="2" align="center"><h2>Product Registration</h2></td>
                </tr>
                <tr>
                    <td>Product Id:</td>
                    <td><form:input path="productId" /></td>
                </tr>
                <tr>
                    <td>Group Name:</td>
                    <td><form:input path="groupName" /></td>
                </tr>
                <tr>
                    <td>Product Name:</td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><form:input path="description" /></td>
                </tr>
                <tr>
                    <td>Product Quantity:</td>
                    <td><form:input path="quantity" /></td>
                </tr>
                <tr>
                    <td>Product Price:</td>
                    <td><form:input path="price" /></td>
                </tr>
                <tr>
                    <td>Product Image:</td>
                    <td><form:input path="imagePath" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="action" value="Add"></td>
                    <td colspan="2"><input type="submit" name="action" value="Edit"></td>
                    <td colspan="2"><input type="submit" name="action" value="Delete"></td>
                    <td colspan="2"><input type="submit" name="action" value="Search"></td>
                </tr>
            </table>
        </form:form>
        
    </div>
	</section>
<!--end Form--></form>
<!--end col block--></div>

<!--end col--></div>
<!--end row--></div>
<!--end container--></div>
<!--Latest jQuery Core Library-->
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

<!--end Form--></form>
<!--end col block--></div>

<!--end col--></div>
<!--end row--></div>
<!--end container--></div>
<!--Latest jQuery Core Library-->
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