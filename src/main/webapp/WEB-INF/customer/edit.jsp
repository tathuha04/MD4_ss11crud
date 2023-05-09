<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/8/2023
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Form Edit</h1>
<form method="post">
<table>
    <tr>
<%--        <th>id</th>--%>
        <th>Name</th>
        <th>email</th>
        <th>ad</th>
    </tr>
    <tr>
<%--        <td></td>--%>
        <td><input type="text" value="${requestScope["customer"].getName()}" name="name"></td>
        <td><input type="text" value="${requestScope["customer"].getEmail()}" name="email"></td>
        <td><input type="text" value="${requestScope["customer"].getAddress()}" name="address"></td>
    </tr>
</table>
    <button type="submit">update</button>
</form>
</body>
</html>
