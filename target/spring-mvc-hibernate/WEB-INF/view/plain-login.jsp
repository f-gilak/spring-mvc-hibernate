<%--
  Created by IntelliJ IDEA.
  User: fgilak
  Date: 7/27/2021
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>login</title>
    <style>
        .failed{
            color: #ff0000;
        }
    </style>
</head>
<body>
<h3>My Custom login Page</h3>
<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">

    <c:if test="${param.error !=null}">
        <i class="failed">Sorry! you entered invalid username/password.</i>
    </c:if>
    <p>user name: <input type="text" name="username"/></p>
    <p>password: <input type="text" name="password"/></p>
    <input type="submit" name="Login"/>

</form:form>
</body>
</html>
