<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 18/11/2020
  Time: 9:30 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page 1</title>
</head>
<body>

    <h1>Input testing page.</h1>

    <br>
    <br>

    <!-- This form will retrieve a users data from the database -->
    <h3>Login using database</h3>
    <p>Use '117388451@umail.ucc.ie' as the email to run this test.</p>
    <form action="LoginServlet" method="POST">
        <div>
            <input id="emailAddress" type="text" name="emailAddress" placeholder="Enter email address..">
        </div>
        <div>
            <button type="submit">Login!</button>
        </div>
    </form>

    <br>
    <br>

    <!-- This form will convert an locally stored image into a hash -->
    <h3>Run a Hash Test</h3>
    <form action="HashServlet" method="POST">
        <div>
            <input id="myname" type="text" name="myname" placeholder="Type something to hash here..">
        </div>
        <div>
            <button type="submit">Run Hash Test</button>
        </div>
    </form>

</body>
</html>
