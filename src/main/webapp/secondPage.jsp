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

<h3>Users Details (first test)</h3>
<p>Email: ${USER.getEmail()}</p>
<p>Name: ${USER.getFirstName()}</p>
<p>Surname: ${USER.getLastName()}</p>
<p>Gender: ${USER.getGender()}</p>

<br>
<br>

<p>The Hash input is: ${INPUT}</p>
<p>The Hash output is: ${OUTPUT}</p>
</body>
</html>
