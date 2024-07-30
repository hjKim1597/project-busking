package com.busking.admin.model;

import java.sql.Date;

public class AdminPageDTO {
	
	private String resNum;
	private String userId;
	private String userName;
	private Date resDate;
	private String locaName;
	private String resAmp;
	private String resContent;
	private int resCount;
	private int userPno;
	private String userEmail;
	private String userAddr;
	private String manangerId;
	private String locaId;
	private String locaPlace;
	private String resResult;

	

	public AdminPageDTO() {
	}



	public AdminPageDTO(String resNum, String userId, String userName, Date resDate, String locaName, String resAmp,
			String resContent, int resCount, int userPno, String userEmail, String userAddr, String manangerId,
			String locaId, String locaPlace, String resResult) {
		super();
		this.resNum = resNum;
		this.userId = userId;
		this.userName = userName;
		this.resDate = resDate;
		this.locaName = locaName;
		this.resAmp = resAmp;
		this.resContent = resContent;
		this.resCount = resCount;
		this.userPno = userPno;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.manangerId = manangerId;
		this.locaId = locaId;
		this.locaPlace = locaPlace;
		this.resResult = resResult;
	}



	public String getResNum() {
		return resNum;
	}



	public void setResNum(String resNum) {
		this.resNum = resNum;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public Date getResDate() {
		return resDate;
	}



	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}



	public String getLocaName() {
		return locaName;
	}



	public void setLocaName(String locaName) {
		this.locaName = locaName;
	}



	public String getResAmp() {
		return resAmp;
	}



	public void setResAmp(String resAmp) {
		this.resAmp = resAmp;
	}



	public String getResContent() {
		return resContent;
	}



	public void setResContent(String resContent) {
		this.resContent = resContent;
	}



	public int getResCount() {
		return resCount;
	}



	public void setResCount(int resCount) {
		this.resCount = resCount;
	}



	public int getUserPno() {
		return userPno;
	}



	public void setUserPno(int userPno) {
		this.userPno = userPno;
	}



	public String getUserEmail() {
		return userEmail;
	}



	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}



	public String getUserAddr() {
		return userAddr;
	}



	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}



	public String getManangerId() {
		return manangerId;
	}



	public void setManangerId(String manangerId) {
		this.manangerId = manangerId;
	}



	public String getLocaId() {
		return locaId;
	}



	public void setLocaId(String locaId) {
		this.locaId = locaId;
	}



	public String getLocaPlace() {
		return locaPlace;
	}



	public void setLocaPlace(String locaPlace) {
		this.locaPlace = locaPlace;
	}



	public String getResResult() {
		return resResult;
	}



	public void setResResult(String resResult) {
		this.resResult = resResult;
	}

	

	
}