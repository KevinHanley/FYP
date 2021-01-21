package servlet;

import bll.GeneralUser;
import dal.AWSUserAccess;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AccountServlet")
public class AccountServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        //Variable to see if user is logging in, retrieving data, editing details or deleting data.
        String action = request.getParameter("action");

        //call suitable method based on input "action"
        switch (action){
            case "login":
                loginUser(request, response);
                break;
            case "add":
                addUser(request, response);
                break;
            case "edit":
                editUser(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            default:
                //do nothing if no action
                break;
        }

    }



    private void loginUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //get input from the request
        String emailAddress = request.getParameter("loginEmailAddress");

        //instantiate necessary classes
        AWSUserAccess awsUA = new AWSUserAccess();
        GeneralUser user = awsUA.retrieveUser(emailAddress); //create a user object from the database

        //set session attributes with return data
        request.getSession(true).setAttribute("USER", user);
        //request.getSession(true).setAttribute("imageaction", "retrieve"); //*******************************************************************************

        //Get the users image from the database
        RequestDispatcher rd = request.getRequestDispatcher("ImageServlet?imageaction=retrieve");
        rd.forward(request, response);

    }



    private void addUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //get inputs from the request
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");

        //concat date of birth
        String dob = year + "/" + month + "/" + day;

        //instantiate necessary classes
        AWSUserAccess awsUA = new AWSUserAccess();
        GeneralUser newUser = new GeneralUser(fname, lname, email, dob, 1);

        //add the new user to the database
        String success = awsUA.insertNewUser(newUser);

        //set session attributes with return data
        request.getSession(true).setAttribute("ADDRESULT", success);

        //open the second page
        RequestDispatcher rd = request.getRequestDispatcher("/imageSelection.jsp");
        rd.forward(request, response);

    }



    private void editUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //get inputs from the request
        String fname = request.getParameter("editfname");
        String lname = request.getParameter("editlname");
        String email = request.getParameter("editemail");
        String day = request.getParameter("editday");
        String month = request.getParameter("editmonth");
        String year = request.getParameter("edityear");

        //concat date of birth
        String dob = year + "/" + month + "/" + day;

        //instantiate necessary classes
        AWSUserAccess awsUA = new AWSUserAccess();
        GeneralUser editUser = new GeneralUser(fname, lname, email, dob, 1);

        //add the new user to the database
        String editsCompleted = awsUA.editUser(editUser);

        //set session attributes with return data
        request.getSession(true).setAttribute("EDITRESULT", editsCompleted);

        //open the second page
        RequestDispatcher rd = request.getRequestDispatcher("/secondPage.jsp");
        rd.forward(request, response);







    }



    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //get input from the request
        String emailAddress = request.getParameter("deleteUserEmailAddress");

        //instantiate necessary classes
        AWSUserAccess awsUA = new AWSUserAccess();
        String deletionMessage = awsUA.deleteUser(emailAddress);

        //set session attributes with return data
        request.getSession(true).setAttribute("DELETERESULT", deletionMessage);

        //open the second page
        RequestDispatcher rd = request.getRequestDispatcher("/secondPage.jsp");
        rd.forward(request, response);
    }



    //*********************************************************
    //send all POST/GET requests to the "ProcessRequest" method
    //*********************************************************
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
