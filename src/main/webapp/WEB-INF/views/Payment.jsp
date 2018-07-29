<%-- <%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>

<div class="container">


			<form action="/frontend/applyoffer" method="post">
			<input name="couponcode" type="text">
			<input type="text" name="totalamount" value="${totalPurchasedAmount}" hidden>
			<input type="submit" value="Apply Offer"/>
			</form>
		
<form action="<c:url value="/paymentProcess"/>" method="post">
	<table class="table">
	
	<tr>
		<td colspan="2"><center><b>Payment options</b></center></td>
	</tr>
	<tr bgcolor="orange">
<td colspan="4">Total Purchase Amount </td>
<td>&#8377;${totalPurchasedAmount}</td>
</tr>

	
	<tr>
		<td >
			<input type="radio" name="paymenttype" value="CC"/>Credit CArd</td>
			<td  colspan="2"><input type="radio" name="paymenttype" value="COD"/>Cash On Delivery</td>
			
		
		</tr>
	
	<tr>
		<td>Cart no:</td>
		<td><input type="text" name="cardno" required></td>
	</tr>
	<tr>
		<td>CVV</td>
		<td><input type="text" name="cvv" required></td>
	</tr>
	<tr>
		<td>Valid Upto</td>
		<td><input type="text" name="validupto" required></td>
	</tr>
	<tr>
		
		<td><input type="text" name="totalPurchasedAmount" value="${totalPurchasedAmount}" hidden></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<input type="submit" value="Payment"/>
		</td>
	</tr>
</div>
	</table>
	</form>
	</div>
	
 --%>
 
<!doctype html>
<%@ page language="java" contentType="text/html" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@include file="Header.jsp" %>
  <head>
    
   
    <link rel="icon" href="../../../../favicon.ico">
    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
    <style>
    .container {
  max-width: 960px;
}

.border-top { border-top: 1px solid #e5e5e5; }
.border-bottom { border-bottom: 1px solid #e5e5e5; }
.border-top-gray { border-top-color: #adb5bd; }

.box-shadow { box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05); }

.lh-condensed { line-height: 1.25; }
    
    </style>
  </head>

  <body>

    <div class="container">
    	<center><h2>Secure Pay</h2></center>
    
      <div class="py-5 text-center">
      </div>
	
      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <form class="card p-2" action="/frontend/applyoffer" method="post">              
            <div class="input-group">
              <input type="text" name="couponcode" class="form-control" placeholder="Promo code">
              <input type="text" name="totalamount" value="${totalPurchasedAmount}" hidden>
              <div class="input-group-append">
                <button type="submit" class="btn btn-secondary" value="Apply Offer">Redeem</button>
              </div>
            </div>
          </form>
<form action="<c:url value="/paymentProcess"/>" method="post">
          
          
          <ul class="list-group mb-3">
           <c:forEach items="${coupon}" var="coupon">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">${coupon.couponName }</h6>
                <%--  <small class="text-muted">Quantity:${cartItem.quantity}</small> --%>
              </div>
              <span class="text-muted">${coupon.couponValue }</span> 
            </li>
            </c:forEach>
              
            <li class="list-group-item d-flex justify-content-between">
              <span>Total (INR)</span>
              <strong>${totalPurchasedAmount}</strong>
            </li>
          </ul>

                  </div>
        <div class="col-md-8 order-md-1">
                     

            <h4 class="mb-3">Payment</h4>

            <div class="d-block my-3">
              <div class="custom-control custom-radio">
                <input id="credit" name="paymenttype" type="radio" class="custom-control-input" checked required>
                <label class="custom-control-label" for="credit">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCredit card</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="debit" name="paymenttype" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="debit">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspDebit card</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="paypal" name="paymenttype" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="paypal">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPaypal</label>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="cc-name">Name on card</label>
                <input type="text" class="form-control" id="cc-name" placeholder="" required>
                <small class="text-muted">Full name as displayed on card</small>
                <div class="invalid-feedback">
                  Name on card is required
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="cc-number">Credit card number</label>
                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                <div class="invalid-feedback">
                  Credit card number is required
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">Expiration</label>
                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                <div class="invalid-feedback">
                  Expiration date required
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">CVV</label>
                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                <div class="invalid-feedback">
                  Security code required
                </div>
              </div>
            </div>
            <input type="text" name="totalPurchasedAmount" value="${totalPurchasedAmount}" hidden>
            <hr class="mb-4">
            <button class="btn btn-primary btn-lg btn-block" type="submit" value="payment">Continue to checkout</button>
          </form>
        </div>
        
      </div>
</form>
      
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
    <br>
<%@include file="Footer.jsp" %>

  </body>
</html>
 
 
 