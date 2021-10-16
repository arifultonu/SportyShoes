<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SportyShoes - Login</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript">
$(document).ready(function() {
	$("#loginLink").css('display', 'none');
});
</script>
<style>
.contain {
	margin: 0px 15%;
}

.topmar {
	margin: 150px 0%;
}
</style>
</head>
<body>
	<jsp:include page="/components/header1.jsp"></jsp:include>
	<div class="container">
		<div class="row topmar">
			<div class="col-3">&nbsp;</div>
			<div class="col-6">
				<div class="contain">
					<h2 style="text-align: center">Admin Login</h2>
					<c:if test="${adminerrlogmessage !=null}">
						<p class="alert alert-warning">
							<c:out value="${adminerrlogmessage}" />
						</p>
					</c:if>
					<form action="adminloginaction" method="post" style="background: #e5e5e5; padding: 20px 20px 20px 20px">

						<div class="form-group">
							<label for="admin_id">User Name:</label> <input type="text"
								class="form-control" id="admin_id" placeholder="User Name"
								name="admin_id" required>
						</div>

						<div class="form-group">
							<label for="uname">Password:</label> <input type="password"
								class="form-control" id="admin_pwd" placeholder="Password"
								name="admin_pwd" required>
						</div>

						<button type="submit" class="btn btn-primary" style="margin-left: 130px; margin-bottom: 20px">Login</button>
					</form>
				</div>
			</div>
			<div class="col-3">&nbsp;</div>
		</div>
	</div>
</body>
</html>