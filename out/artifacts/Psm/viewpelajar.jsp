<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 4/28/2017
  Time: 2:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.ayerputeh.Model.LoginDAO.LoginDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%


    LoginDAO loginDAO = new LoginDAO().read(1);
    LoginDAO loginDAO1 = new LoginDAO().read(2);


%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%=loginDAO.number_ic%>
<%=loginDAO1.number_ic%>
</body>
</html>
