<%-- 
    Document   : gurumain page
    Created on : Nov 16, 2016, 2:37:26 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/sky-forms.css">
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
        	<div id="sidebar">
			<div class="column1">
				<div class="title">
					<h2>nama guru</h2> /*akan tarik nama guru dari database*/
				</div>
				<ul class="style2">
				       <li><a href="EditServlet">Ujian Penggal 1</a></li>
                                       <li><a href="EditServlet4">Ujian Penggal 2</a></li>
                                       <li><a href="gurusenaraipelajar.jsp">Peperiksaan akhir tahun</a></li>
                                       <li><a href="gurusenaraipelajar.jsp">Senarai Pelajar</a></li>
					<li><a href="senaraiguru.jsp">Senarai Guru</a></li>
					<li><a href="senaraiaktiviti.jsp">Aktiviti</a></li>
					<li><a href="pencapaian.jsp">Pencapaian Sekolah</a></li>
					<li><a href="makluman.jsp">Makluman Sekolah</a></li>
					
				</ul>
			</div>
		</div>
		<div id="content">
                    <form action="SaveServlet" class="sky-form" method="post">
				<header>Pendaftaran pelajar</header>
				
				<fieldset>
					<section>
						<label class="label">Nama :</label>
						<label class="input">
							<input type="text" name="pelajarnama">
						</label>
					</section>
					
					<section>
						<label class="label">No. Kad Pengenalan :</label>
						<label class="input">
							<input type="text" name="no_ic">
						</label>
					</section>
                                    <section>
						<label class="label">Nama Ibu :</label>
						<label class="input">
                                                    <input type="text" name="namaibu">
						</label>
					</section>
                                    <section>
						<label class="label">Nama Bapa :</label>
						<label class="input">
							<input type="text" name="namabapa">
						</label>
					</section>
					
						<section>
						<label class="label">Agama :</label>
						<label class="select" >
							<select name="agama">
								<option name="agama"value="">Islam</option>
								<option value="">Buddha</option>
								<option value="">Kristian</option>
                                                                <option value="">Lain-lain</option>
								
							</select>
							<i></i>
						</label>
					</section>
                                    <section>
						<label class="label">Kaum :</label>
						<label class="input">
							<select name="warganegara">
								<option value="">Melayu</option>
								<option value="">India</option>
								<option value="">Cina</option>
                                                                <option value="">Lain-lain</option>
								
							</select>
						</label>
				    </section>
					
				</fieldset>
				
				<fieldset>
					<section>
						<label class="label">Kelas</label>
						<label class="select">
							<select name="kelas_id">
                                                            <option name="kelas_id" value="">Arif</option>
								<option value="">Bistari</option>
								<option value="">Cerdik</option>
								
							</select>
							<i></i>
						</label>
					</section>
					
					
				</fieldset>
				
				<fieldset>					
					<section>
						<label class="label">Alamat Rumah</label>
						<label class="textarea">
							<textarea rows="3" name="alamat"></textarea>
						</label>
						
					</section>
                                    <section>
						<label class="label">Poskod</label>
						<label class="textarea">
                                                    <input  name="poskod">
						</label>
						
					</section>
                                    <section>
						<label class="label">Negeri</label>
						<label class="input">
							<input name="negeri">
						</label>
						
					</section>
					
				
				</fieldset>
							
				<footer>
					<button type="submit" class="button">Daftar</button>
					<button type="button" class="button button-secondary" onclick="window.history.back();">Kembali</button>
				</footer>
          </form>
                </div>
    </div>
	
</div>
<div id="footer">
	<p>&copy; SK.Ayer Puteh. All rights reserved 2016.</p>
</div>
</body>
</html>

