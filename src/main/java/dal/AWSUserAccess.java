package dal;
import bll.GeneralUser;
import dal.AWSConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class AWSUserAccess {

    public GeneralUser retrieveUser(String inputEmailAddress){

        GeneralUser user = null;
        Connection conn = AWSConnection.establishDatabaseConnection();

        try{
            Statement st = conn.createStatement();
            ResultSet rs;

            rs = st.executeQuery("select * from User where email=" + inputEmailAddress); //SQL
            while (rs.next()){
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("lastName"));
                user.setGender(rs.getString("gender"));
            }

            conn.close();

        }catch(Exception e){
            System.out.println(e);
        }

        return user;
    }



    public void insertNewUser(){

    }

    public void deleteUser(){

    }

    public void editUser(){

    }

    public String getNameFromDB(){

        Connection conn = AWSConnection.establishDatabaseConnection();
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
