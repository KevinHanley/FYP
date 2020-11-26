<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 24/11/2020
  Time: 11:45 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>My First Website</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://unpkg.com/@bootstrapstudio/bootstrap-better-nav/dist/bootstrap-better-nav.min.css">
    <link rel="stylesheet" href="styles/bstest.css" type="text/css">
</head>

<body>
<section class="d-flex flex-column justify-content-between" id="hero">
    <div id="hero-top">
        <nav class="navbar navbar-light navbar-expand-md">
            <div class="container-fluid"><a class="navbar-brand" href="#"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav mx-auto">
                        <li class="nav-item"><a class="nav-link active" href="#">Model S</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Model X</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Model 3</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Roadster</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Energy</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a class="nav-link active" href="#">Shop</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <h1 class="text-center" id="title">Tesla</h1>
        <h2 class="text-center" id="subtitle">Roadster</h2>
    </div>
    <div id="hero-bottom">
        <div class="container">
            <div class="row">
                <div class="col-8 offset-2">
                    <p>The quickest car in the world, with record setting acceleration, range and performance</p>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p class="p-top"><i class="icon ion-speedometer"></i>1.9s</p>
                    <p class="p-bottom">0-60 mph</p>
                </div>
                <div class="col with-border">
                    <p class="p-top"><ion-icon name="heart"></ion-icon> +250mph</p>
                    <p class="p-bottom">Top Speed</p>
                </div>
                <div class="col">
                    <p class="p-top">620mi</p>
                    <p class="p-bottom">Mile Range</p>
                </div>
                <div class="col align-self-center"><button class="btn btn-primary btn-block reserve-button" type="button">Reserve now</button></div>
            </div>
            <div class="row">
                <div class="col"><button class="btn btn-link btn-block arrow-button" type="button" style="color: rgb(255,255,255);"><i class="icon ion-ios-arrow-down" style="font-size: 30px;"></i></button></div>
            </div>
        </div>
    </div>
</section>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@bootstrapstudio/bootstrap-better-nav/dist/bootstrap-better-nav.min.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>

<div class="side-menu-overlay" style="display: none;"></div>
<div id="side-menu" style="display: none;"><button class="close">
    <span aria-hidden="true">×</span></button>
    <div class="contents"></div>
</div>
</body>
</html>