package dal;

import bll.Organisation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class AWSOrganisationAccess {



    public void insertNewOrganisation(Organisation newOrg){

        Connection conn = AWSConnection.establishDatabaseConnection();

        try{
            //insert the record to the database
            Statement st = conn.createStatement();
            st.execute("insert into Organisation (name, email, category, domain, plan, cardnum, expiry, cvv) values ('"+ newOrg.getOrgName() +"', '"
                    + newOrg.getOrgEmail() +"', '"+ newOrg.getOrgCategory() +"', '"+ newOrg.getOrgDomain() +"', "+ newOrg.getOrgPlan() + ", '"+ newOrg.getCardNum()
                    +"', '"+ newOrg.getCardExpiry() +"', '"+ newOrg.getCardCVV() +"') ");

            conn.close();

        }catch (Exception e){
            System.out.println(e.toString());
        }
    }



    public Organisation retrieveNewestOrganisation(){

        //SQL to retrieve latest uploaded record: https://stackoverflow.com/questions/5191503/how-to-select-the-last-record-of-a-table-in-sql/5191525

        Organisation thisOrg = new Organisation();
        Connection conn = AWSConnection.establishDatabaseConnection();

        try{
            Statement st = conn.createStatement();
            ResultSet rs;

            rs = st.executeQuery("select * from Organisation order by orgID desc limit 1"); //SQL
            while (rs.next()){

                thisOrg.setOrgID(rs.getInt("orgID"));
                thisOrg.setOrgName(rs.getString("name"));
                thisOrg.setOrgEmail(rs.getString("email"));
                thisOrg.setOrgDomain(rs.getString("domain"));
                thisOrg.setOrgCategory(rs.getString("category"));
                thisOrg.setOrgPlan(rs.getInt("plan"));
                thisOrg.setCardNum(rs.getString("cardnum"));
                thisOrg.setCardExpiry(rs.getString("expiry"));
                thisOrg.setCardCVV(rs.getString("cvv"));

            }

            conn.close();

        }catch(Exception e){
            System.out.println(e);
        }


        return thisOrg;
    }



    public Organisation retrieveOrganisation(int inputID){

        Organisation thisOrg = new Organisation();
        Connection conn = AWSConnection.establishDatabaseConnection();

        try{
            Statement st = conn.createStatement();
            ResultSet rs;

            rs = st.executeQuery("select * from Organisation where orgID=" + inputID); //SQL
            while (rs.next()){

                thisOrg.setOrgID(rs.getInt("orgID"));
                thisOrg.setOrgName(rs.getString("name"));
                thisOrg.setOrgEmail(rs.getString("email"));
                thisOrg.setOrgDomain(rs.getString("domain"));
                thisOrg.setOrgCategory(rs.getString("category"));
                thisOrg.setOrgPlan(rs.getInt("plan"));
                thisOrg.setCardNum(rs.getString("cardnum"));
                thisOrg.setCardExpiry(rs.getString("expiry"));
                thisOrg.setCardCVV(rs.getString("cvv"));

            }

            conn.close();

        }catch(Exception e){
            System.out.println(e);
        }

        return thisOrg;
    }



}
