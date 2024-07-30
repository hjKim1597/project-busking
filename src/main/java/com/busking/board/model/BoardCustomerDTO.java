package com.busking.board.model;

import java.sql.Date;

public class BoardCustomerDTO {

	// SQL 칼럼명이랑 똑같이 변수만들기
	private int noticeNum;
	private String managerId;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeRegdate;
	private int noticeHit;
	private String resTime; 

	// 생성자
	public BoardCustomerDTO() {

	}

	public BoardCustomerDTO(int noticeNum, String managerId, String noticeTitle, String noticeContent,
			Date noticeRegdate, int noticeHit, String resTime) {
		super();
		this.noticeNum = noticeNum;
		this.managerId = managerId;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeRegdate = noticeRegdate;
		this.noticeHit = noticeHit;
		this.resTime = resTime;
	}

	public int getNoticeNum() {
		return noticeNum;
	}

	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getNoticeRegdate() {
		return noticeRegdate;
	}

	public void setNoticeRegdate(Date noticeRegdate) {
		this.noticeRegdate = noticeRegdate;
	}

	public int getNoticeHit() {
		return noticeHit;
	}

	public void setNoticeHit(int noticeHit) {
		this.noticeHit = noticeHit;
	}

	public String getResTime() {
		return resTime;
	}

	public void setResTime(String resTime) {
		this.resTime = resTime;
	}
	
	

	
	
}
