<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<title>OnlineFurniture</title>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.prettyPhoto.js"></script>
    <script src="resources/js/jquery.isotope.min.js"></script>
    <script src="resources/js/main.js"></script>
    <script src="resources/js/wow.min.js"></script>

<nav class="navbar navbar-inverse">

   
    
    <script>
function formSubmit() {
document.getElementById("logoutForm").submit();
}
</script>
<s:url value="/perform_logout" var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>





    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle Navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
    </div>
    <div class="collapse navbar-collapse navbar" id="myNavbar">
    <ul class="nav navbar-nav">
      <li class="active"><a href="${pageContext.request.contextPath }/">Home</a></li>
      <li><a href="${pageContext.request.contextPath }/AboutUs">About Us</a></li>
      <li><a href="${pageContext.request.contextPath }/contactUs">Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath }/product">All products</a></li>
      </ul>

		<s:if test="${pageContext.request.userPrincipal.name != null}">
                   
      <ul class="nav navbar-nav navbar-right">
                        <li style="color: gray;">Welcome ${pageContext.request.userPrincipal.name} </li>
                        <li><a href="javascript:formSubmit()"> Logout</a></li> </ul>
                        <security:authentication var="user"
                            property="principal.authorities" />
                        <security:authorize var="loggedIn" access="isAuthenticated()">
                            <security:authorize access="hasRole('ROLE_ADMIN')">
                            </security:authorize>
                            <security:authorize access="hasRole('ROLE_USER')">
                            </security:authorize>
                        </security:authorize>
                </s:if>
 <ul class="nav navbar-nav navbar-right">
                <s:if
                    test="${pageContext.request.userPrincipal.name == null}">
            <li> <a href="${pageContext.request.contextPath }/Login">Login</a> </li>
            <li><a href="${pageContext.request.contextPath }/signUp">Sign Up</a></li></s:if> 
         <s:if test="${pageContext.request.userPrincipal.name == 'aparna'}">    <li><a href="${pageContext.request.contextPath }/Registration">Add New Product</a></li></s:if>
        </ul>
    </div>


</nav>
  

