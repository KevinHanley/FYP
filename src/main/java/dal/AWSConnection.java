package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class AWSConnection {

    public Connection createConnection(){

        Connection conn = null;

        try{
            String driver = "com.mysql.cj.jdbc.Driver";
            String path = "jdbc:mysql://test.cxhq3iwt6hbg.eu-west-1.rds.amazonaws.com:3306/test?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";

            Class.forName(driver);

            conn = DriverManager.getConnection(path, "admin", "kevin2020");


        }catch(Exception e){
            System.out.println(e);
        }

        return conn;
    }

    public void insertRecord(){

    }

    public void deleteRecord(){

    }

    public void editRecord(){

    }

    public String getNameFromDB(){

        Connection conn = createConnection();
        String email = "";
        try{
            Statement st = conn.createStatement();
            ResultSet rs;

            rs = st.executeQuery("select * from User");
            while (rs.next()){
                System.out.println("User's ID Number: " + rs.getInt("userID"));
                System.out.println("User's Org. ID: " + rs.getInt("orgID"));
                System.out.println("User's First Name: " + rs.getString("firstName"));
                System.out.println("User's Last Name: " + rs.getString("lastName"));
                System.out.println("User's Email: " + rs.getString("email"));
                System.out.println("User's Date of Birth: " + rs.getDate("dateOfBirth"));
                System.out.println("User's Gender: " + rs.getString("gender"));
                System.out.println("User's User Type : " + rs.getInt("userType"));
                email = rs.getString("email");
            }

            conn.close();

        }catch(Exception e){
            System.out.println(e);
        }

        return email;
    }
}
