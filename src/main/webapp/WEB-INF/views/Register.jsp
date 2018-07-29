<html>
<head>
<%@ page language="java" contentType="text/html" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<%@include file="Header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<style type="text/css">
body  {
   background: url("resources/images1/background.jpg");
   background-size: cover;
   padding: 0;
   margin: 0;
} 
 
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
<div class="container">
<ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="/frontend/home">Home</a>
        </li>
        <li class="breadcrumb-item">
          <a href="/frontend/login1">Sign In</a>
        </li>
        
        <li class="breadcrumb-item active">Sign Up</li>
      </ol>
</div>

<div class="container ">
<div class="row">
  <div class="col-md-6">
  </div>
  <div class="col-md-6">
 <form:form action="/frontend/Register" modelAttribute="userDetail" method="post">                    <fieldset>
  <legend class="text-center header">Sign In</legend>
 <table>
 			<tr>User Name<form:input path="userName" type="text" placeholder="User Name" class="form-control"></form:input></tr>
                           <!-- <input id="uname" name="name" type="text" placeholder="User Name" class="form-control"> -->
                            
                          <!--   </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
 -->            
  <tr>Customer Name
 <form:input path="customerName" type="text" placeholder="Customer Name" class="form-control"></form:input></tr>
                                <!-- <input id="cname" name="name" type="text" placeholder="Customer Name" class="form-control"> -->
    <!--                         </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
 -->            
 <tr>address</tr>
 <form:input path="address" type="text" placeholder="Address" class="form-control"></form:input>
                                <!-- <input id="addr" name="name" type="text" placeholder="Address" class="form-control"> -->
    <!--                         </div>
                        </div>
                        

                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
 -->             
 <tr>email</tr>
 <form:input path="email" type="text" placeholder="Email Address" class="form-control"></form:input>
<tr>phone</tr>
<form:input path="mobile" type="text" placeholder="Phone" class="form-control"></form:input>


                                <!-- <input id="email" name="email" type="text" placeholder="Email Address" class="form-control"> -->
    <!--                         </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
 -->                                <%-- <form:input path="mobile"/> --%>

    <!--                         </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
 -->          
 <tr>password</tr>
 <form:input path="password" name="password" type="text" placeholder="Password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
                           <!--  </div>
                        </div> -->
						<!-- <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="password" name="password" type="text" placeholder="Confirm Password" class="form-control">
                            </div>
                        </div>
						 -->
    <!--                     <div class="form-group">
                            <div class="col-md-12 text-center">
     -->
     
     <tr>
  			   Security Queston</tr>
             <form:input path="Security_q" type="text" placeholder="Enter the Security ques" class="form-control"/>
           
            <tr>
            	Security Answer</tr>
            	<form:input path="Security_a" type="text" placeholder="Enter the Security answer" class="form-control"/>
           
                       <br>
              <button type="submit" class="btn btn-primary btn-lg">Submit</button>
          
    </table>
        </form:form>
       </div>
        </div>
       </div>
      
        
  
        <br><br><br><br>
         <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; theWatchStore 2019</p>
      </div>
      <!-- /.container -->
    </footer>
</body>
</html>
