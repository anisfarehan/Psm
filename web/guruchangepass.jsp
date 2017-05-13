<%@ page import="com.ayerputeh.Model.LoginDAO.LoginDAO" %>
<%@ page import="com.google.gson.JsonObject" %>
<%@ page import="com.google.gson.Gson" %>
<%
    JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
    String number_ic = data.get("number_ic").getAsString();

    LoginDAO loginDAO= new LoginDAO().findByNRIC(number_ic);

%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="css/sky-forms.css" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css" />

    <title>Menu Utama Sk.Ayer Puteh</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">

    <!-- Temporary navbar container fix -->
    <style>
        .navbar-toggler {
            z-index: 1;
        }

        @media (max-width: 576px) {
            nav > .container {
                width: 100%;
            }
        }
        /* Temporary fix for img-fluid sizing within the carousel */

        .carousel-item.active,
        .carousel-item-next,
        .carousel-item-prev {
            display: block;
        }
    </style>

</head>

<body>

<!-- Navigation -->
<nav class="navbar fixed-top navbar-toggleable-md navbar-inverse bg-inverse">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarExample" aria-controls="navbarExample" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="container">
        <a class="navbar-brand" href="#"><%=session.getAttribute("status")%> Muhammad Fakihi Yusof <%=session.getAttribute("number_ic")%></a>
        <div class="collapse navbar-collapse" id="navbarExample">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Akaun<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Aktiviti</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Akademik
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                        <a class="dropdown-item" href="gurupenggal1.jsp">Penggal 1</a>
                        <a class="dropdown-item" href="gurupenggal2.jsp">Penggal 2</a>
                        <a class="dropdown-item" href="gurufinal.jsp">Peperiksaan Akhir</a>

                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Pelajar
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                        <a class="dropdown-item" href="gurudaftarpelajar.jsp">Daftar Pelajar</a>
                        <a class="dropdown-item" href="guruviewpelajar.jsp">Senarai Pelajar Kelas</a>

                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Keluar</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-lg-3">

            <h1 class="my-4">S.K.Ayer Puteh</h1>
            <div class="list-group">
                <a href="guruviewpelajar.jsp" class="list-group-item">Pelajar</a>
                <a href="guruviewaktiviti.jsp" class="list-group-item">Aktiviti</a>
                <a href="guruakaun.jsp" class="list-group-item">Akaun</a>
            </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

            <form action="UpdatePassGuruServlet" class="sky-form" method="post">
                <header>Kelas : Arif</header>

                <fieldset>
                    <section>
                        <label class="label">Nama :</label>
                        <label class="input">
                            <input type="text" name="nama" value="<%=loginDAO.nama%>">
                        </label>
                    </section>
                    <section>
                        <label class="label">Kata Laluan :</label>
                        <label class="input">
                            <input type="text" name="password" value="<%=loginDAO.password%>" >
                        </label>
                    </section>
                    <section>
                        <label class="label">Ulang Kata Laluan :</label>
                        <label class="input">
                            <input type="text" >
                        </label>
                    </section>


                </fieldset>

                <footer>
                    <button type="submit" class="button">Kemaskini</button>
                    <button type="button" class="button button-secondary" onclick="window.history.back();">Padam</button>
                </footer>
            </form>

            <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-inverse">
    <div class="container">
        <p class="m-0 text-center text-white">Hak Cipta Terpelihara &copy; S.K.Ayer Puteh 2017</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/tether/tether.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>