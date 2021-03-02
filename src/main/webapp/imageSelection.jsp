<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 24/11/2020
  Time: 1:52 p.m.
  To change this template use File | Settings | File Templates.
--%>



<!-- Collapsing divs when button is clicked on: https://stackoverflow.com/questions/11476670/bootstrap-collapse-other-sections-when-one-is-expanded-->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload Image</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Bootstrap, fonts and icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://unpkg.com/@bootstrapstudio/bootstrap-better-nav/dist/bootstrap-better-nav.min.css">

    <!-- JavaScript for the Unsplash API -->
    <script type="text/javascript" src="test.js"></script>

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/navbar.css" type="text/css"/>

    <script type="text/javascript">
        $(document).ready(function(){

            //close the other collapsible div, when one is clicked.
            $('#btnFileUpload').click(function (e){
                $('.collapse').collapse('hide');
            });

            $('#btnOnline').click(function (e){
                $('.collapse').collapse('hide');
            });
        });
    </script>

</head>

<body>
    <section class="d-flex flex-column justify-content-between">
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
    </section>

    <div class="container">
        <div class="jumbotron text-center">
            <h1 class="display-4">Select an Image!</h1>
            <p class="lead">Choose an image from your device or online.</p>

            <hr class="my-4">
        </div>
    </div>

    <div class="container text-center">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <button id="btnFileUpload" type="button" class="btn btn-outline-primary" data-toggle="collapse" data-target="#uploadSection" aria-expanded="false" aria-controls="uploadSection">Browse Your Device</button>
                <button id="btnOnline" type="button" class="btn btn-outline-primary" data-toggle="collapse" data-target="#onlineSection" aria-expanded="false" aria-controls="onlineSection">Search Online</button>
            </div>
        </div>
        <div class="row" style="margin-top: 50px;">
            <div class="col-md-8 offset-md-2">
                <div class="collapse" id="uploadSection">

                    <form action="ImageServlet" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="imageaction" value="upload">

<%--                            <!-- old -->--%>
<%--                            <input class="btn btn-primary" type="file" name="file" accept="image/jpeg" onchange="document.getElementById('display').src = window.URL.createObjectURL(this.files[0])">--%>

<%--                            <p>Upload your selected image?</p>--%>
<%--                            <button class="btn btn-primary" type="submit">Upload</button>--%>

                        <!-- new -->
                        <div class="input-group mb-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="myFile" name="file" accept="image/jpeg" onchange="document.getElementById('display').src = window.URL.createObjectURL(this.files[0]); document.getElementById('deviceUpload').disabled = false">
                                <label class="custom-file-label" for="myFile" aria-describedby="myFile">Choose file</label>
                            </div>
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit" id="deviceUpload" disabled>Upload</button>
                            </div>
                        </div>


                    </form>

                    <h5>Preview of your image:</h5>
                    <img id="display" alt="Image Preview" width="500" height="500" style="margin-bottom: 50px;" />

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="collapse" id="onlineSection">
                    <div class="container">
                        <div class="input-group mb-3">
                            <input id="imagesearch" type="text" class="form-control" placeholder="Search Query" aria-label="Search Query" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button onclick="SearchPhotos()" class="btn btn-outline-primary" type="button">Search</button>
                            </div>
                        </div>
                    </div>

                    <div class="container" style="margin-top: 50px;">
                        <form action="ImageServlet" method="POST">
                            <input type="hidden" name="imageaction" value="apiUpload">
                            <input type="hidden" id="basestring" name="basestring" value="">
                            <input type="hidden" id="imageid" name="imageid" value="">

                            <button class="btn btn-primary" type="submit" id="searchUpload" disabled>Upload</button>
                        </form>
                    </div>

                    <div class="container-fluid" style="margin-top: 50px; margin-bottom: 50px;">
                        <h3>Search Results</h3>
                        <div id="outputimage">
                            <!-- images displayed here -->
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>






<!--

    USE THIS:

    -->




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