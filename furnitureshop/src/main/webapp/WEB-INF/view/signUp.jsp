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
    

 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
	<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
  <div align="center">
        <form:form action="adduser" method="post" commandName="instuser">
           <div class="container">
					<div class="row">
					    <div class="col-lg-12 col-centered">
					    	<div class="table-responsive">
							  <table style="width: 80%;" class="table center">
                <tr>
                    <td colspan="2" align="center"><h2>Sign Up</h2></td>
                </tr>
                <tr>
                    <td>User Name:</td>
                    <td><form:input path="username" /></td>
                     <td align="left"><form:errors path="username" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><form:password path="password" /></td>
                     <td align="left"><form:errors path="password" cssClass="error"/></td> 
                </tr>
       
                <tr>
                    <td>Address:</td>
                    <td><form:input path="address" /></td>
                      <td align="left"><form:errors path="address" cssClass="error"/></td>
                </tr>
          <tr> <td colspan="2" >
							  		<div class="row">
									    <div class="col-md-2 col-md-offset-5"> <input value="Submit" type="submit" class="btn btn-default"></button> </div>
									</div>
							  		</td>
							  	
							  	</tr>
							  </table>
							</div>
					    </div>
					</div>
					</div>
        </form:form>
        </div>
<%@ include file="/WEB-INF/view/template/footer.jsp" %>