package com.busking.mypage.model;

public class UserJoinDTO {
    private String userId;
    private String userPw;
    private String userName;
    private String userEmail;
    private String userPno;
    private String userAddr;
    private String userGender;
	public UserJoinDTO() {
	}
    public UserJoinDTO(String userId, String userPw, String userName, String userEmail, String userPno, String userAddr, String userGender) {
        this.userId = userId;
        this.userPw = userPw;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPno = userPno;
        this.userAddr = userAddr;
        this.userGender = userGender;
    }

    // Getters and Setters

	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPno() {
		return userPno;
	}
	public void setUserPno(String userPno) {
		this.userPno = userPno;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	
	
}
