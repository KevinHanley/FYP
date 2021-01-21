<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 24/11/2020
  Time: 1:52 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload Image</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

    <!-- Bootstrap, fonts and icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://unpkg.com/@bootstrapstudio/bootstrap-better-nav/dist/bootstrap-better-nav.min.css">

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/navbar.css" type="text/css"/>
</head>

<body>
<section class="d-flex flex-column justify-content-between" id="hero">
    <div id="hero-top">
        <nav class="navbar navbar-light navbar-expand-md">
            <div class="container-fluid"><a class="navbar-brand" href="index.jsp">Pass Pic</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav mx-auto">
                        <li class="nav-item"><a class="nav-link active" href="account.jsp">What is PassPic?</a></li>
                        <li class="nav-item"><a class="nav-link" href="account.jsp">Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="account.jsp">Contact Us</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a class="nav-link active" href="account.jsp">Sign In</a></li>
                        <li class="nav-item"><a class="nav-link" href="account.jsp">My Account</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div id="hero-bottom">
        <div class="jumbotron text-center">
            <h1 class="display-4">Select an Image!</h1>
            <p class="lead">Pick an image from your file directory to use as your picture password.</p>

            <hr class="my-4">

            <form action="ImageServlet" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="imageaction" value="upload">

                <input class="btn btn-primary" type="file" name="file" accept="image/jpeg" onchange="document.getElementById('display').src = window.URL.createObjectURL(this.files[0])">

                <p>Upload your selected image?</p>
                <button class="btn btn-primary" type="submit">Upload</button>
            </form>

            <h5>Preview of your image:</h5>
            <img id="display" alt="Image Preview" width="500" height="500" />

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