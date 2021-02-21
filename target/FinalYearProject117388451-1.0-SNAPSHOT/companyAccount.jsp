<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 01/02/2021
  Time: 6:05 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

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

    <div class="container" style="margin-top: 50px;">
        <div class="page-header">
            <h1>Register your Organisation</h1>
        </div>
    </div>


    <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-header">
                        Create Account
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Enter Details</h5>
                        <form action="OrganisationServlet" method="POST">
                            <input type="hidden" name="action" value="addOrg">

                            <!-- Name -->
                            <div class="form-group">
                                <label for="orgname">Organisation Name</label>
                                <input type="text" class="form-control" id="orgname" name="orgname" placeholder="Organisation Name">
                            </div>

                            <!-- Email -->
                            <div class="form-group">
                                <label for="orgemail">Primary email address</label>
                                <input type="email" class="form-control" id="orgemail" name="orgemail" placeholder="name@yourdomain.ie">
                            </div>

                            <!-- Type -->
                            <div class="form-group">
                                <label for="orgcategory">Organisation Category</label>
                                <select class="form-control" name="orgcategory" id="orgcategory">
                                    <option value="education">Education</option>
                                    <option value="technology">Information Technology</option>
                                    <option value="manufacturing">Manufacturing</option>
                                    <option value="agriculture">Agriculture</option>
                                    <option value="finance">Financial Services</option>
                                    <option value="realestate">Real Estate</option>
                                    <option value="health">Health Care</option>
                                    <option value="energy">Energy</option>
                                    <option value="retail">Retail</option>
                                    <option value="communications">Communications</option>
                                </select>
                            </div>

                            <!-- Domain -->
                            <div class="form-group">
                                <label for="orgdomain">Organisation Domain</label>
                                <input type="text" class="form-control" id="orgdomain" name="orgdomain" placeholder="www.yourdomain.ie">
                            </div>

                            <!-- Type -->
                            <div class="form-group">
                                <label for="orgplan">Business Plan</label>
                                <select class="form-control" name="orgplan" id="orgplan">
                                    <option value="1">Premium</option>
                                    <option value="2">Enterprise</option>
                                </select>
                            </div>

                            <!-- Card -->
                            <div class="form-group">
                                <label for="orgcardnum">Card Number</label>
                                <input type="number" class="form-control" id="orgcardnum" name="orgcardnum">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col">
                                        <label for="orgexpirymm">Expiry Month</label>
                                        <select class="form-control" name="orgexpirymm" id="orgexpirymm">
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
                                        <label for="orgexpiryyy">Expiry Year</label>
                                        <select class="form-control" name="orgexpiryyy" id="orgexpiryyy">
                                            <option value='2021'>2021</option>
                                            <option value='2022'>2022</option>
                                            <option value='2023'>2023</option>
                                            <option value='2024'>2024</option>
                                            <option value='2025'>2025</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="orgcvv">CVV Number</label>
                                <input type="number" class="form-control" id="orgcvv" name="orgcvv">
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
</section>


<!-- Option 2: Separate Popper and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</body>
</html>
