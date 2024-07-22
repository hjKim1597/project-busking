package com.busking.mypage.model;

public class MypageDTO {
	
	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private int userPno;
	private String userAddr;

	public MypageDTO() {
	}
	
	
	public MypageDTO(String userId, String userPw, String userName, String userEmail, int userPno, String userAddr) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPno = userPno;
		this.userAddr = userAddr;
	}
	
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
	public int getUserPno() {
		return userPno;
	}
	public void setUserPno(int userPno) {
		this.userPno = userPno;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	
	
}
