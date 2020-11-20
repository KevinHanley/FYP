package dal;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class ImageHash {

    //******************************************************************************
    //******************************************************************************

    // This code was adapted from these sources:
    // https://howtodoinjava.com/java/java-security/how-to-generate-secure-password-hash-md5-sha-pbkdf2-bcrypt-examples/
    // https://www.tutorialspoint.com/How-to-convert-Image-to-Byte-Array-in-java
    // https://stackoverflow.com/questions/18309868/imageio-iioexception-cant-read-input-file

    //******************************************************************************
    //******************************************************************************


    public String doHash(){
        byte[] data;
        //String passwordToHash = myname;
        String generatedHash = null;

        try { //image thing
            BufferedImage bImage = ImageIO.read(getClass().getResource("/images/test2.jpg"));
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ImageIO.write(bImage, "jpg", bos);
            data = bos.toByteArray();

            try {
                // Create MessageDigest instance
                MessageDigest md = MessageDigest.getInstance("SHA-256");
                //Add password bytes to digest
                            //md.update(passwordToHash.getBytes()); *************
                //Get the hash's bytes
                byte[] bytes = md.digest(data);
                //This bytes[] has bytes in decimal format;
                //Convert it to hexadecimal format
                StringBuilder sb = new StringBuilder();
                for(int i=0; i< bytes.length ;i++)
                {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }
                //Get complete hashed password in hex format
                generatedHash = sb.toString();

            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                System.out.println("***************Hashing Error*************");
            }

        }catch (Exception e){
            System.out.println(e);
            System.out.println("***************Image Error*************");
        }

        System.out.println(generatedHash);
        return generatedHash;
    }


}
