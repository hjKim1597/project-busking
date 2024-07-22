package com.busking.reservation.model;

public class ReservationLocationDTO {
	
	private int locaId;
	private String locaName;
	private String locaInfo;
	private String locaPicPath;
	private double locaX;
	private double locaY;
	private String locaPlace;
	
	public ReservationLocationDTO() {
	}

	public ReservationLocationDTO(int locaId, String locaName, String locaInfo, String locaPicPath, double locaX, double locaY,
			String locaPlace) {
		super();
		this.locaId = locaId;
		this.locaName = locaName;
		this.locaInfo = locaInfo;
		this.locaPicPath = locaPicPath;
		this.locaX = locaX;
		this.locaY = locaY;
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

	public double getLocaX() {
		return locaX;
	}

	public void setLocaX(double locaX) {
		this.locaX = locaX;
	}

	public double getLocaY() {
		return locaY;
	}

	public void setLocaY(double locaY) {
		this.locaY = locaY;
	}

	public String getLocaPlace() {
		return locaPlace;
	}

	public void setLocaPlace(String locaPlace) {
		this.locaPlace = locaPlace;
	}
	
	

}
