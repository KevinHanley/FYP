<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 22/11/2020
  Time: 8:49 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/login.css" type="text/css"/>
</head>
<body>
    <nav class="navbar">
        <div class="container-fluid">
            <!-- This is Logo within the navbar -->
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">Home</a>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <!-- empty -->
            </div>
            <div class="col-sm-4">
                <ul class="nav nav-tabs" id="tabs-headings">
                    <li class="active"><a data-toggle="tab" href="#login-box">Login</a></li>
                    <li><a data-toggle="tab" href="#sign-up-box">Sign Up</a></li>
                </ul>
                <div class="tab-content">
                    <!-- tab 1 for logging in -->
                    <div id="login-box" class="tab-pane fade in active">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4>Enter Login Details</h4></div>
                            <div class="panel-body">
                                <form action="AccountServlet" method="POST">
                                    <input type="hidden" name="action" value="login">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input id="loginEmailAddress" type="text" class="form-control" name="loginEmailAddress" placeholder="Email">
                                    </div>
                                    <div class="input-group login-buttons">
                                        <button class="btn btn-default login-btn" type="submit">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- tab 2 for creating an account -->
                    <div id="sign-up-box" class="tab-pane fade">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4>Create Account</h4></div>
                            <div class="panel-body">
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
                                        <button class="btn btn-default" type="submit">Create Account</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <!-- empty -->
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
                <!-- empty -->
            </div>
            <div class="col-sm-8">
                <!--Edit a user within the database -->
                <h3>Edit a Users Details</h3>
                <form action="AccountServlet" method="POST">
                    <input type="hidden" name="action" value="edit">
                    <div class="input-group">
                        <label>Your Email:</label>
                        <input id="editemail" type="text" name="editemail" placeholder="Edit email address">
                    </div>
                    <br>
                    <div class="input-group">
                        <label>Edit First Name:</label>
                        <input id="editfname" type="text" name="editfname" placeholder="Edit first name">
                    </div>
                    <div class="input-group">
                        <label>Edit Last Name:</label>
                        <input id="editlname" type="text" name="editlname" placeholder="Edit last name">
                    </div>
                    <div class="input-group">
                        <label>Edit Date of Birth:</label>
                        <input id="editday" type="String" name="editday" placeholder="Edit Day">
                        <input id="editmonth" type="String" name="editmonth" placeholder="Edit Month">
                        <input id="edityear" type="String" name="edityear" placeholder="Edit Full Year">
                    </div>
                    <div class="input-group">
                        <button type="submit">Edit Account Details</button>
                    </div>
                </form>
            </div>
            <div class="col-sm-2">
                <!-- empty -->
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">
                <!-- empty -->
            </div>
            <div class="col-sm-8">
                <!--Delete a user from the database -->
                <h3>Delete a User</h3>
                <p>Use 'dale@gmail.com' as the email to run this test.</p>
                <form action="AccountServlet" method="POST">
                    <input type="hidden" name="action" value="delete">
                    <div class="input-group">
                        <label>Email Address:</label>
                        <input id="deleteUserEmailAddress" type="text" name="deleteUserEmailAddress" placeholder="Enter email address..">
                    </div>
                    <div class="input-group">
                        <button type="submit">Delete?</button>
                    </div>
                </form>
            </div>
            <div class="col-sm-2">
                <!-- empty -->
            </div>
        </div>
    </div>

</body>
</html>
