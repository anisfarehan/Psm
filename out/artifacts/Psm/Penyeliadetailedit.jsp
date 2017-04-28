
<%--
    Document   : penyelidetailedit page
    Created on : april 16, 2017, 2:37:26 AM
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
        <%@ page import="static com.ayerputeh.Model.empdao.EmpDao.getEmployeeById" %>

        <%
            String id=request.getParameter("id");
            Emp e= getEmployeeById(Integer.parseInt(id));
        %>

        <header>Kemaskini Maklumat Pelajar</header>


        <form action="editprocess.jsp" method="post">
            <table border="0">
                <tr><td>Nama Pelajar:</td><td><input name="pelajarnama" value="<%=e.getpelajarnama()%>"/></td></tr>
                <tr><td>Kad Pengenalan:</td><td><input type="text" name="no_ic" value="<%=e.getno_ic()%>"/></td></tr>
                <tr><td>Nama Bapa:</td><td><input type="text" name="namabapa" value="<%=e.getnamabapa() %>"/></td></tr>
                <tr><td>Nama Ibu:</td><td><input type="text" name="namaibu" value="<%=e.getnamaibu() %>"/></td></tr>
                <tr><td>Alamat Surat Menyurat:</td><td><textarea  type="text" name="alamat" value="<%=e.getalamat()%>"/></td></tr>

                <td colspan="2"><input type="submit" value="Kemaskini Maklumat"/></td>

            </table>
        </form>




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

