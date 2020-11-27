package dal;

import java.sql.Connection;
import java.sql.DriverManager;

public class AWSConnection {

    //Establish connection with the remote Amazon Web Services MySQL Database
    //Code adapted from 3rd year Java Project
    public static Connection establishDatabaseConnection(){

        Connection conn = null;

        try{
            String driver = "com.mysql.cj.jdbc.Driver";
            String path = "jdbc:mysql://test.cxhq3iwt6hbg.eu-west-1.rds.amazonaws.com:3306/test?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";
            //Arguments appended to the AWS url above prevent "file tampering / password changed" error.
            //Solution found on: https://stackoverflow.com/questions/51586401/glassfish-keystore-error-after-adding-mysql-connector
            Class.forName(driver);

            conn = DriverManager.getConnection(path, "admin", "kevin2020");


        }catch(Exception e){
            System.out.println(e);
        }

        return conn; //return database connection
    }
}
