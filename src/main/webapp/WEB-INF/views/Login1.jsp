 <html>
<head>
<%@ page language="java" contentType="text/html" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<%@include file="Header.jsp" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<style type="text/css">
/* body  {
   background: url("resources/images1/background4.jpg");
   background-size: cover;
   padding: 0;
   margin: 0;
} 
 */
.header {
		/* background: url("resources/images1/background3.jpg");
   background-size: cover;
   padding: 0;
   margin: 0; */
        background-color: #F5F5F5;
        color: #36A0FF;
        height: 70px;
        font-size: 27px;
        padding: 10px;
    }
</style>


</head>



<body>

<div class="container ">

    <div class="row" align="center">
        <!-- <div class="col-md-3">
 -->        <!-- </div> -->
        <div class="col-md-6">
        </div>
        <div class="col-md-6">
            <div class="well well-sm">
                <!-- <form class="form-horizontal" method="post"> -->
                    <fieldset>
                        <legend class="text-center header">Sign In</legend>
                       <form id="LoginForm" action="processing" method="post" class="form-horizontal" role="form">
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="username" name="username" type="text" placeholder="username" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="password" name="password" type="text" placeholder="Password" class="form-control">
                            </div>
                        </div>

                        <!-- <div class="form-group"> -->
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary btn-lg">Sign In</button>
                                <input type="button" class="btn btn-lg btn-add-to-cart" class="btn btn-info" value="Forgot password?!" onclick="location.href = 'totalProductInfo/${product.prodId}';">
                            </div>
                           
                    </form>
                    </fieldset>
                    
                <!-- </form> -->
            </div>
            <hr>
            <h8>New to WatchStore.?</h8><br>
            <input type="button" class="btn btn-primary btn-lg" class="btn btn-info" value="Click here to Register" onclick="location.href = '/frontend/register';">
        </div>
        <div class="col-md-3">
        </div>
       
        </div>
        </div>
        
  
        <br><br><br><br>
</body>
</html>
 
<%--  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
</head>
<body onload='document.loginForm.username.focus();'>

	<h1>Spring Security Login Form (Database Authentication)</h1>

	<div id="login-box">

		<h2>Login with Username and Password</h2>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm'
		  action="<c:url value='/j_spring_security_check' />" method='POST'>

		<table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='username'></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
				  value="submit" /></td>
			</tr>
		  </table>

		  <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

		</form>
	</div>

</body>
</html>
 
 
 
  --%>