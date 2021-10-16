<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg fixed-top navbar-light headerback"
	style="background-color: #005cbf;">
	<a class="navbar-brand text-success logo"
		href="<%=request.getContextPath()%>/home"
		style="font-size: 28px; font-weight: bold; color:#ffffff;">Sporty-Shoes</a>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<%--         <a class="nav-link" href="<%=request.getContextPath()%>/home">Home</a> --%>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">

			<c:if test="${user_id != null }">
				<a style="margin-right: 6px; font-weight: bold;"
					class="btn btn-primary my-2 my-sm-0 buttonstylehome"
					type="submit" href="<%=request.getContextPath()%>/dashboard">User
					Dashboard</a>
				<a style="margin-right: 6px; font-weight: bold;"
					class="btn btn-primary my-2 my-sm-0 buttonstylehome"
					type="submit" href="<%=request.getContextPath()%>/logout">Logout</a>
			</c:if>
			<c:if test="${admin_id != null }">
				<a style="margin-right: 6px; font-weight: bold;"
					class="btn btn-primary my-2 my-sm-0 buttonstylehome"
					type="submit" href="<%=request.getContextPath()%>/admindashboard">Admin
					Dashboard</a>
				<a style="margin-right: 6px; font-weight: bold;"
					class="btn btn-warning my-2 my-sm-0 buttonstylehome"
					type="submit" href="<%=request.getContextPath()%>/logout">Logout</a>
			</c:if>
			<c:if test="${user_id == null && admin_id == null}">
				<a id="loginLink" style="margin-right: 6px; font-weight: bold;"
					class="btn btn-outline-success my-2 my-sm-0 login" type="submit"
					href="<%=request.getContextPath()%>/login">Login</a>
			</c:if>

		</form>
	</div>
</nav>