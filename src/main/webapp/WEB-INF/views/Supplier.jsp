<%@ page language="java" contentType="text/html" %>
<%@include file="Admin1.jsp" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<title>Supplier </title>
<body>
<!-- <br><br><br><br><br>
 --><!-- <br><br><br><br><br> -->

<c:if test="${flag}">
<form action="<c:url value="/updateSupplier"/>" method="post" enctype="multipart/form-data">
<table> 
	<tr>
		<td>Supplier Id</td>
		<td><input type="text" name="supId" value="${supplierData.suppId}"readonly/></td>
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supname" value="${supplierData.supName}"/></td>
	</tr>
	
	<tr>
		<td>Supplier Address</td>
		<td><input type="text" name="supaddr" value="${supplierData.supAddr}"/></td>
	</tr>
	
	<td>Supplier Image</td>
		<td><input type="file" name="simage"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="SUBMIT"/>
			</center>
		</td>
	</tr>
	
</table>
</form>

</c:if>
<c:if test="${!flag}">
<div class="container ">
<div class="row">
<div class="col-md-5">
<form action="InsertSupplier" method="post" enctype="multipart/form-data">

<table m.addAttribute("flag",flag); align="center" cellspacing="3" class="table">
 <tr bgcolor="pink">
	<legend class="text-center header">Manage Supppliers</legend>
 </tr> 
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supname"/></td>
	</tr>
	
	<tr>
		<td>Supplier Address</td>
		<td><input type="text" name="supaddr"></td>
	</tr>
	
	<td>Supplier Image</td>
		<td><input type="file" name="simage"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
			<button type="submit" class="btn btn-primary btn-lg">Save</button>
			</center>
		</td>
	</tr>
	
</table>
</form>
</div>

<div class="col-md-7">
 
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Supplier Id</th>
        <th>Supplier Name</th>
        <th>Supplier Address</th>
        <th>Supplier Image</th>
        <th>Operation</th>
 		       
        
      </tr>
    </thead>



	
	<c:forEach items="${supplierlist}" var="supplier">
	<tr>
		<td>${supplier.suppId}</td>
		<td>${supplier.supName}</td>
		<td>${supplier.supAddr}</td>
		<td><img height="80" width="80" src="/frontend/resources/images1/supplier/${supplier.suppId}.jpg"></td>
	
		<td>
			<a href="<c:url value='/deleteSupplier/${supplier.suppId}'/>">Delete</a>
			<a href="<c:url value='/editSupplier/${supplier.suppId}'/>">Edit</a>
	</tr>
	</c:forEach>
</div>

</table>
</div>
</div>
</c:if>

</body>
</html>
