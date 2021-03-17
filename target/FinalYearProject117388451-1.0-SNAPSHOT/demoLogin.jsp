<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 16/03/2021
  Time: 7:53 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demo Login</title>

    <!-- Jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <!-- Favicon -->
    <link rel="icon" href="images/favicon-logo.ico" type="image/x-icon">

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/8e47f0960d.js" crossorigin="anonymous"></script>

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/demo.css" type="text/css"/>

</head>
<body>

<!--

    BASE64 Icon: https://base64.guru/converter/encode/image/ico
    StartBootstrap Template: https://startbootstrap.com/snippets/login

-->



<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center">Sign In</h5>
                    <form action="AccountServlet" method="POST" class="form-signin">
                        <input type="hidden" name="action" value="login">

                        <div class="form-label-group">
                            <input type="email" id="loginEmailAddress" name="loginEmailAddress" class="form-control" placeholder="Email address" required autofocus>
                            <label for="loginEmailAddress">Email address</label>
                        </div>

                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">Remember password</label>
                        </div>

                        <hr class="my-4">

                        <button class="btn btn-lg btn-passpic btn-block text-uppercase" type="submit"><img alt="" class="mr-2" src="data:image/x-icon;base64,AAABAAEAEBAAAAEAIABoBAAAFgAAACgAAAAQAAAAIAAAAAEAIAAAAAAAAAQAAMMOAADDDgAAAAAAAAAAAAD///8A////Iv///1H///9R////Uf///1H//fhR/+7RUf/u0lH//flR////Uf///1H///9R////Uf///yL///8A////AP///5L////6////9/////f/9eP3/9WN9//JbPf/yWz3/9WN9//14/f////3////9/////r///+T////AP///wH///+j////////////9+n//8tx///Rgv//2Zf//9mX///Rgv//y3L///fq////////////////o////wH///8B////o////////////96l///Oev//0YP//7g+//+4Pv//0YP//856///epv///////////////6P///8B////Af///6P////////////ShP//15L//71M//+1Nv//tTb//71M///Xkf//0oX///////////////+j////Af///wH//fuj//bm///+/P//1o7//9WN///EXf//tDP//7Qz///EXv//1Yv//9aQ///+/P//9eT///35o////wH///8B//Xko//Pe///9+j//+vJ///HZv//25z//8pv///Kb///25z//8dm///syv//+vL//9ue///36aP///8B////Af/466P/2JX///jt///+/f//36j//8dn///Qf///0H///8dn///gqf////7///bm///Uiv//8dqj////Af/89gD///93//nv6f/04P//9uf///78///tzv//2Zj//9mY///tz////Pf///fp///v1P//15Pp//HYeP9uAAD///8A////B//luDL/0oWN/+Cqnv///7L/6MD5/8Zi///GZP//6sbz//Xlxf/dot//z32f/9yeP////wb///8AAAAAAAAAAAD///8A////AP///wr///8X//bnh//lt57/5rqe//fqeP///0z//v2r//PxB////wD/BgAAAAAAAAAAAAAAAAAA////AP///wT///+J////NP///wAAAAAAAAAAAP///wD///9B////rP///wf///8AAAAAAAAAAAAAAAAAAAAAAP///wD///8C////oP///1j///8A////AP///wD///8A////V////5////8C////AAAAAAAAAAAAAAAAAAAAAAD///8A////AP///1v///+1////KP///wT///8E////J////7P///9c////AP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAP///wD///8J////ev///77///+m////pv///73///97////Cf///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////AP///wT///8r////VP///1T///8s////BP///wAAAAAAAAAAAAAAAAAAAAAAgAEAAIABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAQAAgAEAAPAHAADjxwAA48cAAPAPAADwDwAA+B8AAA==" /> Sign in with PassPic</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</body>
</html>
