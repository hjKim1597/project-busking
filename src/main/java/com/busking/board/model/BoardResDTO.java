package com.busking.board.model;

import java.sql.Timestamp;

public class BoardResDTO {

	// 필요한 데이터가
	// 글번호, 예약제목, 장소, 시간

	// SQL 칼럼명이랑 똑같이 변수만들기
	private int resNum;
	private String userId;
	private int locaId;
	private Timestamp resDate;
	private Timestamp resRegdate;
	private int resCount;
	private String resContent;
	private String resAmp;
	private int resResult;
	private int dateNum;
	private String resTime;
	private String locaName;
	

	// 생성자
	public BoardResDTO() {

	}

	//
	public BoardResDTO(int resNum, String userId, int locaId, Timestamp resDate, Timestamp resRegdate, int resCount,
			String resContent, String resAmp, int resResult, int dateNum, String resTime, String locaName) {
		super();
		this.resNum = resNum;
		this.userId = userId;
		this.locaId = locaId;
		this.resDate = resDate;
		this.resRegdate = resRegdate;
		this.resCount = resCount;
		this.resContent = resContent;
		this.resAmp = resAmp;
		this.resResult = resResult;
		this.dateNum = dateNum;
		this.resTime = resTime;
		this.locaName = locaName;
		
	}
	
	//getter setter

	public String getLocaName() {
		return locaName;
	}

	public void setLocaName(String locaName) {
		this.locaName = locaName;
	}

	public int getResNum() {
		return resNum;
	}

	public void setResNum(int resNum) {
		this.resNum = resNum;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public int getLocaId() {
		return locaId;
	}


	public void setLocaId(int locaId) {
		this.locaId = locaId;
	}


	public Timestamp getResDate() {
		return resDate;
	}


	public void setResDate(Timestamp resDate) {
		this.resDate = resDate;
	}


	public Timestamp getResRegdate() {
		return resRegdate;
	}


	public void setResRegdate(Timestamp resRegdate) {
		this.resRegdate = resRegdate;
	}


	public int getResCount() {
		return resCount;
	}


	public void setResCount(int resCount) {
		this.resCount = resCount;
	}


	public String getResContent() {
		return resContent;
	}


	public void setResContent(String resContent) {
		this.resContent = resContent;
	}


	public String getResAmp() {
		return resAmp;
	}


	public void setResAmp(String resAmp) {
		this.resAmp = resAmp;
	}


	public int getResResult() {
		return resResult;
	}


	public void setResResult(char resResult) {
		this.resResult = resResult;
	}


	public int getDateNum() {
		return dateNum;
	}


	public void setDateNum(int dateNum) {
		this.dateNum = dateNum;
	}


	public String getResTime() {
		return resTime;
	}


	public void setResTime(String resTime) {
		this.resTime = resTime;
	}

	
	
	
}
