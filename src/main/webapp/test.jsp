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

</head>
<body>
    <div align="center">
        <H2>You selected the following tiles:</H2>

        <h1>${SELECTEDTILES}</h1>

        <img src="data:image/png;base64,${IMAGE64}"/>
    </div>
</body>
</html>
