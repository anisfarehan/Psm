<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 4/6/2017
  Time: 11:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Logout</title>
</head>
<body>
<% session.invalidate(); %>
<p>Anda telah berjaya keluar</p>
</body>
</html>
