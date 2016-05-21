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
            <a href="index" class="navbar-brand">Music Hub</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index">Home</a></li>
                <li><a href="AboutUs">About Us</a></li>
                <li><a href="contactUs">Contact Us</a></li>
                <li><a href="product">All Product</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
      
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       
    </ul>
        </div>

    </nav>

<h3>SignUp</h3>
<p class="required small">* = Required fields</p>
<!--begin HTML Form-->
<form class="form-horizontal" role="form" method="post" action=" ">

<div class="form-group">
<label for="name" class="col-md-4  control-label"><span class="required">*</span> Name:</label>
<div class="col-md-4 ">
<input type="text" class="form-control" id="name" name="name" placeholder="First & Last">
</div>
</div>

<div class="form-group">
<label for="email" class="col-md-4  control-label"><span class="required">*</span> Email: </label>
<div class="col-md-4 ">
<input type="email" class="form-control" id="email" name="email" placeholder="you@domain.com">
</div>
</div>

<div class="form-group">
<label for="phone" class="col-md-4  control-label">Phone: </label>
<div class="col-md-4 ">
<input type="tel" class="form-control" id="phone" name="phone" placeholder="(123) 456-7890">
</div>
</div>

<div class="form-group">
<label for="message" class="col-md-4 control-label"><span class="required">*</span> Message:</label>
<div class="col-md-4 ">
<textarea class="form-control" row="4" name="message" placeholder="Tell us your story?"></textarea>
</div>
</div>



<div class="form-group">
<div class="col-md-4  col-sm-offset-4">
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