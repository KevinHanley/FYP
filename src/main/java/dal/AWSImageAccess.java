package dal;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import dal.AWSConnection;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.*;

public class AWSImageAccess {

    //Create an S3 Bucket on AWS
    public String createS3Bucket(){

        String message = "Failed To Create S3 Bucket";

        try{
            AWSConnection awsConn = new AWSConnection();
            AmazonS3 s3 = awsConn.connectToS3();

            String bucketName = "kevinbucket" + System.currentTimeMillis(); //give bucket globally unique name
            s3.createBucket(bucketName); //create the bucket
            message = "Created Bucket Successfully";

        }catch (AmazonServiceException e) {
            // The call was transmitted successfully, but Amazon S3 couldn't process
            // it, so it returned an error response.
            e.printStackTrace();
        } catch (SdkClientException e) {
            // Amazon S3 couldn't be contacted for a response, or the client
            // couldn't parse the response from Amazon S3.
            e.printStackTrace();
        }

        return message;
    }


    //Upload an Image to the S3
    public String uploadImage(BufferedImage uploadedImage){

        //**********************************
        //Testing with a string first
        //Code for image uploads is below
        //**********************************

        //output for html test page.
        String message = "Failed to Upload Image to S3";

        //Declaring variables
        Regions clientRegion = Regions.EU_WEST_1; //my aws region
        String bucketName = "fyp117388451bucket"; //my aws bucket for the fyp

        String stringObjKeyName = "test_string"; // The key of the test String
        String stringObject = "This is the string that will be uploaded!"; //The test string to be uploaded

        String fileObjKeyName = "key of object"; //key of image to be uploaded
        String fileName = "name of object"; //actual image to be uploaded.

        try {

            AWSConnection awsConn = new AWSConnection();
            AmazonS3 s3 = awsConn.connectToS3();

            // Upload a text string as a new object.
            s3.putObject(bucketName, stringObjKeyName, "Uploaded String Object");

            message = "Upload Success!";

        } catch (AmazonServiceException e) {
            // The call was transmitted successfully, but Amazon S3 couldn't process
            // it, so it returned an error response.
            e.printStackTrace();
        } catch (SdkClientException e) {
            // Amazon S3 couldn't be contacted for a response, or the client
            // couldn't parse the response from Amazon S3.
            e.printStackTrace();
        }


//----------------------------------------------------------------------------------------------------------------------

        //**********************************
        //PROPER CODE TO BE USED IS BELOW, TEST CODE IS ABOVE
        //**********************************

        //Code adapted from these sources:
        //https://stackoverflow.com/questions/6727207/save-a-bufferedimage-object-to-amazon-s3-as-a-file
        //https://www.youtube.com/watch?v=Cnf0wXowWDM&t=312s

//        AWSConnection awsConn = new AWSConnection();
//        AmazonS3 s3 = awsConn.connectToS3();
//
//        //declaring bucket name
//        String nameOfBucket = "fyp117388451bucket";
//        String keyofImage = "imagekey";
//
//        try{
//            //get image as an InputStream
//            BufferedImage image = uploadedImage;
//            ByteArrayOutputStream os = new ByteArrayOutputStream();
//            ImageIO.write(image, "jpg", os);
//            byte[] buffer = os.toByteArray();
//            InputStream is = new ByteArrayInputStream(buffer);
//
//            ObjectMetadata meta = new ObjectMetadata(); //set the meta data for S3
//            meta.setContentLength(buffer.length);
//
//            //send image to s3
//            s3.putObject(new PutObjectRequest(nameOfBucket, keyofImage, is, meta));
//            System.out.println("Upload complete");s
//            message =  "The upload to S3 was a success!";
//
//        }catch (IOException e){
//            System.out.println("Error in IO...");
//            System.out.println(e);
//        }

        return message;
    }




    public void retrieveFromS3(){

        //Adapted from: https://docs.aws.amazon.com/AmazonS3/latest/dev/RetrievingObjectUsingJava.html

        String nameOfBucket = "fyp117388451bucket";
        String keyofImage = "imagekey";

        AWSConnection awsConn = new AWSConnection();
        AmazonS3 s3 = awsConn.connectToS3();

        S3Object obj = s3.getObject(nameOfBucket, keyofImage); //get the image
        S3ObjectInputStream is = obj.getObjectContent();


        //convert to BufferedImage and return to servlet.

    }


    public void deleteFromS3(){

        AWSConnection awsConn = new AWSConnection();
        AmazonS3 s3 = awsConn.connectToS3();

    }

    public void updateS3Image(){

        AWSConnection awsConn = new AWSConnection();
        AmazonS3 s3 = awsConn.connectToS3();

    }

}
