package servlet;

import com.oracle.tools.packager.IOUtils;
import dal.AWSImageAccess;
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


    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{


        //GOD TIER CODE
        //  https://stackoverflow.com/questions/1264709/convert-inputstream-to-byte-array-in-java
        //half way down, had 19 votes
        //this concerns getting pixel data, relevant for iteration 3



        // Source of retrieval code below: https://stackoverflow.com/questions/2422468/how-to-upload-files-to-server-using-jsp-servlet
        // inputStream to BufferedIamge help: https://stackoverflow.com/questions/6464432/how-do-i-convert-a-inputstream-to-bufferedimage-in-java-groovy

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


        //***********
        //at this point save the hash to the database, to-do in iteration 2 or 3
        //***********


        //save to AWS s3
        AWSImageAccess awsIA = new AWSImageAccess();
        awsIA.uploadImage(uploadedImage);







        //Return results to front-end
        request.getSession(true).setAttribute("FILENAME", fileName);
        request.getSession(true).setAttribute("NEWHASH", outputHash);
        RequestDispatcher rd = request.getRequestDispatcher("/secondPage.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
