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
    <title>Title</title>
</head>
<body>
    <h1>My first page</h1>
    <a href="MyServlet">Click me to do something cool!</a>

    <form action="HashServlet" method="POST">
        <div class="input-group">
            <input id="myname" type="text" class="form-control" name="myname" placeholder="myname">
        </div>
        <div class="input-group login-buttons">
            <button class="btn btn-default login-btn" type="submit">Run Test</button>
        </div>
    </form>


</body>
</html>
