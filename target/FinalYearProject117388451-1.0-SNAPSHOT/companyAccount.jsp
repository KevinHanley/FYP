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
    <title>Organisation Account</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/pricing.css" type="text/css"/>

</head>
<body>

<div class="container text-center" id="pricing-header">
    <div class="row">
        <div class="col">
            <h1>Select an Account Plan</h1>

            <p>Choose an account plan that best suits your needs.</p>
        </div>
    </div>

    <div class="row pricing-spacing">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    Free
                </div>
                <div class="card-body">
                    <h5 class="card-title">€0 / mo</h5>
                    <ul class="list-unstyled">
                        <li>1 users included</li>
                        <li>1 GB of storage</li>
                        <li>Email support</li>
                        <li>Help center access</li>
                    </ul>
                    <a href="#" class="btn btn-outline-primary">Sign Up</a>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <div class="card-header">
                    Premium
                </div>
                <div class="card-body">
                    <h5 class="card-title">€25 / mo</h5>
                    <ul class="list-unstyled">
                        <li>10 users included</li>
                        <li>15 GB of storage</li>
                        <li>Priority email support</li>
                        <li>Help center access</li>
                    </ul>
                    <a href="#" class="btn btn-outline-primaryy">Sign Up</a>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <div class="card-header">
                    Enterprise
                </div>
                <div class="card-body">
                    <h5 class="card-title">€50 / mo</h5>
                    <ul class="list-unstyled">
                        <li>Unlimited users included</li>
                        <li>Unlimited GB of storage</li>
                        <li> 24/7 Phone and email support</li>
                        <li>Help center access</li>
                    </ul>
                    <a href="#" class="btn btn-outline-primary">Sign Up</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row">

    </div>
</div>


<!-- Option 2: Separate Popper and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</body>
</html>
