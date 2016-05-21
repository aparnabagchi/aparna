<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Music Hub</title>
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

<script type="text/javascript">

	var myApp = angular.module("myApp",[]);

	myApp.controller("myCtrl",function($scope){
		
		//$scope.data = data;
		$scope.data = ${dataValue};
		//$scope.searchKeyword = ${searchKey};
	});
	
	
</script>

<body ng-app='myApp'>

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
            <a href="#" class="navbar-brand">Music Hub</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/musichub">Home</a></li>
                <li><a href="AboutUs">About Us</a></li>
                <li><a href="contactUs">Contact Us</a></li>
                <li><a href="product">All Product</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
      <li><a href="signUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       
    </ul>
        </div>

    </nav>


	<br>
	<br>

					
					
					<div class="container">
					
					
					<input type="text" id="search" value="" placeholder="Enter Search Keyword..." class="form-control" data-ng-model="searchKeyword" ng-init="searchKeyword ='${param.item}'" />
					
					</div>
					
					
					<br><br>
					
					<!--  -->
					
<br><br>
					
					<!--  -->
	                <div class="container">
					<div class="row">
					<div class="col-lg-9 col-centered">
					<!--  -->
					
					
					
					<div class="" >
				
								<div style=" width: 100%; font-style: italic; font-weight: bold; font-size: 1.2vw; font-family: Segoe UI, Tahoma, sans-serif;" ng-controller='myCtrl' class="table-responsive">
				
									<div class="rTableHeading">
									
										<div class="col-xs-2">Product Id</div>
										<div class="col-xs-2">Group Name</div>
										<div class="col-xs-2">Name</div>
										<div class="col-xs-1">Price</div>
										<div class="col-xs-1">Qty</div>
										<div class="col-xs-2">Description</div>
										<div class="col-xs-2">Image</div>
									
									</div>
				
								
									<div ng-repeat="x in data | filter: searchKeyword" class="rTableRow" >
									
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2">{{ x.Product_Id}}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2">{{ x.Group_Name}}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2">{{ x.Name }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-1">{{ x.Price }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-1">{{ x.Qty }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2">{{ x.Description }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2"><img ng-src="{{ x.Image }}" width="120" height="60" class="img-circle img-responsive"></img></div>
										
										<div style="width: 100%; height: 1px; background-color: #CCCCCC;"></div>
										
									</div>
					
								</div>
				
							
				
						</div>
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

