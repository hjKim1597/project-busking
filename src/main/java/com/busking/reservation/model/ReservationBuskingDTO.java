package com.busking.reservation.model;

import java.sql.Timestamp;

public class ReservationBuskingDTO {
	
	private int dateNum;
	private Timestamp resDate;
	private String locaId;

	public ReservationBuskingDTO() {		
	}

	public ReservationBuskingDTO(int dateNum, Timestamp resDate, String locaId) {
		super();
		this.dateNum = dateNum;
		this.resDate = resDate;
		this.locaId = locaId;
	}

	public int getDateNum() {
		return dateNum;
	}

	public void setDateNum(int dateNum) {
		this.dateNum = dateNum;
	}

	public Timestamp getResDate() {
		return resDate;
	}

	public void setResDate(Timestamp resDate) {
		this.resDate = resDate;
	}

	public String getLocaId() {
		return locaId;
	}

	public void setLocaId(String locaId) {
		this.locaId = locaId;
	}

	
	
}
