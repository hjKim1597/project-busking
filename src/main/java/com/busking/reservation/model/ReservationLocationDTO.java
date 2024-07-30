package com.busking.reservation.model;

public class ReservationLocationDTO {
	
	private int locaId;
	private String locaName;
	private String locaInfo;
	private String locaPicPath;
	private String locaPointX;
	private String locaPointY;
	private String locaPlace;
	private String ManagerEmail;

	public ReservationLocationDTO() {
	}

	public ReservationLocationDTO(int locaId, String locaName, String locaInfo, String locaPicPath, String locaPointX,
			String locaPointY, String locaPlace, String managerEmail) {
		super();
		this.locaId = locaId;
		this.locaName = locaName;
		this.locaInfo = locaInfo;
		this.locaPicPath = locaPicPath;
		this.locaPointX = locaPointX;
		this.locaPointY = locaPointY;
		this.locaPlace = locaPlace;
		ManagerEmail = managerEmail;
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

	public String getLocaPointX() {
		return locaPointX;
	}

	public void setLocaPointX(String locaPointX) {
		this.locaPointX = locaPointX;
	}

	public String getLocaPointY() {
		return locaPointY;
	}

	public void setLocaPointY(String locaPointY) {
		this.locaPointY = locaPointY;
	}

	public String getLocaPlace() {
		return locaPlace;
	}

	public void setLocaPlace(String locaPlace) {
		this.locaPlace = locaPlace;
	}

	public String getManagerEmail() {
		return ManagerEmail;
	}

	public void setManagerEmail(String managerEmail) {
		ManagerEmail = managerEmail;
	}

	
	

}
