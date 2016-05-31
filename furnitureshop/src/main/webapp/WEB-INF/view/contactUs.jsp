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
<%@ include file="/WEB-INF/view/template/footer.jsp" %>