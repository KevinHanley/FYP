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
    <title>Page 2</title>
</head>
<body>
    <h1>Output testing page.</h1>

    <br>
    <br>

    <!-- The following HTML is only used to verify java methods are -->
    <!-- outputted correctly to the front-end. These are only placeholders. -->

    <!-- display returned users details -->
    <h3>Retrieving User Details on Login</h3>
    <p>Email: ${USER.getEmail()}</p>
    <p>Name: ${USER.getFirstName()}</p>
    <p>Surname: ${USER.getLastName()}</p>

    <br>
    <br>

    <h3>Add New User test</h3>
    <p>Result of adding: ${ADDRESULT}</p>

    <br>
    <br>

    <h3>Edit User Details test</h3>
    <p>Result of edits: ${EDITRESULT}</p>

    <br>
    <br>

    <h3>Delete User Details test</h3>
    <p>Result of deletion: ${DELETERESULT}</p>

    <br>
    <br>

    <h3>*** Name of uploaded file ***</h3>
    <p>Name: ${FILENAME}</p>
    <p>Image Hash: ${NEWHASH}</p>
    <p>Result: ${UPLOADRESULT}</p>

    <br>
    <br>


    <!-- output of image hashes -->
    <h3>Results of the Hash Test</h3>
    <p>The Hash input is: ${INPUT}</p>
    <p>The Hash output is: ${OUTPUT}</p>
</body>
</html>
