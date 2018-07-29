<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

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





<div class="container">
<table class="table">
 <c:if test="${empty cartItems}">
<tr><td colspan="6" ><center>Your Cart is Empty.</center>
</td></tr></c:if>
 
 <c:if test="${not empty cartItems}">
<tr><legend class="text-center header">Your Order</legend></tr>
 
<c:forEach items="${cartItems}" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">

<tr>
<td>
	<img height="80" width="80" src="/frontend/resources/images1/product/${cartItem.prodId}.jpg"></td>
	<td>${cartItem.prodName}</td>
	<td><input type="text" value="${cartItem.quantity}" name="quantity"></td>
	<td>X</td>
	<td>${cartItem.price}</td>
	<%-- <td class="hidden">${cartItem.quantity*cartItem.price}</td> --%>

	<td>
	<input type="submit" class="btn btn-primary btn-lg" value="Update" />
	<a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class='btn btn-danger'>Delete</a>
    
	
</td>
</tr>
</form>
</c:forEach>

<tr>
	<td colspan="4">Total Purchase Amount</td>
	<td>${totalPurchaseAmount}</td>
	</tr>
	<tr>
	<td colspan="3"><a href="<c:url value="/continueShopping"/>" class=btn-btn-info>Continue Shopping</a></td>
	<td colspan="3"><a href="<c:url value="/checkout"/>" class=btn-btn-info>Proceed To Checkout</a></td>
		</tr>
		</c:if>
</table>
</div>
