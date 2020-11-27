package bll;

public class GeneralUser {

    //Decalring attributes
    private int userID;
    private int orgID;
    private int phone;
    private int userType;
    private String firstName;
    private String lastName;
    private String email;
    private String gender;
    private String dateOfBirth;

    //empty initializer
    public GeneralUser(){

    }
    
    // initializer for "not null" database values
    public GeneralUser(String fname, String lname, String email, String dob, int usertype){
        this.firstName = fname;
        this.lastName = lname;
        this.email = email;
        this.setDateOfBirth(dob);
        this.userType = usertype;
    }

    //Getters and Setters
    public int getUserID() {
        return userID;
    }
    public void setUserID(int userID) {
        this.userID = userID;
    }


    public int getOrgID() {
        return orgID;
    }
    public void setOrgID(int orgID) {
        this.orgID = orgID;
    }


    public int getPhone() {
        return phone;
    }
    public void setPhone(int phone) {
        this.phone = phone;
    }


    public int getUserType() {
        return userType;
    }
    public void setUserType(int userType) {
        this.userType = userType;
    }


    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }


    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }


    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }


    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
}
