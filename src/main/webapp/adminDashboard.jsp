<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 04/02/2021
  Time: 4:33 p.m.
  To change this template use File | Settings | File Templates.
--%>
<!-- installing jstl library: https://stackoverflow.com/questions/31043869/intellij-and-jsp-jstl-cannot-resolve-taglib-for-jstl-in-tomcat7 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <script type="text/javascript">
        $(document).ready(function(){

            //Modal code for deleting a user.
            $('#confirm-delete').on('show.bs.modal', function(e) {

                $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));

                var button = $(e.relatedTarget); //button that was clicked
                var username = button.data('whatever');
                var modal = $(this);
                //Put the users name into the modal message
                modal.find('.modal-body .p1').text("Are you sure you want to remove:");
                modal.find('.modal-body h2').text(username);
                modal.find('.modal-body .p2').text("This change cannot be undone?");
            });

        });
    </script>
</head>
<body>

<%--<!-- navbar will load here -->--%>
<%--<div id="navigation-load"></div>--%>

<!-- modal to appear when pressing delete button on a record -->
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                Confirm Employee Deletion
            </div>
            <div class="modal-body">
                <p class="p1">message</p>
                <h2>message</h2>
                <p class="p2">message</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>

<div class="container" style="margin-top: 50px;">
    <div class="page-header">
        <h1>${ORGANISATION.getOrgName()} Dashboard</h1>
    </div>
</div>

<div class="container" style="margin-top: 50px;">
    <div class="row">
        <div class="col-4">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">Home</a>
                <a class="list-group-item list-group-item-action" id="list-emplist-list" data-toggle="list" href="#list-emplist" role="tab" aria-controls="emplist">Employee List</a>
                <a class="list-group-item list-group-item-action" id="list-newemp-list" data-toggle="list" href="#list-newemp" role="tab" aria-controls="newemp">New Employees</a>
                <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">Settings</a>
            </div>
        </div>
        <div class="col-8">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
                    <h3>Welcome ${ADMIN.getFirstName()}</h3>

                    <table class="table .table-striped">
                        <thead>
                        <tr>
                            <th scope="col">Category</th>
                            <th scope="col">Details</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Organisation Name</td>
                            <td>${ORGANISATION.getOrgName()}</td>
                        </tr>
                        <tr>
                            <td> OrganisationID</td>
                            <td>${ORGANISATION.getOrgID()}</td>
                        </tr>
                        <tr>
                            <td>Contact Email</td>
                            <td>${ORGANISATION.getOrgEmail()}</td>
                        </tr>
                        <tr>
                            <td>Business Category</td>
                            <td>${ORGANISATION.getOrgCategory()}</td>
                        </tr>
                        <tr>
                            <td>Website Domain</td>
                            <td>${ORGANISATION.getOrgDomain()}</td>
                        </tr>
                        <tr>
                            <td>Card Number</td>
                            <td>${ORGANISATION.getCardNum()}</td>
                        </tr>
                        <tr>
                            <td>Expiry Date</td>
                            <td>${ORGANISATION.getCardExpiry()}</td>
                        </tr>
                        <tr>
                            <td>CVV</td>
                            <td>${ORGANISATION.getCardCVV()}</td>
                        </tr>
                        <tr>
                            <td>Business Plan</td>
                            <td>${ORGANISATION.getOrgPlan()}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="tab-pane fade" id="list-emplist" role="tabpanel" aria-labelledby="list-emplist-list">

                    <!-- The following code was adapted from my 3rd year Java project -->
                    <table class="table .table-striped">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Email</th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${EMPLOYEES}" var="employee">
                            <tr>
                                <th scope="row">${employee.getUserID()}</th>
                                <td>${employee.getFirstName()}</td>
                                <td>${employee.getLastName()}</td>
                                <td>${employee.getEmail()}</td>
                                <td>
                                    <div class="input-group">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" onclick="location.href='AccountServlet?action=openedit&userid=${employee.getUserID()}'">
                                            Edit
                                        </button>
                                    </span>
                                    </div>
                                </td>
                                <td>
                                    <div class="input-group">
                                    <span class="input-group-btn">
                                        <button class="btn btn-danger" data-href="AccountServlet?action=delete&userid=${employee.getUserID()}" data-toggle="modal" data-target="#confirm-delete" data-whatever="${employee.getFirstName()} ${employee.getLastName()}">
                                            Delete
                                        </button>
                                    </span>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="tab-pane fade" id="list-newemp" role="tabpanel" aria-labelledby="list-newemp-list">
                    <div class="card">
                        <div class="card-header">
                            Add a new employee
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Enter Details</h5>
                            <form action="AccountServlet" method="POST">
                                <input type="hidden" name="action" value="addEmployee">

                                <div class="form-row">
                                    <div class="col">
                                        <!-- First Name -->
                                        <div class="form-group">
                                            <label for="firstname">First Name</label>
                                            <input type="text" class="form-control" id="firstname" name="firstname">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <!-- Last Name -->
                                        <div class="form-group">
                                            <label for="lastname">Last Name</label>
                                            <input type="text" class="form-control" id="lastname" name="lastname">
                                        </div>
                                    </div>
                                </div>


                                <!-- Email -->
                                <div class="form-group">
                                    <label for="email">Email Address</label>
                                    <input type="email" class="form-control" id="email" name="email">
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

                                <button class="btn btn-primary" type="submit">Add</button>
                            </form>

                        </div>
                    </div>
                </div> <!-- end tab -->

                <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
                    <h3>Edit and Delete the company details</h3>
                    <p>Changes will cascade to all employees</p>
                    <p>Modal to pop up?</p>

                    <p>Show details of their payment plan, dates payment is due (maybe a loading circle like AWS finance billing tracker).</p>
                    <p>Have other plans</p>
                    <p>MAX EMPLOYEES MUST BE UNDER THE 'business plan' limit!!!!</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

</body>
</html>

