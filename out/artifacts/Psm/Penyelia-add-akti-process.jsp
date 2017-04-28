<%@ page import="com.ayerputeh.Model.AktivitiDAO.AddaktivitiDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.ayerputeh.Controller.emp.Emp" %>
<%@ page import="com.ayerputeh.Controller.aktiviti.Aktiviti" %>
<jsp:useBean id="u" class="com.ayerputeh.Controller.aktiviti.Aktiviti"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%

    int i= AddaktivitiDAO.save(u);
    if(i>0){
        response.sendRedirect("adduser-success.jsp");
    }else{
        response.sendRedirect("adduser-error.jsp");
    }
%>