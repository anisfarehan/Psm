<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Users</title>
</head>
<body>

<%@ page import="com.ayerputeh.Controller.emp.Emp" %>
<%@ page import="com.ayerputeh.Model.empdao.EmpDao" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Users List</h1>

<%
    List<Emp> list= EmpDao.getAllEmployees();
    request.setAttribute("list",list);
%>

<table border="1" width="90%">
    <tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach items="${list}" var="e">
        <tr><td>${e.getId()}</td>
            <td>${e.getpelajarnama()}</td>
            <td>${e.getno_ic()}</td>
            <td>${e.getnamaibu()}</td>
            <td>${e.getnamabapa()}</td>
            <td><a href="editpelajar.jsp?id=${e.getId()}">Edit</a></td>
            <td><a href="deleteuser.jsp?id=${e.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New User</a>

</body>
</html>