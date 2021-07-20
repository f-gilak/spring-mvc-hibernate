<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fgilak
  Date: 7/14/2021
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save Customer</title>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />" >
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/add-customer-style.css" />">
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CRm-Customer Relational Manager</h2>
    </div>
</div>

<div id="container">

    <h3>save Customer</h3>
    <form:form action="saveCustomer" modelAttribute="customer" method="post">
        <form:hidden path="id"/>
        <table>
            <tbody>
            <tr>
                <td><label>First name: </label></td>
                <td><form:input path="firstName" /></td>
            </tr>
            <tr>
                <td><label>Last name: </label></td>
                <td><form:input path="lastName" /></td>
            </tr>
            <tr>
                <td><label>Email: </label></td>
                <td><form:input path="email" /></td>
            </tr>

            <tr>
                <td></td>
                <td><input type="submit" value="save" class="save" /></td>
            </tr>

            </tbody>
        </table>
    </form:form>
    <div style="clear; both;">
        <p>
            <a href= "<c:url value="/customer/list" />" >Back to List</a>
        </p>
    </div>
</div>

</body>
</html>
