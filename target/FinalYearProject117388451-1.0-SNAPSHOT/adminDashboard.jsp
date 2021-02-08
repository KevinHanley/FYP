<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 04/02/2021
  Time: 4:33 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

</head>
<body>

<div class="container">
    <div class="page-header">
        <h1>${ORGANISATION.getOrgName()} Dashboard</h1>
    </div>
</div>

<p>Welcome ${ADMIN.getFirstName()}</p>



<div class="row">
    <div class="col-4">
        <div class="list-group" id="list-tab" role="tablist">
            <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">Home</a>
            <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">Profile</a>
            <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">Messages</a>
            <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">Settings</a>
        </div>
    </div>
    <div class="col-8">
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">...</div>
            <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">...</div>
            <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
            <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
        </div>
    </div>
</div>




<div class="container">
    <p>Organisation Details</p>
    <p>ID: ${ORGANISATION.getOrgID()}</p>
    <p>Name: ${ORGANISATION.getOrgName()}</p>
    <p>Email: ${ORGANISATION.getOrgEmail()}</p>
    <p>Category: ${ORGANISATION.getOrgCategory()}</p>
    <p>Domain: ${ORGANISATION.getOrgDomain()}</p>
    <p>Card Num: ${ORGANISATION.getCardNum()}</p>
    <p>Expiry: ${ORGANISATION.getCardExpiry()}</p>
    <p>CVV: ${ORGANISATION.getCardCVV()}</p>
    <p>Plan: ${ORGANISATION.getOrgPlan()}</p>
</div>

<div class="container">
    <p>Admin Details</p>
    <p>ID: ${ADMIN.getUserID()}</p>
    <p>OrgID: ${ADMIN.getOrgID()}</p>
    <p>First Name: ${ADMIN.getFirstName()}</p>
    <p>Last Name: ${ADMIN.getLastName()}</p>
    <p>Email: ${ADMIN.getEmail()}</p>
    <p>Phone: ${ADMIN.getPhone()}</p>
    <p>Date of Birth: ${ADMIN.getDateOfBirth()}</p>
    <p>Gender: ${ADMIN.getGender()}</p>
    <p>User Type: ${ADMIN.getUserType()}</p>
</div>


<!-- Option 2: Separate Popper and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</body>
</html>

