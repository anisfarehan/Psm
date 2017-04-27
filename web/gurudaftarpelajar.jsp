<%@page import="com.ayerputeh.Model.LoginDAO.LoginDAO" %>

<%

	String number_ic = request.getParameter("number_ic");
	LoginDAO loginDAO = new LoginDAO().findByNRIC(number_ic);
%>
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
				<li><a href="gurumain.jsp">Menu Utama</a></li>
				<li><a href="ViewServlet">Senarai Pelajar</a></li>
				<li class="active"><a href="gurudaftarpelajar.jsp">Pendaftaran Pelajar</a></li>
				<li><a href="EditServlet">Rekod Akademik</a></li>
				<li><a href="AktivityServlet">Aktiviti Sekolah</a></li>
				<li><a href="AkaunServlet">Akaun</a></li>
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
						<input type="text" name="no_ic" value="<%=loginDAO.number_ic%>">
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
	<!-- post -->
</div><!-- content -->
<div class="clearing">&nbsp;</div>
</div><!-- main -->
<div id="footer">
	<p>&copy;SK.Ayer Puteh. All rights reserved.</p>
</div>
</div><!-- page -->
</body>
</html>

