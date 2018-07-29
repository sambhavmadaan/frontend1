<%-- <%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>

<div class="container">

	<table class="table">
	
	<tr>
		<td colspan="2"><center><b>Receipt</b></center></td>
	</tr>
	
	<tr>
		<td colspan="2">Order Id</td>
		<td>ORD00${orderDetail.orderId}</td>
		<td colspan="2">Order Date</td>
		<td>${orderDetail.orderDate}</td>
	</tr>
	
	<tr>
		
		<td>Product Name</td>
		<td>Quantity</td>
		<td>Price</td>
		<td>Total price</td>
	</tr>
	
	<c:if test="${empty cartItems}" var="cartItem">
<tr><td colspan="5"><center>!!! Your Cart is Empty !!!</center></td></tr>
</c:if>

<c:if test="${not  empty cartItems}">
<c:forEach items="${cartItems }" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">

<tr>

<td>${cartItem.prodName }</td>
<td>${cartItem.quantity }</td>
<td>${cartItem.price }</td>
<td>${cartItem.quantity * cartItem.price }</td>
</tr>
</form>
</c:forEach>
</c:if>

<tr bgcolor="orange">
	<td colspan="3">total Purchased Amount</td>
	<td colspan="2">&#8377;${totalPurchaseAmount}</td>
</tr>
<tr bgcolor="orange">
	<td colspan="3">Offers Applied</td>
	<td colspan="2">&#8377;${totalPurchaseAmount-totalPurchasedAmount}</td>
</tr>
<tr bgcolor="orange">
	<td colspan="3">Final Price</td>
	<td colspan="2">&#8377;${totalPurchasedAmount}</td>
</tr>

<tr bgcolor="cyan">
	<td colspan="5"><center><h4>!!!!Thanks For Shopping!!!!</h4></center></td>
</tr>

</table>

 --%>
 <%@ page language="java" contentType="text/html" %>
 <%@include file="Header.jsp" %>
 
 
<!------ Include the above in your HEAD tag ---------->
<head>
<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 --><script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
</style>
</head>
<div class="container" align="center">
                    <h1>Receipt</h1>
</div>
<div class="container">
        <div class="row">
    <div class="col-md-3">
    </div>
    
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>WatchStore.com</strong>
                        <br>
                        P.O. Box 2012
                        <br>
                        Detroit, Mi 48000
                        <br>
                        <abbr title="Phone">P:</abbr> (213) 484-6829
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>${orderDetail.orderDate}</em>
                    </p>
                    <p>
                        <em>Receipt #: ORD00${orderDetail.orderId}</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                   
                        <tr>
                            <th>Product</th>
                            <th>#</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                       
                    </thead>
                    <tbody>
                    <c:forEach items="${cartItems}" var="cartItem">
                    <form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">
                        <tr>
                            <td class="col-md-9"><em>${cartItem.prodName}</em></h4></td>
                            <td class="col-md-1" style="text-align: center">${cartItem.quantity }  </td>
                            <td class="col-md-1 text-center">${cartItem.price }</td>
                            <td class="col-md-1 text-center">${cartItem.quantity * cartItem.price }</td>
                        </tr>
                        </form>
                       </c:forEach>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                            <p>
                                <strong>YouSave: </strong>
                            </p></td>
                            <td class="text-center">
                            <p>
                                <strong>&#8377;${totalPurchaseAmount}</strong>
                            </p>
                            <p>
                                <strong>&#8377;${totalPurchaseAmount-totalPurchasedAmount}</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>&#8377;${totalPurchasedAmount}</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
                <div>
                    <h1 style="text-align:center;">
                        Thank you for your order.
                    </h1>
                    
                </div>
            </div>
        </div>
    </div>
    </div>
    <br>
 <%@include file="Footer.jsp" %>
 