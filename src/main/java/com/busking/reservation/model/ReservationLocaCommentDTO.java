package com.busking.reservation.model;

import java.sql.Timestamp;

public class ReservationLocaCommentDTO {

	private int locaCmtNum;
	private String locaContent;
	private Timestamp locaCmtRegDate;
	private int locaScore;
	private String userId;
	private int locaId;
	 
	public ReservationLocaCommentDTO() {		
	}

	public ReservationLocaCommentDTO(int locaCmtNum, String locaContent, Timestamp locaCmtRegDate, int locaScore,
			String userId, int locaId) {
		super();
		this.locaCmtNum = locaCmtNum;
		this.locaContent = locaContent;
		this.locaCmtRegDate = locaCmtRegDate;
		this.locaScore = locaScore;
		this.userId = userId;
		this.locaId = locaId;
	}

	public int getLocaCmtNum() {
		return locaCmtNum;
	}

	public void setLocaCmtNum(int locaCmtNum) {
		this.locaCmtNum = locaCmtNum;
	}

	public String getLocaContent() {
		return locaContent;
	}

	public void setLocaContent(String locaContent) {
		this.locaContent = locaContent;
	}

	public Timestamp getLocaCmtRegDate() {
		return locaCmtRegDate;
	}

	public void setLocaCmtRegDate(Timestamp locaCmtRegDate) {
		this.locaCmtRegDate = locaCmtRegDate;
	}

	public int getLocaScore() {
		return locaScore;
	}

	public void setLocaScore(int locaScore) {
		this.locaScore = locaScore;
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
	
	
	
}
