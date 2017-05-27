<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>

<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ayerputeh"
                   user="root"  password=""/>

<sql:query dataSource="${dbsource}" var="result">
    SELECT * from login where id=?;
    <sql:param value="${param.id}" />
</sql:query>
<form action="editprocess.jsp" method="post">
    <table border="0" width="40%">
        <caption>Update Product</caption>
        <tr>
            <th>Nama</th>
            <th>Kata Laluan</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><input type="hidden" value="${param.id}" name="id"/>
                    <input type="text" value="${row.nama}" name="nama"/></td>
                <td><input type="text" value="${row.password}" name="password"/></td>
                <td><input type="submit" value="Update"/></td>
            </tr>
        </c:forEach>
    </table>
    <a href="index.jsp">Go Home</a>
</form>
</body>
</html>