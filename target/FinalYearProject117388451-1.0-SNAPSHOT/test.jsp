<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 19/01/2021
  Time: 2:35 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test Page</title>

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/test.css" type="text/css"/>

    <script type="text/javascript" src="test.js"></script>

</head>
<body>

    <input type="text" id="imagesearch" placeholder="search">
    <button onclick="SearchPhotos()">Search</button>
    <button onclick="ClearPhotos()">Clear</button>

    <h3>Base64 Test</h3>
    <form action="MyServlet" method="POST">
        <input type="hidden" name="action" value="base">
        <input type="hidden" id="basestring" name="basestring" value="">

        <button class="btn btn-primary" type="submit">Select after choosing image</button>
    </form>

    <h3>Unsplash Images</h3>
    <div id="outputimage">

    </div>

</body>
</html>
