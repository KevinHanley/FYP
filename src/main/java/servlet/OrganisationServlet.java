package servlet;

import bll.GeneralUser;
import bll.Organisation;
import dal.AWSOrganisationAccess;
import dal.AWSUserAccess;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "OrganisationServlet")
public class OrganisationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        //Variable to see if user is logging in, retrieving data, editing details or deleting data.
        String action = request.getParameter("action");

        //call suitable method based on input "action"
        switch (action){
            case "addOrg":
                addOrg(request, response);
                break;
            case "addAdmin":
                addAdmin(request, response);
                break;
            default:
                //do nothing if no action
                break;
        }
    }



    protected void addOrg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //get inputs from the request
        String orgName = request.getParameter("orgname");
        String orgEmail = request.getParameter("orgemail");
        String orgCategory = request.getParameter("orgcategory");
        String orgDomain = request.getParameter("orgdomain");
        String orgPlan = request.getParameter("orgplan");
        String cardNum = request.getParameter("orgcardnum");
        String cardExpiryMM = request.getParameter("orgexpirymm");
        String cardExpiryYY = request.getParameter("orgexpiryyy");
        String cardCVV = request.getParameter("orgcvv");

        String cardExpiry = cardExpiryMM + "/" + cardExpiryYY;

        //Create Organisation Object and assign the input
        Organisation newOrganisation = new Organisation();

        newOrganisation.setOrgName(orgName);
        newOrganisation.setOrgEmail(orgEmail);
        newOrganisation.setOrgDomain(orgDomain);
        newOrganisation.setOrgCategory(orgCategory);
        newOrganisation.setOrgPlan(Integer.parseInt(orgPlan));
        newOrganisation.setCardNum(cardNum);
        newOrganisation.setCardExpiry(cardExpiry);
        newOrganisation.setCardCVV(cardCVV);

        //upload to the database
        AWSOrganisationAccess awsOrg = new AWSOrganisationAccess();
        awsOrg.insertNewOrganisation(newOrganisation);

        //Retrieve the new Organisation (with its newly assigned ID)
        Organisation thisOrganisation = null;
        thisOrganisation = awsOrg.retrieveNewestOrganisation();


        //set session attributes with return data
        request.getSession(true).setAttribute("ORGANISATION", thisOrganisation);

        //create an administrator
        RequestDispatcher rd = request.getRequestDispatcher("/createAdmin.jsp");
        rd.forward(request, response);

    }



    protected void addAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //get inputs from the request
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");
        String gender = request.getParameter("gender");
        String day = request.getParameter("date");
        String month = request.getParameter("month");
        String year = request.getParameter("year");

        //concat date of birth
        String dob = year + "/" + month + "/" + day;

        //Get current Organisation
        Organisation newOrganisation = (Organisation) request.getSession().getAttribute("ORGANISATION");

        //orgID
        int orgID = newOrganisation.getOrgID();

        //userType (default 1 for Admin Account)
        int userType = 1;

        //Assign inputs to the user
        GeneralUser user = new GeneralUser();
        user.setOrgID(orgID);
        user.setFirstName(firstname);
        user.setLastName(lastname);
        user.setEmail(email);
        user.setPhone(phonenumber);
        user.setDateOfBirth(dob);
        user.setGender(gender);
        user.setUserType(userType);

        //Insert new admin to the database
        AWSUserAccess awsUA = new AWSUserAccess();
        awsUA.insertAdmin(user);

        //retrieve the admin and assign it to the session
        GeneralUser admin = awsUA.retrieveAdmin(email); //create a user object from the database
        request.getSession(true).setAttribute("ADMIN", admin);

        //open the upload page
        RequestDispatcher rd = request.getRequestDispatcher("/imageSelection.jsp");
        rd.forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
