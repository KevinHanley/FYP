package servlet;

import bll.GeneralUser;
import bll.PasswordImage;
import com.oracle.tools.packager.IOUtils;
import dal.AWSImageAccess;
import dal.AWSPasswordAccess;
import dal.ImageHash;

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
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Paths;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Base64;

@WebServlet(name = "ImageServlet")
@MultipartConfig
public class ImageServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String imageAction = request.getParameter("imageaction");

        switch (imageAction) {
            case "upload":
                uploadImage(request, response);
                break;
            case "retrieve":
                retrieveImage(request, response);
                break;
            case "compare":
                compareImage(request, response);
                break;
            case "firstpassword":
                openConfirmation(request, response);
                break;
            case "secondpassword":
                confirmPasswords(request, response);
                break;
            default:
                //do nothing
                break;

        }
    }





    private void uploadImage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Source of retrieval code below: https://stackoverflow.com/questions/2422468/how-to-upload-files-to-server-using-jsp-servlet
        // inputStream to BufferedImage help: https://stackoverflow.com/questions/6464432/how-do-i-convert-a-inputstream-to-bufferedimage-in-java-groovy

        // Get the user
        GeneralUser user = (GeneralUser) request.getSession().getAttribute("USER");

        // Get the input file
        Part filePart = request.getPart("file");

        // Get the files name
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        //convert the input file into an inputStream
        InputStream fileContent = filePart.getInputStream();

        //convert the inputStream to a BufferedImage and pass it to the hashing function
        BufferedImage uploadedImage = ImageIO.read(fileContent);

        //Save as a BLOB in Remote AWS MySQL Database
        AWSImageAccess awsIA = new AWSImageAccess();
        awsIA.uploadImageToMySQL(fileName, uploadedImage, user);

        //Get image back from database
        PasswordImage passImg = new PasswordImage();
        int userID = user.getUserID();
        passImg = awsIA.retrieveImageFromMySQL(userID);

        request.getSession(true).setAttribute("IMAGEPASS", passImg);

        RequestDispatcher rd = request.getRequestDispatcher("/createPassword.jsp");
        rd.forward(request, response);
    }





    protected void retrieveImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get the user and their ID number
        GeneralUser user = (GeneralUser) request.getSession().getAttribute("USER");
        int userID = user.getUserID();

        //search for their image and return it
        AWSImageAccess imageAccess = new AWSImageAccess();
        PasswordImage passImage;
        passImage = imageAccess.retrieveImageFromMySQL(userID);

        request.getSession(true).setAttribute("IMAGEPASS", passImage);

        RequestDispatcher rd = request.getRequestDispatcher("/password.jsp");
        rd.forward(request, response);
    }





    private void openConfirmation(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Capture tiles selected by user
        String tileArray1 = request.getParameter("tilearray1");
        request.getSession(true).setAttribute("TILEARRAY1", tileArray1);

        RequestDispatcher rd = request.getRequestDispatcher("/confirmPassword.jsp");
        rd.forward(request, response);
    }





    private void confirmPasswords(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Capture the second set of tiles selected by user
        String tileArray2 = request.getParameter("tilearray2");
        request.getSession(true).setAttribute("TILEARRAY2", tileArray2);

        //Get the first sequence of Tiles
        String tileArray1 = (String) request.getSession().getAttribute("TILEARRAY1");

        //get session objects
        PasswordImage passImage = (PasswordImage) request.getSession().getAttribute("IMAGEPASS");
        GeneralUser user = (GeneralUser) request.getSession().getAttribute("USER");


        String finalTest = "DIDN'T WORK CHIEF";
        String destination = "/confirmPassword.jsp"; // default destination

        //Check if the two sequences of tiles match
        if(tileArray1.equals(tileArray2)){
            //passwords are equal

            //Generate Hash
            ImageHash ih = new ImageHash();
            String generatedHash = ih.generateImageHash(tileArray1, passImage);

            //Save hash to Database
            AWSPasswordAccess passwordAccess = new AWSPasswordAccess();
            passwordAccess.storeHash(user, generatedHash);

            finalTest = "A GREAT SUCCESS!";
            destination = "/secondPage.jsp";

        }else{
            //send error message back to confirmPassword.jsp
            //use if statement within HTML to display the error message, changed by setting a seesion attribute true/false.*******************************************
        }

        request.getSession(true).setAttribute("FINALHASHTEST", finalTest);


        RequestDispatcher rd = request.getRequestDispatcher(destination);
        rd.forward(request, response);
    }




    private void compareImage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Capture tiles selected by user
        String tileArray = request.getParameter("tilearray");

        //get the users image
        PasswordImage passImage = (PasswordImage) request.getSession().getAttribute("IMAGEPASS");

        //Get the User
        GeneralUser user = (GeneralUser) request.getSession().getAttribute("USER");

        //Convert Co-ordinates into image segments
        ImageHash ih = new ImageHash();
        String generatedHash = ih.generateImageHash(tileArray, passImage);

        //Compare hash to Database
        AWSPasswordAccess passwordAccess = new AWSPasswordAccess();
        boolean matching = passwordAccess.compareHash(user, generatedHash);

        String destination = "/password.jsp";

        if(matching == true){
            //open loggedIn.jsp
            destination = "/loggedIn.jsp";

        }else{
            //return to password.jsp
            //use if statement within HTML to display the error message, changed by setting a seesion attribute true/false. *******************************************
        }


        RequestDispatcher rd = request.getRequestDispatcher(destination);
        rd.forward(request, response);
    }





    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}

//Good CODE
//  https://stackoverflow.com/questions/1264709/convert-inputstream-to-byte-array-in-java
//half way down, had 19 votes
//this concerns getting pixel data, relevant for iteration 3