package dal;

import bll.GeneralUser;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class AWSPasswordAccess {


    public void storeHash(GeneralUser user, String inputHash){
        Connection conn = AWSConnection.establishDatabaseConnection();

        try{
            Statement st = conn.createStatement();
            st.execute("insert into Password (hash, userID) values ('" + inputHash + "', " + user.getUserID() + ");");
            conn.close();
        }catch(Exception e){
            System.out.println(e);
        }
    }


    public String retrieveHash(GeneralUser user){

        String hash = null;
        Connection conn = AWSConnection.establishDatabaseConnection();

        try{
            Statement st = conn.createStatement();
            ResultSet rs;

            rs = st.executeQuery("select * from Password where userID="+ user.getUserID() +"");
            while (rs.next()){
                hash = rs.getString("hash");
            }
            conn.close();

        }catch(Exception e){
            System.out.println(e);
        }

        return hash;
    }


    public boolean compareHash(GeneralUser user, String inputHash){

        boolean correctMatch = false;

        //retrieve the users hash from retrieveHash() above
        String dbHash = retrieveHash(user);

        //compare to input Hash
        if(dbHash == inputHash){
            correctMatch = true;
        }

        //return boolean result
        return correctMatch;
    }

}
