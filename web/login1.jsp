<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="http://fonts.googleapis.com/css?family=Karla:400,700" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css" />
    <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/sky-forms.css">
    <!--[if IE 6]>
    <link href="default_ie6.css" rel="stylesheet" type="text/css" />

    <title>Sk.Ayer Puteh</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

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
        <a class="navbar-brand" href="index.jsp">Sk.Ayer Puteh</a>
        <div class="collapse navbar-collapse" id="navbarExample">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="login1.jsp">Log Masuk</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="services.html">Tetapan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Maklumat Sekolah</a>
                </li>


            </ul>
        </div>
    </div>
</nav>

<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <!-- Slide One - Set the background image for this slide in the line below -->
            <div class="carousel-item active" style="background-image: url('images/123.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Sk.Ayer Puteh</h3>
                    <p>Berusaha Berilmu dan Berbakti.</p>
                </div>
            </div>
            <!-- Slide Two - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('images/dikir.jpeg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Sk.Ayer Puteh</h3>
                    <p>Berusaha Berilmu dan Berbakti.</p>
                </div>
            </div>
            <!-- Slide Three - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('images/DSC00416.JPG')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Sk.Ayer Puteh</h3>
                    <p>Berusaha Berilmu dan Berbakti.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>

<!-- Page Content -->
<div class="container">

    <h1 class="my-4">Selamat Datang Ke Laman Sk.Ayer Puteh</h1>

    <!-- Marketing Icons Section -->
    <div class="row">
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
    <!-- /.row -->

    <!-- Portfolio Section -->
    <h2>Galeri Sekolah</h2>

    <div class="row">
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top img-fluid" src="images/sukan.jpeg" alt=""></a>
                <div class="card-block">
                    <h4 class="card-title"><a href="#">Sukan Tahunan</a></h4>
                    <p class="card-text">Melibatkan kaki tangan sekolah dan kesemua pelajar di atas penyertaan setiap pertandingan.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top img-fluid" src="images/WhatsApp%20Image%202016-11-12%20at%2018.35.59.jpeg" alt=""></a>
                <div class="card-block">
                    <h4 class="card-title"><a href="#">Sukan Tahunan</a></h4>
                    <p class="card-text">Antara pelajar yang terlibat dalam acara pembarisan bagi penutup sukan tahunan</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top img-fluid" src="images/DSC00421.JPG" alt=""></a>
                <div class="card-block">
                    <h4 class="card-title"><a href="#">Rotong royong</a></h4>
                    <p class="card-text">Aktiviti hujung minggu yang melibatkan kesemua pelajar bagi mengeratkan hubungan silaturahin antara guru-guru.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top img-fluid" src="images/DSC00416.JPG" alt=""></a>
                <div class="card-block">
                    <h4 class="card-title"><a href="#">Suasana Pagi</a></h4>
                    <p class="card-text">Kawasan sekolah dipagi hari yang ceria</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top img-fluid" src="images/17795923_1277860148917297_1190255686781262982_n.jpg" alt=""></a>
                <div class="card-block">
                    <h4 class="card-title"><a href="#">Acara Penutup Hujung Tahun</a></h4>
                    <p class="card-text">Penyampaian hadian bagi pelajar yang mendapat kehadiran cemerlang dan akademik yang cemerlang.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top img-fluid" src="images/dikir.jpeg" alt=""></a>
                <div class="card-block">
                    <h4 class="card-title"><a href="#">Pertandingan</a></h4>
                    <p class="card-text">Pelajar yang terlibat untuk bertanding di peringkat negeri</p>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

    <!-- Features Section -->
    <!-- /.row -->

    <hr>

    <!-- Call to Action Section -->


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

