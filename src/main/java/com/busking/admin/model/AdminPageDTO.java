package com.busking.admin.model;

public class AdminPageDTO {

	private String managerId;
	private String managerPw;
	private String managerEmail;
	private int locaId;
	
	
	public AdminPageDTO() {
	}


	public AdminPageDTO(String managerId, String managerPw, String managerEmail, int locaId) {
		super();
		this.managerId = managerId;
		this.managerPw = managerPw;
		this.managerEmail = managerEmail;
		this.locaId = locaId;
	}


	public String getManagerId() {
		return managerId;
	}


	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}


	public String getManagerPw() {
		return managerPw;
	}


	public void setManagerPw(String managerPw) {
		this.managerPw = managerPw;
	}


	public String getManagerEmail() {
		return managerEmail;
	}


	public void setManagerEmail(String managerEmail) {
		this.managerEmail = managerEmail;
	}


	public int getLocaId() {
		return locaId;
	}


	public void setLocaId(int locaId) {
		this.locaId = locaId;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
