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
				<li class="active"><a href="gurumain.jsp">Menu Utama</a></li>
				<li><a href="\ViewServlet">Senarai Pelajar</a></li>
				<li><a href="gurudaftarpelajar.jsp">Pendaftaran Pelajar</a></li>
				<li><a href="\EditServlet">Rekod Akademik</a></li>
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
		<div class="post">
			<h22>Makluman Aktiviti</h22>
			<p></p>
			<div class="entry">
				<p>Sambutan Sukan Di Disekolah:
				   Melibatkan pelajar yang menyertai sukan peringkat sekolah
				   ... <a href="#">more detail</a></p>
			</div>
			<div class="entry1">
				<p>Hari Graduasi:
					Melibatkan pelajar darjah 6
					... <a href="#">more detail</a></p>
			</div>
			<div class="box">
				<img id="introimg" src="images/sukan.jpeg" width="90" height="70" alt="" />
			</div>
			<div class="box1">
				<img src="images/pic02.jpg" alt=""/>
			</div>
		</div><!-- post -->
		<div class="post">
		</div>
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