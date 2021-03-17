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
    <title>Demo Homepage</title>

    <!-- Jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <!-- Favicon -->
    <link rel="icon" href="images/favicon-logo.ico" type="image/x-icon">

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/8e47f0960d.js" crossorigin="anonymous"></script>

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/extras.css" type="text/css"/>

</head>
<body>

<!-- Links:

    Photo by Thomas Vimare on Unsplash: https://unsplash.com/photos/IZ01rjX0XQA
    Template adapted from: https://startbootstrap.com/snippets/full-image-header

-->

<header>
    <div class="overlay">
        <nav class="navbar navbar-expand-lg navbar-light fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="images/logo4.png" alt="">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Products
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Categories</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="demoLogin.jsp">Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <div class="masthead-2">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12 text-center text-white">
                    <h1 class="font-weight-light">This is a demo store</h1>
                    <p class="lead">Please login!</p>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Full Page Image Header with Vertically Centered Content -->


<!-- Option 2: Separate Popper and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</body>
</html>