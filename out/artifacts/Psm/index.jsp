<%-- 
    Document   : index
    Created on : Oct 28, 2016, 12:54:11 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sk.ayerputeh</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="http://fonts.googleapis.com/css?family=Karla:400,700" rel="stylesheet" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/sky-forms.css">
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
    </head>
    <body>
       <div id="wrapper">
	
	<div id="menu-wrapper">
		<div id="menu" class="container">
                    <center><h2>SEKOLAH KEBANGSAAN AYER PUTEH</h2></center>
		</div>
		<!-- end #menu --> 
	</div>
           <div id="page" class="container">
			
		
               <form method="post" action="http://localhost:35250/Psm/login.jsp" class="sky-form">
                    <header>Log Masuk</header>
                    <fieldset>
                    <section style="width: 500px">
                            <label class="label">Nama Pengguna :</label>
			    <label class="input">
                                <input type="text" name="v1" placeholder="Masukkan nombor kad pengenalan">
			    </label>
                            
                    </section>
                        
                   
                    <section style="width: 500px">
                        <label class="label">Kata Laluan :</label>
                        <label class="input">
                            <input type="password" name="v2" placeholder="Masukkan kata laluan">
                        </label>
                    </section> 
                    
                        <section style="width: 500px">
			<label class="label">Status</label>
			<label class="input">
		        	<input type="text" placeholder="Status" list="list">
				<datalist id="list">
				<option value="">Penyelia/Kerani</option>
				<option value="">Guru</option>
				<option value="">Pelajar</option>
				</datalist>
			</label>
		    </section>    
                        <footer>
                                <button type="submit" class="button">Log Masuk</button>
                        </footer>
                        
                   		    
                    </fieldset>
		</form>
           </div>
</div>
	<div id="footer-wrapper">
	<div id="footer" class="container">
		
		
		<div id="box3">
			<div class="title">
				<h2>Follow Us</h2>
			</div>
			<p></p>
			<ul class="contact">
				<li><a href="#" class="icon icon-twitter"><span>Twitter</span></a></li>
				<li><a href="#" class="icon icon-facebook"><span>Facebook</span></a></li>

			</ul>

		</div>
	</div>


</div>
<div id="copyright" class="container">
	<p>&copy;SK.Ayer Puteh. All rights reserved.</p>
</div>
    </body>
</html>
