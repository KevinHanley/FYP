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
        ImageHash ih = new ImageHash();
        String outputHash = ih.generateImageHash(uploadedImage);

        //save to AWS s3 (Currently not working due to certificate errors, using AWS RDS instead)
//        AWSImageAccess awsIA = new AWSImageAccess();
//        String result = awsIA.uploadImage(uploadedImage);


        //Save as a BLOB in Remote AWS MySQL Database
        AWSImageAccess awsIA = new AWSImageAccess();
        String mysqlResult = awsIA.uploadImageToMySQL(fileName, uploadedImage, user);

        //Get image back from database
//        PasswordImage passImg = new PasswordImage();
//        int userID = user.getUserID();
//        passImg = awsIA.retrieveImageFromMySQL(userID);


        //Save Hash to Database
        AWSPasswordAccess passwordAccess = new AWSPasswordAccess();
        passwordAccess.storeHash(user, outputHash);

        //Return results to front-end
        request.getSession(true).setAttribute("FILENAME", fileName);
        request.getSession(true).setAttribute("NEWHASH", outputHash);
        request.getSession(true).setAttribute("UPLOADRESULT", mysqlResult);
        RequestDispatcher rd = request.getRequestDispatcher("/secondPage.jsp");
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
        //request.setAttribute("IMAGEPASS", passImage);

        RequestDispatcher rd = request.getRequestDispatcher("/password.jsp");
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
        BufferedImage[] bImgArray = ih.cutImage(tileArray, passImage);


        //Following code: https://stackoverflow.com/questions/2438375/how-to-convert-bufferedimage-to-image-to-display-on-jsp
//        ByteArrayOutputStream output = new ByteArrayOutputStream();
//        ImageIO.write(bImg, "png", output);
//        String imageAsBase64 = Base64.getEncoder().encodeToString(output.toByteArray());
//        request.getSession(true).setAttribute("IMAGE64", imageAsBase64);




        //Concat segments
        // maybe use this pixel RGB code?: https://stackoverflow.com/questions/9396159/how-do-i-create-a-bufferedimage-from-array-containing-pixels/9396487
        //convert to Hash

        //compare to Database Hash using: AWSPasswordAccess.java -> compareHash(user, hash)

        //login or reject based on boolean returned from compareHash()




        request.getSession(true).setAttribute("SELECTEDTILES", tileArray);

        RequestDispatcher rd = request.getRequestDispatcher("/test.jsp");
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