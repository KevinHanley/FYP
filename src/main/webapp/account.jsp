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
                        <li class="nav-item"><a class="nav-link" href="test.jsp">Contact Us</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a class="nav-link active" href="account.jsp">Sign In</a></li>
                        <li class="nav-item"><a class="nav-link" href="account.jsp">My Account</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <div class="container">
        <div class="page-header">
            <h1>Register Free Account or Log In.</h1>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
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

                            <!--Log in to account -->
                            <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">
                                <h5 class="card-title">Enter Details</h5>
                                <form action="AccountServlet" method="POST">
                                    <input type="hidden" name="action" value="login">

                                    <!-- Email -->
                                    <div class="form-group">
                                        <label for="loginEmailAddress">Email Address</label>
                                        <input type="email" class="form-control" id="loginEmailAddress" name="loginEmailAddress" placeholder="Email Address">
                                    </div>

                                    <button class="btn btn-primary" type="submit">Add Administrator</button>
                                </form>
                            </div>

                            <!--Create a free account -->
                            <div class="tab-pane fade" id="signup" role="tabpanel" aria-labelledby="signup-tab">
                                <h5 class="card-title">Create Free Account</h5>
                                <form action="AccountServlet" method="POST">
                                    <input type="hidden" name="action" value="add">

                                    <!-- First Name -->
                                    <div class="form-group">
                                        <label for="fname">First Name</label>
                                        <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name">
                                    </div>

                                    <!-- Last Name -->
                                    <div class="form-group">
                                        <label for="lname">Last Name</label>
                                        <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name">
                                    </div>

                                    <!-- Email -->
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                                    </div>

                                    <!-- Date of Birth -->
                                    <div class="form-row">
                                        <div class="col">
                                            <label for="date">Date</label>
                                            <select class="form-control" name="date" id="date">
                                                <option value='01'>1</option>
                                                <option value='02'>2</option>
                                                <option value='03'>3</option>
                                                <option value='04'>4</option>
                                                <option value='05'>5</option>
                                                <option value='06'>6</option>
                                                <option value='07'>7</option>
                                                <option value='08'>8</option>
                                                <option value='09'>9</option>
                                                <option value='10'>10</option>
                                                <option value='11'>11</option>
                                                <option value='12'>12</option>
                                                <option value='13'>13</option>
                                                <option value='14'>14</option>
                                                <option value='15'>15</option>
                                                <option value='16'>16</option>
                                                <option value='17'>17</option>
                                                <option value='18'>18</option>
                                                <option value='19'>19</option>
                                                <option value='20'>20</option>
                                                <option value='21'>21</option>
                                                <option value='22'>22</option>
                                                <option value='23'>23</option>
                                                <option value='24'>24</option>
                                                <option value='25'>25</option>
                                                <option value='26'>26</option>
                                                <option value='27'>27</option>
                                                <option value='28'>28</option>
                                                <option value='29'>29</option>
                                                <option value='30'>30</option>
                                                <option value='31'>31</option>

                                            </select>
                                        </div>
                                        <div class="col">
                                            <label for="month">Month</label>
                                            <select class="form-control" name="month" id="month">
                                                <option value='01'>January</option>
                                                <option value='02'>February</option>
                                                <option value='03'>March</option>
                                                <option value='04'>April</option>
                                                <option value='05'>May</option>
                                                <option value='06'>June</option>
                                                <option value='07'>July</option>
                                                <option value='08'>August</option>
                                                <option value='09'>September</option>
                                                <option value='10'>October</option>
                                                <option value='11'>November</option>
                                                <option value='12'>December</option>
                                            </select>
                                        </div>
                                        <div class="col">
                                            <label for="year">Year</label>
                                            <select class="form-control" name="year" id="year">
                                                <option value='2003'>2003</option>
                                                <option value='2002'>2002</option>
                                                <option value='2001'>2001</option>
                                                <option value='2000'>2000</option>
                                                <option value='1999'>1999</option>
                                                <option value='1998'>1998</option>
                                                <option value='1997'>1997</option>
                                                <option value='1996'>1996</option>
                                                <option value='1995'>1995</option>
                                                <option value='1994'>1994</option>
                                                <option value='1993'>1993</option>
                                                <option value='1992'>1992</option>
                                                <option value='1991'>1991</option>
                                                <option value='1990'>1990</option>
                                            </select>
                                        </div>
                                    </div>

                                    <button class="btn btn-primary" type="submit">Create Free Account</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%--    --%>
<%--            <div class="row item-margin-top">--%>
<%--                <div class="col">--%>
<%--                    <div class="card">--%>
<%--                        <div class="card-header">--%>
<%--                            <h4>Edit a Users Details</h4>--%>
<%--                        </div>--%>
<%--                        <div class="card-body">--%>
<%--                            <!--Edit a user in the database -->--%>
<%--                            <form action="AccountServlet" method="POST">--%>
<%--                                <input type="hidden" name="action" value="edit">--%>
<%--                                <div class="input-group">--%>
<%--                                    <label>Your Email: </label>--%>
<%--                                    <input id="editemail" type="text" name="editemail" placeholder="Edit email address">--%>
<%--                                </div>--%>
<%--                                <br>--%>
<%--                                <div class="input-group">--%>
<%--                                    <label>Edit First Name: </label>--%>
<%--                                    <input id="editfname" type="text" name="editfname" placeholder="Edit first name">--%>
<%--                                </div>--%>
<%--                                <div class="input-group">--%>
<%--                                    <label>Edit Last Name: </label>--%>
<%--                                    <input id="editlname" type="text" name="editlname" placeholder="Edit last name">--%>
<%--                                </div>--%>
<%--                                <div class="input-group">--%>
<%--                                    <label>Edit Date of Birth: </label><br>--%>
<%--                                    <input id="editday" type="String" name="editday" placeholder="Edit Day"><br>--%>
<%--                                    <input id="editmonth" type="String" name="editmonth" placeholder="Edit Month"><br>--%>
<%--                                    <input id="edityear" type="String" name="edityear" placeholder="Edit Full Year">--%>
<%--                                </div>--%>
<%--                                <div class="input-group">--%>
<%--                                    <button class="btn btn-primary" type="submit">Edit Account Details</button>--%>
<%--                                </div>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="row item-margin-top item-margin-bottom">--%>
<%--                <div class="col">--%>
<%--                    <div class="card">--%>
<%--                        <div class="card-header">--%>
<%--                            <h4>Delete a User</h4>--%>
<%--                        </div>--%>
<%--                        <div class="card-body">--%>
<%--                            <!-- Delete the users account -->--%>
<%--                            <form action="AccountServlet" method="POST">--%>
<%--                                <input type="hidden" name="action" value="delete">--%>
<%--                                <div class="input-group">--%>
<%--                                    <label>Email Address: </label>--%>
<%--                                    <input id="deleteUserEmailAddress" type="text" name="deleteUserEmailAddress" placeholder="Enter email address..">--%>
<%--                                </div>--%>
<%--                                <div class="input-group">--%>
<%--                                    <button class="btn btn-primary" type="submit">Delete Account</button>--%>
<%--                                </div>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
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
