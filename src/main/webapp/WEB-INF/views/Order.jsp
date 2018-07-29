	<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<head>
<style type="text/css">
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

<div class="container">
<table class="table">
<tr><legend class="text-center header">Your Order</legend>
<tr>
<td> Product Name</td>
<td> Quantity</td>
<td> Price</td>
<td> Total Price</td>

</tr>

<%-- <c:if test="${empty cartItems}" var="cartItem">
<tr><td colspan="6"><center>!!! Your Cart is Empty !!!</center></td></tr>
</c:if> --%>


<c:forEach items="${cartItems }" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">
<tr>
<td>${cartItem.prodName }</td>
<td>${cartItem.quantity }</td>
<td>${cartItem.price }</td>
<td>${cartItem.quantity * cartItem.price }</td>
<td>

</td>
</tr>

</form>
</c:forEach>
<tr bgcolor="orange">
<td colspan="3">Total Purchase Amount </td>
<td>${totalPurchaseAmount }</td>
<td></td>
</tr>

<tr bgcolor="lightBlue">
<td colspan="3"><a href="<c:url value="/continueShopping"/>" class="btn btn-info">Continue Shopping</a></td>
<td colspan="3"><a href="<c:url value="/payment"/>" class="btn btn-info">Payment</a></td>
</tr>

</table>
</div>
