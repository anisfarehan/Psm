<%@ page import="java.sql.*" %><%--
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
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css" />
    <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/sky-forms.css">
    <!--[if IE 6]>
    <link href="default_ie6.css" rel="stylesheet" type="text/css" />
    <![endif]-->
</head>
<body>

<div id="wrapper">

        <div id="menu" class="container">
            <h2>SEKOLAH KEBANGSAAN AYER PUTEH</h2>
        </div>
        <!-- end #menu -->

    <div id="page" class="container">


        <form method="post" action="http://localhost:8484/Psm/login.jsp" class="sky-form">
            <header>Log Masuk</header>
            <fieldset>
                <section style="width: 500px">
                    <label class="label">Kad Pengenalan Pengguna :</label>
                    <label class="input">
                        <input type="text" name="number_ic" placeholder="Masukkan nombor kad pengenalan">
                    </label>

                </section>


                <section style="width: 500px">
                    <label class="label">Kata Laluan :</label>
                    <label class="input">
                        <input type="password" name="password" placeholder="Masukkan kata laluan">
                    </label>
                </section>

                <section>
                    <label class="label">Status</label>
                    <label class="select">
                        <select name="status">
                            <option value="guru">Guru</option>
                            <option value="penyelia">Penyelia</option>

                        </select>
                        <i></i>
                    </label>
                </section>
                <footer>
                    <button type="submit" class="button">Log Masuk</button>
                </footer>


            </fieldset>
        </form>
    </div>
</div>
<div id="footer">
    <p>&copy;SK.Ayer Puteh. Hak Cipta Terpelihara.</p>
</div>
</div><!-- page -->

</body>
</html>