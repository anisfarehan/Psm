<%-- 
    Document   : gurumain page
    Created on : Nov 16, 2016, 2:37:26 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" charset="ISO-8859-1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header" class="container" style="">
			<div id="logo">
				<h1><a href="#">SK.Ayer Puteh</a></h1>
			</div>
			<div id="social">
				<ul class="contact">
					<li><a href="#" class="icon icon-twitter"><span>Twitter</span></a></li>
					<li><a href="#" class="icon icon-facebook"><span>Facebook</span></a></li>
					<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
					<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
					<li><a href="#" class="icon icon-rss"><span>Pinterest</span></a></li>
				</ul>
			</div>
		</div>
		<div id="menu" class="container">
			<ul>
				<li class="current_page_item"><a href="gurumain.jsp" accesskey="1" title="">Menu Utama</a></li>
				<li><a href="gurudaftarpelajar.jsp" accesskey="1" title="">Pelajar Baharu</a></li>
				<li><a href="EditServlet" accesskey="2" title="">Pengisian Markah</a></li>
				<li><a href="gurukelas.jsp" accesskey="3" title="">Pelajar Kelas</a></li>
				<li><a href="aktivit.jsp" accesskey="4" title="">Aktivit Sekolah</a></li>
				<li><a href="keluar.jsp" accesskey="5" title="">Log Keluar</a></li>
			</ul>
		</div>
	</div>
	<div id="page" class="container">
		<div class="column1">
			<div class="title">
				<h1>Sekolah Kebangsaan Ayer Puteh</h1>
                                <p> <%=session.getAttribute("name")%></p>
			</div>
			<p>Sekolah Kebangsaan Ayer Puteh terletak di kawasan luar bandar di Daerah Kemaman. Sekolah ini terletak di Kampung Ayer Puteh. Jarak Sekolah Kebangsaan Ayer Puteh daripada pusat bandar kira-kira 28 kilometer. Di sekitar kawasan sekolah ini terdapat banyak penempatan orang kampong yang telah menetap di kampong ini bertahun-tahun lamanya. Sekolah Kebangsaan Ayer Puteh mendapat gred A dengan bilangan pelajar seramai 451 orang. Sekolah ini mendapat penggredan yang tinggi walaupun lokasinya terletak di kawasan luar bandar.</p>
		</div>
		<div class="column2">
			<div class="title">
				<h2>Hari sukan</h2>
			</div>
			<img src="images/sukan.jpeg" width="282" height="150" alt="" />
			<p>Musim sukan di sekolah ayer puteh yang melibatkan keseluruhan pelajar</p>
		</div>
		<div class="column3">
			<div class="title">
				<h2>Pertandingan Dikir</h2>
			</div>
			<img src="images/dikir.jpeg" width="282" height="150" alt="" />
			<p>Melibatkan beberapa orang pelajar bagi menyertai pertandingan dikir barat.</p>
		</div>
		<div class="column4">
			<div class="title">
				<h2>Persekitaran</h2>
			</div>
			<img src="images/pagar.jpg" width="282" height="150" alt="" />
			<p>Suasana pagi di sekolah</p>
		</div>
	</div>
	
</div>
<div id="footer">
	<p>&copy; SK.Ayer Puteh. All rights reserved 2016.</p>
</div>
</body>
</html>

