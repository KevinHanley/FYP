<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 03/02/2021
  Time: 8:44 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

</head>
<body>

    <div class="container">
        <div class="page-header">
            <h1>Add an Account Administrator</h1>
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-header">
                        Administrator Details
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Enter Details</h5>
                        <form action="OrganisationServlet" method="POST">
                            <input type="hidden" name="action" value="addAdmin">

                            <div class="form-row">
                                <div class="col">
                                    <!-- First Name -->
                                    <div class="form-group">
                                        <label for="firstname">First Name</label>
                                        <input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name">
                                    </div>
                                </div>
                                <div class="col">
                                    <!-- Last Name -->
                                    <div class="form-group">
                                        <label for="lastname">Last Name</label>
                                        <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name">
                                    </div>
                                </div>
                            </div>


                            <!-- Email -->
                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email Address">
                            </div>


                            <div class="form-row">
                                <div class="col">
                                    <!-- Phone -->
                                    <div class="form-group">
                                        <label for="phonenumber">Phone Number</label>
                                        <input type="number" class="form-control" id="phonenumber" name="phonenumber">
                                    </div>
                                </div>
                                <div class="col">
                                    <!-- Phone -->
                                    <div class="form-group">
                                        <label for="gender">Gender</label>
                                        <select class="form-control" name="gender" id="gender">
                                            <option value='male'>Male</option>
                                            <option value='female'>Female</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col">
                                    <label for="date">Date</label>
                                    <select class="form-control" name="date" id="date">
                                        <option value='01'>1</option>
                                        <option value='02'>2</option>
                                        <option value='03'>3</option>
                                        <option value='04'>4</option>
                                        <option value='05'>5</option>
                                        <option value='06'>6</option>
                                        <option value='07'>7</option>
                                        <option value='08'>8</option>
                                        <option value='09'>9</option>
                                        <option value='10'>10</option>
                                        <option value='11'>11</option>
                                        <option value='12'>12</option>
                                        <option value='13'>13</option>
                                        <option value='14'>14</option>
                                        <option value='15'>15</option>
                                        <option value='16'>16</option>
                                        <option value='17'>17</option>
                                        <option value='18'>18</option>
                                        <option value='19'>19</option>
                                        <option value='20'>20</option>
                                        <option value='21'>21</option>
                                        <option value='22'>22</option>
                                        <option value='23'>23</option>
                                        <option value='24'>24</option>
                                        <option value='25'>25</option>
                                        <option value='26'>26</option>
                                        <option value='27'>27</option>
                                        <option value='28'>28</option>
                                        <option value='29'>29</option>
                                        <option value='30'>30</option>
                                        <option value='31'>31</option>

                                    </select>
                                </div>
                                <div class="col">
                                    <label for="month">Month</label>
                                    <select class="form-control" name="month" id="month">
                                        <option value='01'>January</option>
                                        <option value='02'>February</option>
                                        <option value='03'>March</option>
                                        <option value='04'>April</option>
                                        <option value='05'>May</option>
                                        <option value='06'>June</option>
                                        <option value='07'>July</option>
                                        <option value='08'>August</option>
                                        <option value='09'>September</option>
                                        <option value='10'>October</option>
                                        <option value='11'>November</option>
                                        <option value='12'>December</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label for="year">Year</label>
                                    <select class="form-control" name="year" id="year">
                                        <option value='2003'>2003</option>
                                        <option value='2002'>2002</option>
                                        <option value='2001'>2001</option>
                                        <option value='2000'>2000</option>
                                        <option value='1999'>1999</option>
                                        <option value='1998'>1998</option>
                                        <option value='1997'>1997</option>
                                        <option value='1996'>1996</option>
                                        <option value='1995'>1995</option>
                                        <option value='1994'>1994</option>
                                        <option value='1993'>1993</option>
                                        <option value='1992'>1992</option>
                                        <option value='1991'>1991</option>
                                        <option value='1990'>1990</option>
                                    </select>
                                </div>
                            </div>

                            <button class="btn btn-primary" type="submit">Add Administrator</button>
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

