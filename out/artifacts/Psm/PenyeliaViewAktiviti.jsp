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
                <li class="active"><a href="penyeliamain.jsp">Menu Utama</a></li>
                <li><a href="#">Senarai Guru</a></li>
                <li><a href="PenyeliaAddGuru.jsp">Kemasukkan Guru Baharu</a></li>
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
        <header>Senarai Pelajar</header>



        <table border="0" width="90%">
            <tr><th>Id</th><th>Nama Pelajar</th><th>Kad Pengenalan</th><th>Kelas</th><th></th><th></th></tr>

                <tr><td>
                    <label class="label"><%=%></label>

                </td>
                    <td><label class="label"></label></td>
                    <td><label class="label"></label> </td>
                    <td><label class="label"></label> </td>
                    <td><a href="Penyeliadetailedit.jsp?id=">Maklumat Lanjut</a></td>
                    <td><a href="deleteuser.jsp?id=">Padam</a></td>
                </tr>

        </table>
    </div><!-- post -->
</div><!-- content -->
<div class="clearing">&nbsp;</div>
</div><!-- main -->
<div id="footer">
    <p>&copy;SK.Ayer Puteh. All rights reserved.</p>
</div>
</div><!-- page -->
</body>
</html>