package com.busking.reservation.model;

public class ReservationLocationDTO {
	
	private int locaId;
	private String locaName;
	private String locaInfo;
	private String locaPicPath;
	private String locaPointX;
	private String locaPointY;
	private String locaPlace;
	
	public ReservationLocationDTO() {
	}

	public ReservationLocationDTO(int locaId, String locaName, String locaInfo, String locaPicPath, String locaPointX, String locaPointY,
			String locaPlace) {
		super();
		this.locaId = locaId;
		this.locaName = locaName;
		this.locaInfo = locaInfo;
		this.locaPicPath = locaPicPath;
		this.locaPointX = locaPointX;
		this.locaPointY = locaPointY;
		this.locaPlace = locaPlace;
	}

	public int getLocaId() {
		return locaId;
	}

	public void setLocaId(int locaId) {
		this.locaId = locaId;
	}

	public String getLocaName() {
		return locaName;
	}

	public void setLocaName(String locaName) {
		this.locaName = locaName;
	}

	public String getLocaInfo() {
		return locaInfo;
	}

	public void setLocaInfo(String locaInfo) {
		this.locaInfo = locaInfo;
	}

	public String getLocaPicPath() {
		return locaPicPath;
	}

	public void setLocaPicPath(String locaPicPath) {
		this.locaPicPath = locaPicPath;
	}

	public String getLocaX() {
		return locaPointX;
	}

	public void setLocaX(String locaX) {
		this.locaPointX = locaX;
	}

	public String getLocaY() {
		return locaPointY;
	}

	public void setLocaY(String locaY) {
		this.locaPointY = locaY;
	}

	public String getLocaPlace() {
		return locaPlace;
	}

	public void setLocaPlace(String locaPlace) {
		this.locaPlace = locaPlace;
	}
	
	

}
