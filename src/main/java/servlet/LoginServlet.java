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

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        //get input from the request
        String emailAddress = request.getParameter("emailAddress");

        //instanciate necessary classes
        AWSUserAccess awsUA = new AWSUserAccess();
        GeneralUser user = awsUA.retrieveUser(emailAddress); //create a user from the database


        //set session attributes with return data
        request.getSession(true).setAttribute("USER", user);

        //open the second page
        RequestDispatcher rd = request.getRequestDispatcher("/secondPage.jsp");
        rd.forward(request, response);
    }



    //send all POST/GET requests to the "ProcessRequest" method

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
