<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <title>Example - example-example98-production</title>
  

  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
  
<style>
h1 {
    border-bottom: 3px solid #cc9900;
    color: #996600;
    font-size: 30px;
}
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
  
</head>
<body data-ng-app="">

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
                <li class="active"><a href="index">Home</a></li>
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


<div class="table responsive" style="">
<div class ="table">
  <div data-ng-init="friends =[
                  {productId : 'P001',groupName :'Plucked strings',Name : 'Sitar',Price : 3000, Quantity: 4,Desc : 'This is a Plucked strings instrument',image: 'resources/images/images1.jpg'},
                  {productId : 'P002',groupName :'Bowed strings',Name : 'Sarinda',Price : 2000, Quantity: 5,Desc : 'This is a Bowed strings instrument',image: 'resources/images/images.jpg'},
                  {productId : 'P003',groupName :'Plucked strings',Name : 'Ektara',Price : 1000, Quantity: 8,Desc : 'This is a Plucked strings instrument',image: 'resources/images/images3.jpg'},
                   {productId : 'P004',groupName :'Wind Instruments',Name : 'Harmoneon',Price : 1000, Quantity: 8,Desc : 'This is a Wind Instruments',image: 'resources/images/images.jpg'},
                   {productId : 'P005',groupName :'Electrophones',Name : 'Keytar',Price : 1000, Quantity: 8,Desc : 'This is an Electrophones instrument',image: 'resources/images/images1.jpg'},
                   {productId : 'P006',groupName :'Wind Instruments',Name : 'Flute',Price : 1000, Quantity: 8,Desc : 'This is a Wind instrument',image: 'resources/images/images3.jpg'},
                  {productId : 'P007',groupName :'Bowed strings',Name : 'Tar Shehnai',Price : 500, Quantity: 10,Desc : 'This is a Bowed strings instrument',image: 'resources/images/images.jpg'}
                	
                ]"></div>

<label>Search: <input ng-model="searchText" ng-init="searchText='${param.item}'"></label>
<table id="searchTextResults">
  <tr><th>Product ID</th><th>Group Name</th><th>Product Name</th><th>Product Price</th><th>Quantity</th><th>Description</th><th>Image</th></tr>
  <tr data-ng-repeat="search in friends | filter:searchText">
    <td>{{search.productId}}</td>
    <td>{{search.groupName}}</td>
    <td>{{search.Name}}</td>
    <td>{{search.Price}}</td>
    <td>{{search.Quantity}}</td>
    <td>{{search.Desc}}</td>
 <td ><img data-ng-src="{{search.image}}" height="60" width="100" ></td>
  </tr>
</table>
</div>
</div>

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
