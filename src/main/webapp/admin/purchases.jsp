<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Purchases Report</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
</head>
<body>
	<div class="container">
		<jsp:include page="/components/header1.jsp"></jsp:include>

		<br> <br>
		<div class="row">
			<div class="col12">
				<a style="margin-right: 6px; font-weight: bold;"
					class="btn btn-outline-success my-2 my-sm-0 buttonstylehome"
					type="submit" href="<%=request.getContextPath()%>/admindashboard">Dashboard</a>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-6" style="text-align: left;">&nbsp;</div>
			<div class="col-6" style="text-align: right;">
				Total: <b>${list.size()}</b> &nbsp; <b>Orders: ${totalAmount }</b>
			</div>
		</div>

		<table class="table table-bordered">
			<tr>
				<th>#</th>
				<th>Order ID</th>
				<th>User</th>
				<th>Date</th>
				<th>Total</th>
				<th>Items</th>
			</tr>
			<c:forEach items="${list}" var="item" varStatus="varSt">
				<tr>
					<td>${varSt.count }</td>
					<td>${item.ID }</td>
					<td>${mapUsers.get(item.ID)}</td>
					<td>${item.date }</td>
					<td>${item.total}</td>
					<td>${mapItems.get(item.ID)}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<jsp:include page="/components/admin-footer.jsp"></jsp:include>
</body>
</html>