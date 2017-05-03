<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 4/28/2017
  Time: 3:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%

    Connection con=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    int count=0;
    String sid=null,rid=null;
    try
    {
        //ServletContext sc=getServletContext();
        //String driver=sc.getInitParameter("driver");
        //String url=sc.getInitParameter("url");
        //String uname=sc.getInitParameter("user");
        //String pwd=sc.getInitParameter("dbpassword");
        Class.forName("com.mysql.jdbc.Driver");
        System.out.println("...........3.......");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","root","");
        pstmt=con.prepareStatement("select count(id) from login");
        rs=pstmt.executeQuery();
        while(rs.next())
        {
            count=rs.getInt(1)+1;
        }



        sid="Guru"+count;
        rid="Subject"+count;


    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>

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
    <h3><%=session.getAttribute("status")%> <%=session.getAttribute("nama")%> <%=session.getAttribute("number_ic")%></h3>
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
        <form action="PenyeliaAddGuru" class="sky-form" method="post">
            <header>Kemasukkan guru baharu</header>

            <fieldset>
                <section>
                    <label class="label">Guru ID:</label>
                    <label class="input">
                        <input type="text" name="gid" value=<%=sid%> readonly>
                    </label>
                </section>
                <section>
                    <label class="label">Nama Guru :</label>
                    <label class="input">
                        <input type="text" name="gurunama">
                    </label>
                </section>

                <section>
                    <label class="label">No. Kad Pengenalan :</label>
                    <label class="input">
                        <input type="text" name="no_ic" >
                    </label>
                </section>
                <section>
                    <label class="label">Tenaga Pengajar Subjek:</label>
                    <label class="input">
                        <input type="text" name="subjek_id" value=<%=rid%> readonly>
                    </label>
                </section>
                <section>
                    <label class="label">Guru Kelas :</label>
                    <label class="input">
                        <select name="kelas_id">
                            <option value="1">Arif</option>
                            <option value="2">Bistari</option>
                            <option value="3">Cerdik</option>
                            <option value="4">Dahlia</option>

                        </select>
                    </label>
                </section>

            </fieldset>

            <footer>
                <button type="submit" class="button">Tambah</button>
                <button type="button" class="button button-secondary" onclick="window.history.back();">Padam</button>
            </footer>
        </form>
    </div><!-- post -->
</div><!-- content -->
<div class="clearing">&nbsp;</div>
</div><!-- main -->
<div id="footer">
    <p>&copy;SK.Ayer Puteh. Hak Cipta Terpelihara.</p>
</div>
</div><!-- page -->
</body>
</html>
