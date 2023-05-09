<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/8/2023
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center; color: violet"> ========================= CUSTOMER CONTROLLER ===================== </h1>
<a href="customer?action=create">Create customer</a>
<table border="1" style="width: 100%">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>email</th>
        <th>address</th>
        <th>Edit</th>
    </tr>
    <c:forEach items='${requestScope["customerList"]}' var="ctm">
        <tr>
            <td>${ctm.getId()}</td>
            <td> <a href="customer?action=detail&id=${ctm.getId()}">${ctm.getName()}</a></td>
            <td>${ctm.getEmail()}</td>
            <td>${ctm.getAddress()}</td>
            <td><button> <a href="customer?action=edit&id=${ctm.getId()}">Edit</a></button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
