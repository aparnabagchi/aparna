<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <style>
.required {color:red; font-weight:bold}
.center-block {float:none}
.human {margin: 0 0 0 12px}
</style>
<title>OnlineFurniture</title>

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


<hr>

<div class="container">
<div class="row">
<div class="col-lg-8 col-lg-offset-2">
<div class="col-md-8 center-block">

<h3>Contact Us</h3>
<p class="required small">* = Required fields</p>
<!--begin HTML Form-->
<form class="form-horizontal" role="form" method="post" action=" ">

<div class="form-group">
<label for="name" class="col-sm-3 control-label"><span class="required">*</span> Name:</label>
<div class="col-sm-9">
<input type="text" class="form-control" id="name" name="name" placeholder="First & Last">
</div>
</div>

<div class="form-group">
<label for="email" class="col-sm-3 control-label"><span class="required">*</span> Email: </label>
<div class="col-sm-9">
<input type="email" class="form-control" id="email" name="email" placeholder="you@domain.com">
</div>
</div>

<div class="form-group">
<label for="phone" class="col-sm-3 control-label">Phone: </label>
<div class="col-sm-9">
<input type="tel" class="form-control" id="phone" name="phone" placeholder="(123) 456-7890">
</div>
</div>

<div class="form-group">
<label for="message" class="col-sm-3 control-label"><span class="required">*</span> Message:</label>
<div class="col-sm-9">
<textarea class="form-control" row="4" name="message" placeholder="Tell us your story?"></textarea>
</div>
</div>



<div class="form-group">
<div class="col-sm-offset-3 col-sm-6 col-sm-offset-3">
<button type="submit" id="submit" name="submit" class="btn-lg btn-primary btn-block">SUBMIT</button>
</div>
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