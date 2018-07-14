<%-- <%@include file="/WEB-INF/views/Footer.jsp" %> --%>
<head>
<%@ page language="java" contentType="text/html"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

 <%-- <%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>  --%>
<%@include file="/WEB-INF/views/Footer.jsp" %>

	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<style type="text/css">

/* body  {
   background: url("resources/images1/indexback.jpg");
   background-size: cover;
   padding: 0;
   margin: 0;
}  
 */

.starter-template {
  padding: 3rem 1.5rem;
  text-align: center;
}

body > .container {
  padding: 60px 15px 0;
}

.footer > .container {
  padding-right: 15px;
  padding-left: 15px;
}

code {
  font-size: 80%;
}


</style>
 </head>

  <body>
   <nav class="navbar navbar-light" style="background-color: #ff0000;">
   </nav>
    <nav class="navbar navbar-expand-md ">
      <a class="navbar-brand" href="<c:url value='/home'/>"><u>theWatchStore</u><font color="red">.</font></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="<c:url value='/home'/>">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/aboutus'/>">AboutUs </a>
          </li>
          
          
          <c:if test="${pageContext.request.userPrincipal.name==null }">
          
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/login1'/>">Login </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/register'/>">Register</a>
          </li>
          
          </c:if>
          
         
          <%--  <c:if test="${role=='Admin'}"> --%>
           <li class="nav-item">
            <a class="nav-link" href="<c:url value='/admin'/>">Admin</a>
          </li>
         <%-- </c:if> --%>
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/contactus'/>">Contact Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/displayProduct'/>">Display Product</a>
          </li>
          
           <c:if test="${pageContext.request.userPrincipal.name!=null }">
      	<li class="nav-item">
            <a class="nav-link" href="<c:url value='/logout'/>">Logout</a>
          </li>
      </c:if>
      
      <c:if test="${pageContext.request.userPrincipal.name!=null }">
           <li class="nav-item">
            <a class="nav-link">WELCOME:${pageContext.request.userPrincipal.name}</a>
          </li>
          </c:if>
          <!-- <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="https://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li> -->
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>
	    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
	
	
	
	      
</body>
</html>
      
