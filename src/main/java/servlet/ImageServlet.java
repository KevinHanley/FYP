package servlet;

import bll.GeneralUser;
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
import java.nio.file.Paths;

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
            case "login":
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

        //save to AWS s3
        AWSImageAccess awsIA = new AWSImageAccess();
        String result = awsIA.uploadImage(uploadedImage);

        //Save Hash to Database
        AWSPasswordAccess passwordAccess = new AWSPasswordAccess();
        passwordAccess.storeHash(user, outputHash);

        //Return results to front-end
        request.getSession(true).setAttribute("FILENAME", fileName);
        request.getSession(true).setAttribute("NEWHASH", outputHash);
//        request.getSession(true).setAttribute("UPLOADRESULT", result);
        RequestDispatcher rd = request.getRequestDispatcher("/secondPage.jsp");
        rd.forward(request, response);
    }


    protected void retrieveImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);

        //get the users email
        //search s3 for matching image
        //return the image
        //send to function to cut into 64x64
        //display to user

    }

    private void compareImage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Take input tiles
        //convert to Hash
        //compare to Database Hash using: AWSPasswordAccess.java -> compareHash(user, hash)
        //login or reject based on boolean returned from compareHash()

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