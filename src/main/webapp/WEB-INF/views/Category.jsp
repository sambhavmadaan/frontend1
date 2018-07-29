<head>
<%@include file="Admin1.jsp" %>
<%@ page language="java" contentType="text/html" %>
<%-- <%@include file="Header.jsp" %> --%>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>




</head>
<title>Category </title>
<body>
<c:if test="${flag}">

<form action="<c:url value="/updateCategory"/>" method="post" enctype="multipart/form-data">
 <table>
	<tr>
		<td>Category Id</td>
		<td><input type="text" name="catId" value="${categoryData.categoryId}"readonly/></td>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catname" value="${categoryData.categoryName}"/></td>
	</tr>
	
	<tr>
		<td>Category Decription</td>
		<td><input type="text" name="catDesc" value="${categoryData.categoryDesc}"/></td>
	</tr>
	<td>Category Image</td>
		<td><input type="file" name="cimage"/></td>
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
</c:if>
<c:if test="${!flag}">
<div class="container ">
<div class="row">
<div class="col-md-5">

<form action="InsertCatgory" method="post" enctype="multipart/form-data">


<table m.addAttribute("flag",flag); align="center" cellspacing="3" class="table">
 	<legend class="text-center header">Manage Categories</legend>
 </tr> 
 
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catname"/></td>
	</tr>
	
	<tr>
		<td>Category Decription</td>
		<td><input type="text" name="catDesc"></td>
	</tr>
	<td>Category Image</td>
		<td><input type="file" name="cimage"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
<button type="submit" class="btn btn-primary btn-lg">Save</button>			</center>
		</td>
	</tr>
	
</table>
</form>
</div>

 <div class="col-md-7 col-md-7-vl">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Category Id</th>
        <th>Category Name</th>
        <th>Category Desc</th>
        <th>Category Image</th>
        <th>Operation</th>
      </tr>
    </thead>


	
	<c:forEach items="${categorylist}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td><img height="80" width="80" src="/frontend/resources/images1/category/${category.categoryId}.jpg"></td>
		
		<td>
			<a href="<c:url value='/deleteCategory/${category.categoryId}'/>">Delete</a>
			<a href="<c:url value='/editCategory/${category.categoryId}'/>">Edit</a>
	</tr>
	</c:forEach>

</table>
</div>
</div>
</div>

</c:if>


</body>
</html>
</html>