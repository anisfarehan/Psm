<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%--
    Document   : gurumain page
    Created on : Nov 16, 2016, 2:37:26 AM
    Author     : Yang Hp
--%>

<%

    Connection con=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    int count=0;
    String aid=null,rid=null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        System.out.println("...........3.......");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","root","");
        pstmt=con.prepareStatement("select count(id) from aktiviti");
        rs=pstmt.executeQuery();
        while(rs.next())
        {
            count=rs.getInt(1)+1;
        }



        aid=""+count;
        rid=""+count;


    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>


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
                <li class="active"><a href="PenyeliaAddGuru.jsp">Kemasukkan Guru Baharu</a></li>
                <li><a href="#">Rekod Akademik Pelajar</a></li>
                <li><a href="PenyeliaAddAktiviti.jsp">Kemasukkan Aktiviti</a></li>
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
        <form action="PenyeliaAddAktiviti" class="sky-form" method="post">
            <header>Tambah Aktiviti Baharu</header>

            <fieldset>
                <section>
                    <label class="label">Nama Aktiviti :</label>
                    <label class="input">
                        <input type="text" name="aktivitinama">
                    </label>
                </section>

                <section>
                    <label class="label">Tarikh :</label>
                    <label class="input">
                        <input type="text" name="tarikh" >
                    </label>
                </section>


            </fieldset>



            <fieldset>
                <section>
                    <label class="label">Huraian :</label>
                    <label class="textarea">
                        <textarea rows="3" name="huraian"></textarea>
                    </label>

                </section>

            </fieldset>

            <footer>
                <button type="submit" class="button">Daftar</button>
                <button type="button" class="button button-secondary" onclick="window.history.back();">Kembali</button>
            </footer>
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

