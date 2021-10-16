<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<br><br>
<p style="text-align:center">
<% if (session.getAttribute("user_id") != null ) { %>	
	<a class="btn btn-primary" style="margin-right:9px;" href="cart">Cart</a>
	<a class="btn btn-warning" style="margin-right:9px;" href="editprofile">Edit Profile</a>
	<a class="btn btn-primary" style="margin-right:9px;" href="memberpurchases">Your Orders</a>
<% }  %>
    
<br>
</p>