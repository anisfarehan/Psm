<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 4/7/2017
  Time: 12:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login Error</title>
</head>
<body>
<center><p style="color:red">Maaf makluman anda tidak tersenarai.</p></center>
<%
    getServletContext().getRequestDispatcher("/login1.jsp").include(request, response);
%>
</body>
</html>
