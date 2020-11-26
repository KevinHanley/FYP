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
    <title>Select Tiles</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <row>
        <div class="col-md-12">
            <!-- This form will convert an locally stored image into a hash -->
            <h3>Run a Hash Test</h3>
            <img src="life/customer.jpg" alt="1 image" height="200" width="200"><br>

            <form action="HashServlet" method="POST">
                <div>
                    <button type="submit">Test - Create a Hash of This Image</button>
                </div>
            </form>
        </div>
    </row>
</div>


</body>
</html>
