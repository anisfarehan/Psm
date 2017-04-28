<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit Form</title>
</head>
<body>
<%@ page import="com.ayerputeh.Controller.emp.Emp" %>
<%@ page import="com.ayerputeh.Model.empdao.EmpDao" %>
<%@ page import="static com.ayerputeh.Model.empdao.EmpDao.getEmployeeById" %>

<%
    String id=request.getParameter("id");
    Emp e= getEmployeeById(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editprocess.jsp" method="post">
    <table>
        <tr><td>Name:</td><td><input type="text" name="id" value="<%=e.getId() %>"/></td></tr>
        <tr><td>Password:</td><td><input type="text" name="pelajarnama" value="<%=e.getpelajarnama() %>"/></td></tr>
        <tr><td>Email:</td><td><input type="text" name="no_ic" value="<%=e.getno_ic() %>"/></td></tr>

        <td colspan="2"><input type="submit" value="Kemaskini"/></td>

    </table>
</form>

</body>
</html>