<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Add/Edit Product</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
</head>
<body>
	<div class="container">
		<jsp:include page="/components/header1.jsp"></jsp:include>
		<br/>
		<br/>
		<b>Add New Product</b>
		<br/>
		<br/>		
		<%
		if (request.getParameter("error") != null) {
		%>
		<p class="alert alert-danger">
			<%
			out.print(request.getParameter("error"));
			%>
		</p>
		<%
		}
		%>
		<div class="row">
			<div class="col-3">&nbsp;</div>
			<div class="col-6">
				<form name=frmProduct method=post action="admineditproductaction">
					<input type=hidden name=id value="${product.ID }">
					<table class="table table-bordered" style="">
						<tr>
							<td width=30% align="right">Product Name*</td>
							<td align="left"><input class="form-control" name=name
								maxlength=100 value="${product.name }" required="required"></td>
						</tr>
						<tr>
							<td width=30% align="right">Price*</td>
							<td align="left"><input class="form-control" name=price
								type="numeric" maxlength=6 value="${product.price }"
								required="required"></td>
						</tr>
						<tr>
							<td width=30% align="right">Category*</td>
							<td align="left">
								<select class="form-control" name=category	required>
									<option value="">Select Category</option> ${catDropdown}
								</select>
							</td>
						</tr>

						<tr>
							<td colspan=2>
								<button class="btn btn-success" style="width: 150px">Save</button>
								<a class="btn btn-secondary" style="width: 150px" href="adminproducts">Cancel</a>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="col-3">&nbsp;</div>
		</div>

	</div>
	<jsp:include page="/components/admin-footer.jsp"></jsp:include>
</body>
</html>