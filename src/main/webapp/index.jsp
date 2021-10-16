<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
</head>
<style>
.box {
	height: 200px;
	width: 200px;
	background-image: url("images/bg11.png");
}

.contain {
	padding: 0px 10%
}

.card:hover{
    box-shadow: 8px 8px 5px green;    
    transform: scale(1.1);

}
</style>
<body>
	<div class="container">
		<jsp:include page="/components/header1.jsp"></jsp:include>
		<jsp:include page="/components/topbar.jsp"></jsp:include>
		<div class="contain">
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
			<div class="row" style="margin-top: 25px;">
				<div class="col-12">
					<div class="row">
						<c:if test="${categoryname == null}">
							<c:forEach items="${list}" var="item">
								<div class="col-3 mt-2 mb-2">
								<div class="card text-center" style="">
								  <div class="card-body">
								    <h5 class="card-title">${item.name }</h5>
								    <p class="card-text">${mapCats.get(item.ID)}</p>
								    <p class="card-text">BDT: ${item.price }</p>
								    <a class="btn btn-success" href="cartadditem?id=${item.ID}">Add
											To Cart</a>
								  </div>
								</div>
								</div>
							
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/components/footer.jsp"></jsp:include>
</body>
</html>