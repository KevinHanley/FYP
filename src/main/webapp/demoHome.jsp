<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 16/03/2021
  Time: 7:50 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demo Home</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <!-- jQuery that works -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/8e47f0960d.js" crossorigin="anonymous"></script>

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/extras.css" type="text/css"/>

    <!-- Favicon -->
    <link rel="icon" href="images/favicon-logo.ico" type="image/x-icon">

</head>


<!--

    StartBootstrap Template : https://startbootstrap.com/template/shop-homepage

    Carousel:
    Photo by Tamara Bellis on Unsplash: https://unsplash.com/photos/68csPWTnafo
    Photo by Atikh Bana on Unsplash: https://unsplash.com/photos/_KaMTEmJnxY
    Photo by Brooke Cagle on Unsplash: https://unsplash.com/photos/z1B9f48F5dc

    Smaller Items:
    Photo by Benjamin Voros on Unsplash: https://unsplash.com/photos/TnNo84AJJ5A
    Photo by Alicia Petresc on Unsplash: https://unsplash.com/photos/BciCcl8tjVU
    Photo by Engin Akyurt on Unsplash: https://unsplash.com/photos/5raPrOhbKQo
    Photo by H.F.E & CO on Unsplash: https://unsplash.com/photos/MjIJLVoPxmM
    Photo by Creating a Brand on Unsplash: https://unsplash.com/photos/xcQWU0Eff-U
    Photo by Joseph Barrientos on Unsplash: https://unsplash.com/photos/4qSb_FWhHKs


    -->


<body id="home-body">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#"><img src="images/fyp-demo-logo.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="demoHome.jsp">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="demoHome.jsp">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="demoLogin.jsp">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-lg-3">

            <h3 class="my-4">Categories</h3>
            <div class="list-group" id="category-group">
                <a href="#" class="list-group-item list-group-item-action">Summer</a>
                <a href="#" class="list-group-item list-group-item-action">Indoor</a>
                <a href="#" class="list-group-item list-group-item-action">Outdoor</a>
                <a href="#" class="list-group-item list-group-item-action">Party</a>
                <a href="#" class="list-group-item list-group-item-action">Brunch</a>
                <a href="#" class="list-group-item list-group-item-action">Sale</a>
            </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid" src="https://source.unsplash.com/68csPWTnafo/1920x1080" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="https://source.unsplash.com/_KaMTEmJnxY/1920x1080" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="https://source.unsplash.com/z1B9f48F5dc/1920x1080" alt="Third slide">
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

            <div class="row">

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="https://source.unsplash.com/TnNo84AJJ5A/700x400" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Demin Jacket</a>
                            </h4>
                            <h5>€19.99</h5>
                            <p class="card-text">Premium demin jacket with long sleeve and faded design.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="https://source.unsplash.com/BciCcl8tjVU/700x400" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Ripped Jeans</a>
                            </h4>
                            <h5>€27.99</h5>
                            <p class="card-text">Rough cut ripped jeans with a deep blue tint.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="https://source.unsplash.com/5raPrOhbKQo/700x400" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Pink Trousers</a>
                            </h4>
                            <h5>€24.99</h5>
                            <p class="card-text">Light and stylish trousers that match any style</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="https://source.unsplash.com/MjIJLVoPxmM/700x400" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Black Jeans</a>
                            </h4>
                            <h5>€34.99</h5>
                            <p class="card-text">Faded black jeans with a vintage vibe.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="https://source.unsplash.com/xcQWU0Eff-U/700x400" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Off-White Shirt</a>
                            </h4>
                            <h5>€14.99</h5>
                            <p class="card-text">Slick off-shirt made with the finest materials.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="https://source.unsplash.com/4qSb_FWhHKs/700x400" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">White Shooes</a>
                            </h4>
                            <h5>€89.99</h5>
                            <p class="card-text">Premium runners with soft gel interior</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Fasion Central 2021</p>
    </div>
    <!-- /.container -->
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
</html>