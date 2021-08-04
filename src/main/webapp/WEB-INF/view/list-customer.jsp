<%--
  Created by IntelliJ IDEA.
  User: fgilak
  Date: 7/12/2021
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List customer</title>
    <%--    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">--%>
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
</head>

<body>
<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer relationship Manager</h2>
        <hr>
        <p>
            user: <security:authentication property="principal.username"/>
            <br><br>
            Role(s): <security:authentication property="principal.authorities"/>
        </p>
    </div>
</div>
<div id="container">
    <div id="content">
        <form:form action="${pageContext.request.contextPath}/logout" method="post">
            <input type="submit" value="logout">
        </form:form>
        <form:form action="search" method="get">
            Search customer:<input type="text" name="searchName"/>
            <input type="submit" value="Search" class="add-button">
        </form:form>
        <input type="button" value="add customer" onclick="window.location.href='showFormForAdd';return false;"
               class="add-button">
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            <c:forEach var="tempCustomer" items="${customers}">
                <c:url var="updateLink" value="/customer/showFormForUpdate">
                    <c:param name="customerId" value="${tempCustomer.id}"/>
                </c:url>
                <c:url var="deleteLink" value="/customer/delete">
                    <c:param name="customerId" value="${tempCustomer.id}"/>
                </c:url>
                <tr>
                    <td>${tempCustomer.firstName}</td>
                    <td>${tempCustomer.lastName}</td>
                    <td>${tempCustomer.email}</td>
                    <td>
                        <a href="${updateLink}">Update</a>
                        <a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>

                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>
</body>
</html>
