package com.busking.board.model;

import java.sql.Timestamp;

public class FAQDTO {

	private int faqNum;
	private String userId;
	private String faqPw;
	private String faqTitle;
	private String faqContent;
	private Timestamp faqRegdate;
	private String faqReply;
	private String managerId;
	
	public FAQDTO() {
	}

	public FAQDTO(int faqNum, String userId, String faqPw, String faqTitle, String faqContent, Timestamp faqRegdate,
			String faqReply, String managerId) {
		super();
		this.faqNum = faqNum;
		this.userId = userId;
		this.faqPw = faqPw;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqRegdate = faqRegdate;
		this.faqReply = faqReply;
		this.managerId = managerId;
	}

	public int getFaqNum() {
		return faqNum;
	}

	public void setFaqNum(int faqNum) {
		this.faqNum = faqNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFaqPw() {
		return faqPw;
	}

	public void setFaqPw(String faqPw) {
		this.faqPw = faqPw;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public Timestamp getFaqRegdate() {
		return faqRegdate;
	}

	public void setFaqRegdate(Timestamp faqRegdate) {
		this.faqRegdate = faqRegdate;
	}

	public String getFaqReply() {
		return faqReply;
	}

	public void setFaqReply(String faqReply) {
		this.faqReply = faqReply;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	
	
	
	
	
	
}
