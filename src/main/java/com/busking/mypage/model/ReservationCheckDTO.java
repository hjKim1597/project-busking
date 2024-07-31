package com.busking.mypage.model;

import java.sql.Date;

public class ReservationCheckDTO {
    private int resNum;
    private String userName;
    private Date resDate; // Date 타입으로 설정
    private int locaId;
    private String resResult;
    private String resAmp;
    private String resContent;
    private int resCount;
    private String userAddr;
    private String userPno;
    private String userEmail;
    private String resTime;
    private String locaName;
    
    public ReservationCheckDTO() {
	}

	public ReservationCheckDTO(int resNum, String userName, Date resDate, int locaId, String resResult, String resAmp,
			String resContent, int resCount, String userAddr, String userPno, String userEmail, String resTime,
			String locaName) {
		super();
		this.resNum = resNum;
		this.userName = userName;
		this.resDate = resDate;
		this.locaId = locaId;
		this.resResult = resResult;
		this.resAmp = resAmp;
		this.resContent = resContent;
		this.resCount = resCount;
		this.userAddr = userAddr;
		this.userPno = userPno;
		this.userEmail = userEmail;
		this.resTime = resTime;
		this.locaName = locaName;
	}

	public int getResNum() {
		return resNum;
	}

	public void setResNum(int resNum) {
		this.resNum = resNum;
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

	public int getLocaId() {
		return locaId;
	}

	public void setLocaId(int locaId) {
		this.locaId = locaId;
	}

	public String getResResult() {
		return resResult;
	}

	public void setResResult(String resResult) {
		this.resResult = resResult;
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

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getUserPno() {
		return userPno;
	}

	public void setUserPno(String userPno) {
		this.userPno = userPno;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getResTime() {
		return resTime;
	}

	public void setResTime(String resTime) {
		this.resTime = resTime;
	}

	public String getLocaName() {
		return locaName;
	}

	public void setLocaName(String locaName) {
		this.locaName = locaName;
	}

    
	
	
}
