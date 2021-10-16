<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Setup Products</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="container">
<jsp:include page="/components/header1.jsp" ></jsp:include>
<br>
<br>
<div class="row">
 <div class="col12">
 	<a style="margin-right: 6px; font-weight: bold;"
			class="btn btn-outline-success my-2 my-sm-0 buttonstylehome"
			type="submit" href="<%=request.getContextPath()%>/admindashboard">Dashboard</a>
 </div>
</div>		
<br>
<div class="row">
 <div class="col-6" style="text-align: left;">
 	<a class="btn btn-primary" style="text-align:center; font-weight: 700;" href="admineditproduct?id=0">Add Product</a>
 </div>
 <div class="col-6" style="text-align: right;">
 	Total Products: <b>${list.size()}</b>
 </div>
</div>
<table class="table table-bordered" style="margin-top: 5px;">
 	<tr>
 		<th width="5%">#</th>
 		<th width="45%">Product</th>
 		<th width="20%">Category</th>
 		<th width="15%">Price</th>
 		<th width="15%">Action</th>
 	</tr>
 	<c:forEach items="${list}" var="item" varStatus="varSt">
 	  	<tr>
	 		<td>${varSt.count }</td>
	 		<td align="left">${item.name }</td> 			
 			<td align="left">${mapCats.get(item.ID)}</td>
 			<td align="right">${item.price }</td>
 	  		<td>
 	  			<a class="btn btn-sm btn-info" href="admineditproduct?id=${item.ID}">Edit</a> &nbsp; <a class="btn btn-sm btn-danger" href="admindeleteproduct?id=${item.ID}">Delete</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
</table> 	
</div>
<jsp:include page="/components/admin-footer.jsp"></jsp:include>
</body>
</html>