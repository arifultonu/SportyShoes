<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>SportyShoes - Login</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
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
        <div class="col-3"></div>
        <div class="col-6">
            <div class="contain">
                <h2 style="text-align:center">Login</h2>
                <c:if test="${regsucmessage !=null}">
                    <p class="alert alert-warning"><c:out value="${regsucmessage}"/></p>
                </c:if>
                <form action="loginaction" method="post" style="background: #e5e5e5; padding: 20px 20px 20px 20px">

                    <div class="form-group">
                        <label for="email_id">UserName/Email:</label>
                        <input type="text" class="form-control" id="email_id" placeholder="User Name" name="email_id"
                               required>
                    </div>

                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" class="form-control" id="pwd" placeholder="Password" name="pwd" required>
                    </div>
                    <p class="text-danger"><c:out value="${error}"/></p>
                    <button type="submit" class="btn btn-primary" style="margin-left: 130px; margin-bottom: 20px">Login</button>
                    <p class="text-center">Not Registered Yet <a href="signup">Click here</a></p>
                </form>
            </div>
        </div>

        <div class="col-3"></div>

    </div>
</div>
</body>
</html>