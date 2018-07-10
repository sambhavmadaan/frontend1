<html>
<head>
<%@ page language="java" contentType="text/html" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<%@include file="Header.jsp" %>
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

    <div class="row" align="center">
        <!-- <div class="col-md-3">
 --> -->        <!-- </div> -->
        <div class="col-md-6">
            <div class="well well-sm">
                <form class="form-horizontal" method="post">
                    <fieldset>
                        <legend class="text-center header">Sign In</legend>
                       
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="email" name="email" type="text" placeholder="Email Address" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="password" name="password" type="text" placeholder="Password" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary btn-lg">Sign In</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
        <div class="col-md-3">
        </div>
       
        </div>
        </div>
        
  
        <br><br><br><br>
</body>
</html>
