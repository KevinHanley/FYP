<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 18/11/2020
  Time: 9:30 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/home.css" type="text/css"/>

</head>
<body>

<!-- Links:
    StartBootstrap Video Header Template: https://startbootstrap.com/snippets/video-header
    Video by fauxels on Pexels: https://www.pexels.com/video/person-looking-at-pictures-in-his-phone-while-making-notes-3251809/
-->

<header>
    <div class="overlay">
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: transparent;">
            <div class="container">
                <a class="navbar-brand" href="loggedIn.jsp">
                    <img src="images/logo4.png" alt="">
                </a>
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
                            <a class="nav-link" href="pricing.jsp">Pricing</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="account.jsp">Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
        <source src="videos/phone.mp4" type="video/mp4">
    </video>

    <div class="container h-50">
        <div class="d-flex h-100 text-center align-items-center">
            <div class="w-100">
                <h1 class="display-3">Picturesque. Secure.</h1>
                <p class="lead mb-0">A new type of authentication.</p>
            </div>
        </div>
    </div>
</header>

<section class="my-5">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <p>The HTML5 video element uses an mp4 video as a source. Change the source video to add in your own background! The header text is vertically centered using flex utilities that are build into Bootstrap 4.</p>
                <p>The overlay color can be changed by changing the <code>background-color</code> of the <code>.overlay</code> class in the CSS.</p>
                <p>Set the mobile fallback image in the CSS by changing the background image of the header element within the media query at the bottom of the CSS snippet.</p>
                <p class="mb-0">
                    Created by <a href="https://startbootstrap.com">Start Bootstrap</a>
                </p>
            </div>
        </div>
    </div>
</section>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
</html>