
<%--
    Document   : gurumain page
    Created on : Nov 16, 2016, 2:37:26 AM
    Author     : Yang Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Sk.Ayer Puteh</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="" />
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="css/sky-forms.css" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="page">
    <div id="header">
        <div id="menu">
            <ul>
                <li><a href="penyeliamain.jsp">Menu Utama</a></li>
                <li><a href="#">Senarai Guru</a></li>
                <li class="active"><a href="Penyeliaviewpelajar.jsp">Senarai Murid</a></li>
                <li ><a href="gurudaftarpelajar.jsp">Daftar Tenaga Pengajar</a></li>
                <li><a href="#">Rekod Akademik</a></li>
                <li><a href="#">Aktiviti Sekolah</a></li>
                <li><a href="#">Akaun</a></li>
                <li><a href="logout.jsp">Log Keluar</a></li>

            </ul>
        </div><!-- menu -->
    </div><!-- header -->
    <img id="introimg" src="images/Picture1.gif" width="90" height="70" alt="" />
    <h3>Cikgu <%=session.getAttribute("number_ic")%></h3>
    <div id="main">
        <div id="sidebar">
            <h2>Misi KPM</h2>
            <div class="box">
                <p>MEMBANGUNKAN SISTEM PENDIDIKAN BERKUALITI YANG BERTARAF DUNIA BAGI MEMPERKEMBANGKAN POTENSI INDIVIDU SEPENUHNYA DAN MEMENUHI ASPIRASI NEGARA MALAYSIA</p>
            </div>
            <h2>Visi Sekolah</h2>
            <div class="box1">
                <p><div class="box1">
                <p>MEMBANGUNKAN SISTEM PENDIDIKAN BERKUALITI YANG BERTARAF DUNIA BAGI MEMPERKEMBANGKAN POTENSI INDIVIDU SEPENUHNYA DAN MEMENUHI ASPIRASI NEGARA MALAYSIA</p>
            </div></p>
        </div>

    </div><!-- sidebar -->
    <div id="content">
        <%@ page import="com.ayerputeh.Controller.emp.Emp" %>
        <%@ page import="com.ayerputeh.Model.empdao.EmpDao" %>
        <%@ page import="java.util.List" %>
        <%@ page import="com.ayerputeh.Model.PelajarDAO.PelajarDAO" %>
        <%@ page import="java.util.ArrayList" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <header>Senarai Pelajar</header>

        <%
              List<Emp> list= EmpDao.getAllEmployees();
              request.setAttribute("list",list);

            /*List<LoginDAO> loginDAOs = new ArrayList<>();
        loginDAOs.add(loginDAO);
        loginDAOs.add(loginDAO2);*/
        ////e.getpelajarnama()
            //List<PelajarDAO> pelajarDAOs=new ArrayList<>();
            //request.setAttribute("list",pelajarDAOs);
        %>

        <table border="0" width="90%">
            <tr><th>Id</th><th>Nama Pelajar</th><th>Kad Pengenalan</th><th>Kelas</th><th></th><th></th></tr>
            <c:forEach items="${list}" var="e">
                <tr><td>
                    <label class="label"></label>

                </td>
                    <td><label class="label">${e.getpelajarnama()}</label></td>
                    <td><label class="label">${e.getno_ic()}</label> </td>
                    <td><label class="label">${e.getkelas_id()}</label> </td>
                    <td><a href="Penyeliadetailedit.jsp?id=${e.getId()}">Maklumat Lanjut</a></td>
                    <td><a href="deleteuser.jsp?id=${e.getId()}">Padam</a></td>
                </tr>
            </c:forEach>
        </table>



                </div>
    <!-- post -->
</div><!-- content -->
<div class="clearing">&nbsp;</div>
</div><!-- main -->
<div id="footer">
    <p>&copy;SK.Ayer Puteh. Hak Cipta Terpelihara.</p>
</div>
</div><!-- page -->
</body>
</html>

