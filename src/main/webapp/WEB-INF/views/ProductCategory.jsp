<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@include file="carousal.jsp"%>

<body>
<div class="container">
 
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Category</th>
    <th>Product Image</th>
        <th>Quantity</th>
    
    <th></th>    
      </tr>
    </thead>
	
	<c:forEach items="${listproductbycategory}" var="product">
	
	<tr>
		<td>${product.prodId}</td>
		<td>${product.prodName}</td>
		<td>${product.prodDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		
		<td><img height="80" width="80" src="/frontend/resources/images1/product/${product.prodId}.jpg"></td>
	<form action="<c:url value="/addToCart/${product.prodId}"/>" method="get">
	<td>
		<select name="quantity" class="form-control btn-block">
		<option value="1">1</option>
		<option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option>
		</select>
	</td>
	
		<td><input type="submit" value="AddToCart" class="btn btn-info btn-block"/></td>
</form>
</tr>
</c:forEach>
</table>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="Footer.jsp"%>

</body>
