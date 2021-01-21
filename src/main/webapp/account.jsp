<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 11/12/2020
  Time: 1:20 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

    <!-- Bootstrap, fonts and icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://unpkg.com/@bootstrapstudio/bootstrap-better-nav/dist/bootstrap-better-nav.min.css">

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/navbar.css" type="text/css"/>
    <link rel="stylesheet" href="styles/login.css" type="text/css"/>
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

    <br>

    <div id="hero-bottom">
        <div class="container">

            <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="card-header">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="login-tab" data-toggle="tab" href="#login" role="tab" aria-controls="login" aria-selected="true">Login</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="signup-tab" data-toggle="tab" href="#signup" role="tab" aria-controls="signup" aria-selected="false">Sign Up</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">

                                    <h4>Enter Login Details</h4>
                                    <form action="AccountServlet" method="POST">
                                        <input type="hidden" name="action" value="login">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                            <input id="loginEmailAddress" type="text" class="form-control" name="loginEmailAddress" placeholder="Email">
                                        </div>
                                        <div class="input-group login-buttons">
                                            <button class="btn btn-primary login-btn" type="submit">Login</button>
                                        </div>
                                    </form>

                                </div>
                                <div class="tab-pane fade" id="signup" role="tabpanel" aria-labelledby="signup-tab">

                                    <h4>Create Account</h4>
                                    <form action="AccountServlet" method="POST">
                                        <input type="hidden" name="action" value="add">

                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input id="fname" type="text" class="form-control" name="fname" placeholder="First Name">
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input id="lname" type="text" class="form-control" name="lname" placeholder="Last Name">
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                            <input id="email" type="text" class="form-control" name="email" placeholder="Email">
                                        </div>
                                        <div class="input-group">
                                            <label>Date of Birth</label>
                                            <input id="day" type="text" class="form-control" name="day" placeholder="Day">
                                            <input id="month" type="text" class="form-control" name="month" placeholder="Month">
                                            <input id="year" type="text" class="form-control" name="year" placeholder="Year">
                                        </div>

                                        <div class="input-group login-buttons">
                                            <button class="btn btn-primary" type="submit">Create Account</button>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row item-margin-top">
                <div class="col">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit a Users Details</h4>
                        </div>
                        <div class="card-body">
                            <!--Edit a user in the database -->
                            <form action="AccountServlet" method="POST">
                                <input type="hidden" name="action" value="edit">
                                <div class="input-group">
                                    <label>Your Email: </label>
                                    <input id="editemail" type="text" name="editemail" placeholder="Edit email address">
                                </div>
                                <br>
                                <div class="input-group">
                                    <label>Edit First Name: </label>
                                    <input id="editfname" type="text" name="editfname" placeholder="Edit first name">
                                </div>
                                <div class="input-group">
                                    <label>Edit Last Name: </label>
                                    <input id="editlname" type="text" name="editlname" placeholder="Edit last name">
                                </div>
                                <div class="input-group">
                                    <label>Edit Date of Birth: </label><br>
                                    <input id="editday" type="String" name="editday" placeholder="Edit Day"><br>
                                    <input id="editmonth" type="String" name="editmonth" placeholder="Edit Month"><br>
                                    <input id="edityear" type="String" name="edityear" placeholder="Edit Full Year">
                                </div>
                                <div class="input-group">
                                    <button class="btn btn-primary" type="submit">Edit Account Details</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row item-margin-top item-margin-bottom">
                <div class="col">
                    <div class="card">
                        <div class="card-header">
                            <h4>Delete a User</h4>
                        </div>
                        <div class="card-body">
                            <!-- Delete the users account -->
                            <form action="AccountServlet" method="POST">
                                <input type="hidden" name="action" value="delete">
                                <div class="input-group">
                                    <label>Email Address: </label>
                                    <input id="deleteUserEmailAddress" type="text" name="deleteUserEmailAddress" placeholder="Enter email address..">
                                </div>
                                <div class="input-group">
                                    <button class="btn btn-primary" type="submit">Delete Account</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
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
