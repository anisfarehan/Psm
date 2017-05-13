<%@page import="com.ayerputeh.Model.Penggal1DAO.Penggal1DAO"%>
<jsp:Penggal1 id="u" class="com.ayerputeh.Model.Penggal1DAO.Penggal1DAO"></jsp:Penggal1>
<jsp:setProperty property="*" name="u"/>

<%
    int i=UserDao.update(u);
    response.sendRedirect("viewusers.jsp");
%>