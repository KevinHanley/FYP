<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 18/11/2020
  Time: 9:39 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Testing Outputs</title>

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
            <div class="col-md-2">
            </div>

            <div class="col-md-8">
                <h1>Output testing page.</h1>
            </div>

            <div class="col-md-2">
            </div>
        </div>

        <!-- The following HTML is only used to verify java methods are -->
        <!-- outputted correctly to the front-end. These are only placeholders. -->

        <div class="row">
            <div class="col-md-2">
            </div>

            <div class="col-md-8">
                <!-- display returned users details -->
                <h3>Retrieving User Details on Login</h3>
                <p>Email: ${USER.getEmail()}</p>
                <p>Name: ${USER.getFirstName()}</p>
                <p>Surname: ${USER.getLastName()}</p>
            </div>

            <div class="col-md-2">
            </div>
        </div>


        <div class="row">
            <div class="col-md-2">
            </div>

            <div class="col-md-8">
                <h3>Add New User test</h3>
                <p>Result of adding: ${ADDRESULT}</p>
            </div>

            <div class="col-md-2">
            </div>
        </div>


        <div class="row">
            <div class="col-md-2">
            </div>

            <div class="col-md-8">
                <h3>Edit User Details test</h3>
                <p>Result of edits: ${EDITRESULT}</p>
            </div>

            <div class="col-md-2">
            </div>
        </div>


        <div class="row">
            <div class="col-md-2">
            </div>

            <div class="col-md-8">
                <h3>Delete User Details test</h3>
                <p>Result of deletion: ${DELETERESULT}</p>
            </div>

            <div class="col-md-2">
            </div>
        </div>


        <div class="row">
            <div class="col-md-2">
            </div>

            <div class="col-md-8">
                <h3>*** Name of uploaded file ***</h3>
                <p>Name: ${FILENAME}</p>
                <p>Image Hash: ${NEWHASH}</p>
                <p>Result: ${UPLOADRESULT}</p>
            </div>

            <div class="col-md-2">
            </div>
        </div>



        <div class="row">
            <div class="col-md-2">
            </div>

            <div class="col-md-8">
                <!-- output of image hashes -->
                <h3>Results of the Hash Test</h3>
                <p>The Hash input is: ${INPUT}</p>
                <p>The Hash output is: ${OUTPUT}</p>
            </div>

            <div class="col-md-2">
            </div>
        </div>

        <div class="row">
            <div class="col-md-2">
            </div>

            <div class="col-md-8">
                <a href="MyServlet">View image you just uploaded?</a>
            </div>

            <div class="col-md-2">
            </div>
        </div>
    </div>


</body>
</html>
