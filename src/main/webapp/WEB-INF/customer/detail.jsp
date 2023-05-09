<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/8/2023
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>email</th>
        <th>ad</th>
    </tr>
    <tr>
        <td>${requestScope["customer"].getId()}</td>
        <td>${requestScope["customer"].getName()}</td>
        <td>${requestScope["customer"].getEmail()}</td>
        <td>${requestScope["customer"].getAddress()}</td>
    </tr>
</table>
</body>
</html>
