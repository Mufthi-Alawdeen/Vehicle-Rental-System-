package com.velocity.registration;

import java.sql.Date;

public class User {
    private int userId;
    private String fullname;
    private String username;
    private String email;
    private String phoneNumber;
    private String password;
    private Date dob;
    private String accountType;
    private String avatar;

    // Constructors
    public User() {
        // Default constructor
    }

    public User(int userId, String fullname, String username, String email, String phoneNumber, String password, Date dob, String accountType, String avatar) {
        this.userId = userId;
        this.fullname = fullname;
        this.username = username;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.dob = dob;
        this.accountType = accountType;
        this.avatar = avatar;
    }

    // Getters and Setters
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

	public void userId(int i) {
		// TODO Auto-generated method stub
		
	}
	public String getFullname1() {
        return fullname;
    }

    public void setFullname1(String fullname) {
        this.fullname = fullname;
    }
}
