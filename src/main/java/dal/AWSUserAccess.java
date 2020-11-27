package dal;
import bll.GeneralUser;
import dal.AWSConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class AWSUserAccess {

    //Execute SQL commands with the remote MySQL database
    //Code adapted from 3rd year Java Project

    public GeneralUser retrieveUser(String inputEmailAddress){
        GeneralUser user = new GeneralUser();
        Connection conn = AWSConnection.establishDatabaseConnection();

        try{
            Statement st = conn.createStatement();
            ResultSet rs;

            rs = st.executeQuery("select * from User where email='"+ inputEmailAddress +"'"); //SQL
            while (rs.next()){
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));;
            }

            conn.close();

        }catch(Exception e){
            System.out.println(e);
        }

        return user;
    }



    public String insertNewUser(GeneralUser newUser){

        Connection conn = AWSConnection.establishDatabaseConnection();
        String didItWrok = "failed to add user";

        try{
            Statement st = conn.createStatement();
            st.execute("insert into User (firstName, lastName, email, dateOfBirth, userType) values('" + newUser.getFirstName()
                    + "', '" + newUser.getLastName() + "', '" + newUser.getEmail() + "', '" + newUser.getDateOfBirth()
                    + "', " + newUser.getUserType() + ")");

            conn.close();
            System.out.println("*********** A GREAT SUCCESS*************");
            didItWrok = "success";
        }catch(Exception e){
            System.out.println(e);
        }

        return didItWrok;

    }



    public String editUser(GeneralUser editUser){

        Connection conn = AWSConnection.establishDatabaseConnection();
        String completed = "Editing failed";

        try{
            Statement st = conn.createStatement();
            st.execute("update User set firstName='" + editUser.getFirstName()+"', lastName='" + editUser.getLastName() + "', dateOfBirth='" + editUser.getDateOfBirth() + "', userType=" + editUser.getUserType() + " where email='" + editUser.getEmail() +"'");

            conn.close();
            System.out.println("*********** A GREAT SUCCESS*************");
            completed = "Editing was a success!";
        }catch(Exception e){
            System.out.println(e);
        }
        return completed;
    }



    public String deleteUser(String email){

        Connection conn = AWSConnection.establishDatabaseConnection();
        String deletionMessage = "Delete didn't work.";

        try{
            Statement st = conn.createStatement();
            st.execute("delete from User where email='" + email + "'");

            conn.close();
            System.out.println("*********** A GREAT SUCCESS*************");
            deletionMessage = "Deletion was a success!";
        }catch(Exception e){
            System.out.println(e);
        }
        return deletionMessage;
    }



    public String getNameFromDB(){

        Connection conn = AWSConnection.establishDatabaseConnection();
        String fName = "";
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
                fName = rs.getString("firstName");
            }

            conn.close();

        }catch(Exception e){
            System.out.println(e);
        }

        return fName;
    }
}
