<html>
<head>
<%@ page language="java" contentType="text/html" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<%@include file="Header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<style type="text/css">
body  {
   background: url("resources/images1/background4.jpg");
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
<br>


<div class="container ">

<!--     <div class="row" align="center">
 -->        <!-- <div class="col-md-3">
 --> -->        <!-- </div> -->
      <!--   <div class="col-md-6">
            <div class="well well-sm">
 -->
 <form:form action="/frontend/Register" modelAttribute="userDetail" method="post">                    <fieldset>
  <!-- <legend class="text-center header">Create Account</legend> -->
<!--                         <div class="form-group">
 -->
<!--                             <div class="col-md-10 col-md-offset-1">
 -->
 <table>
 			<tr>
 			<td>User Name</td>
             <form:input path="userName" type="text" placeholder="User Name"></form:input>
                           <!-- <input id="uname" name="name" type="text" placeholder="User Name" class="form-control"> -->
                            
                          <!--   </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
 -->            
  <td>Customer Name</td>
 <form:input path="customerName" type="text" placeholder="Customer Name" class="form-control"></form:input>
                                <!-- <input id="cname" name="name" type="text" placeholder="Customer Name" class="form-control"> -->
    <!--                         </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
 -->            
 <td>address</td>
 <form:input path="address" type="text" placeholder="Address" class="form-control"></form:input>
                                <!-- <input id="addr" name="name" type="text" placeholder="Address" class="form-control"> -->
    <!--                         </div>
                        </div>
                        

                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
 -->             
 <td>email</td>
 <form:input path="email" type="text" placeholder="Email Address" class="form-control"></form:input>
<td>phone</td>
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
 <td>password</td>
 <form:input path="password" name="password" type="text" placeholder="Password" class="form-control"></form:input>
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
  			   <td>Security Queston</td>
             <td><form:input path="Security_q" type="text" placeholder="Enter the Security ques"/></td>
            </tr>
            <tr>
            	<td>Security Answer</td>
            	<td><form:input path="Security_a" type="text" placeholder="Enter the Security answer"/></td>
            </tr>
                       
              <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                       <!--      </div>
                        </div>
                    </fieldset>
                
            </div>
        </div>
        <div class="col-md-3">
        </div>
       -->
 --%>        </table>
        </form:form>
        </div>
       
        
  
        <br><br><br><br>
</body>
</html>
