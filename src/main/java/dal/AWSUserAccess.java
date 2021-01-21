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
                user.setUserID(rs.getInt("userID"));
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));;
                user.setUserType(rs.getInt("userType"));
            }

            conn.close();

        }catch(Exception e){
            System.out.println(e);
        }

        return user;
    }



    public void insertNewUser(GeneralUser newUser){

        Connection conn = AWSConnection.establishDatabaseConnection();

        try{
            Statement st = conn.createStatement();
            st.execute("insert into User (firstName, lastName, email, dateOfBirth, userType) values('" + newUser.getFirstName()
                    + "', '" + newUser.getLastName() + "', '" + newUser.getEmail() + "', '" + newUser.getDateOfBirth()
                    + "', " + newUser.getUserType() + ")");

            conn.close();

        }catch(Exception e){
            System.out.println(e);
        }

    }



    public String editUser(GeneralUser editUser){

        Connection conn = AWSConnection.establishDatabaseConnection();
        String completed = "Editing failed";

        try{
            Statement st = conn.createStatement();
            st.execute("update User set firstName='" + editUser.getFirstName()+"', lastName='" + editUser.getLastName()
                    + "', dateOfBirth='" + editUser.getDateOfBirth() + "', userType=" + editUser.getUserType()
                    + " where email='" + editUser.getEmail() +"'");

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
}
