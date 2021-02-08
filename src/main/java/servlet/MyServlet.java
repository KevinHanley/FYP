package servlet;

import bll.GeneralUser;
import bll.PasswordImage;
import dal.AWSImageAccess;
import dal.AWSOrganisationAccess;
import dal.AWSUserAccess;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.file.Paths;
import java.sql.Blob;
import java.sql.SQLException;

@WebServlet(name = "MyServlet")
@MultipartConfig
public class MyServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        // *********************
        // This Servlet is for running tests
        // *********************


        //Variable to see if user is logging in, retrieving data, editing details or deleting data.
        String action = request.getParameter("action");

        //call suitable method based on input "action"
        switch (action) {
            case "base":
                base64Test(request, response);
                break;
            default:
                //do nothing if no action
                break;
        }

    }

    protected void base64Test(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String base64string = request.getParameter("basestring");
        request.getSession(true).setAttribute("BASE64TEST", base64string);

        RequestDispatcher rd = request.getRequestDispatcher("/loggedIn.jsp");
        rd.forward(request, response);
    }






    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
