<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Browse Members</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
</head>
<body>
	<div class="container">
			<jsp:include page="/components/header1.jsp"></jsp:include>
<%-- 			<jsp:include page="/components/admin-header.jsp"></jsp:include> --%>
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
			 	&nbsp;
			 </div>
			 <div class="col-6" style="text-align: right;">
			 	Total Members: <b>${list.size()}</b>
			 </div>
			</div>

				<table border=1 class="table table-bordered">
					<tr>
						<th width="5%">#</th>
						<th width="35%">Name</th>
						<th width="15%">Email</th>
						<th width="10%">Age</th>
						<th width="35%">Address</th>
					</tr>
					<c:forEach items="${list}" var="item" varStatus="varSt">
						<tr>
							<td>${varSt.count }</td>
							<td align="left">${item.fname}&nbsp;${item.lname }</td>
							<td align="left">${item.email}</td>
							<td align="right">${item.age}</td>
							<td align="left">${item.address}</td>
						</tr>
					</c:forEach>
				</table>
			</div>


			<jsp:include page="/components/admin-footer.jsp"></jsp:include>
		</body>
</html>