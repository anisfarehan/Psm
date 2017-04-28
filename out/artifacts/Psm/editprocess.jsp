
<%@ page import="com.ayerputeh.Model.empdao.EmpDao" %>
<jsp:useBean id="e" class="com.ayerputeh.Controller.emp.Emp"></jsp:useBean>
<jsp:setProperty property="*" name="e"/>

<%
    int i= EmpDao.update(e);
    response.sendRedirect("viewpelajar.jsp");
%>