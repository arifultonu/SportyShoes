<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
</head>
<body>
<div class="container">
<jsp:include page="/components/header1.jsp" ></jsp:include>
<%-- <jsp:include page="/components/admin-header.jsp" ></jsp:include> --%>
<jsp:include page="/components/admin-topbar.jsp" ></jsp:include>

Welcome, Admin. Choose an option from the menu above

</div>
<jsp:include page="/components/admin-footer.jsp"></jsp:include>
</body>
</html>