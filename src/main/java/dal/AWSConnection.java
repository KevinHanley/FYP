package dal;

import java.sql.Connection;
import java.sql.DriverManager;

public class AWSConnection {

    //Establish connection with the remote Amazon Web Services MySQL Database
    //Code apadted from 3rd year Java Project
    public static Connection establishDatabaseConnection(){

        Connection conn = null;

        try{
            String driver = "com.mysql.cj.jdbc.Driver";
            String path = "jdbc:mysql://test.cxhq3iwt6hbg.eu-west-1.rds.amazonaws.com:3306/test?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";
            // arguments appended to the AWS url prevent "file tampering / password changed" error, SSL related I think?
            Class.forName(driver);

            conn = DriverManager.getConnection(path, "admin", "kevin2020");


        }catch(Exception e){
            System.out.println(e);
        }

        return conn;
    }
}
