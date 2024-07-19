package com.busking.board.model;

import java.security.Timestamp;

public class BoardFreeDTO {
	
	private String freeNum;
	private String freeWriter;
	private String freeTitle;
	private String freeContent;
	private Timestamp freeRegdate;
	private int freeHit;
	private int freeCmtCount;
	private int freeLikeCount;
	
	public BoardFreeDTO() {
	}

	public BoardFreeDTO(String freeNum, String freeWriter, String freeTitle, String freeContent, Timestamp freeRegdate,
			int freeHit, int freeCmtCount, int freeLikeCount) {
		super();
		this.freeNum = freeNum;
		this.freeWriter = freeWriter;
		this.freeTitle = freeTitle;
		this.freeContent = freeContent;
		this.freeRegdate = freeRegdate;
		this.freeHit = freeHit;
		this.freeCmtCount = freeCmtCount;
		this.freeLikeCount = freeLikeCount;
	}

	public String getFreeNum() {
		return freeNum;
	}

	public void setFreeNum(String freeNum) {
		this.freeNum = freeNum;
	}

	public String getFreeWriter() {
		return freeWriter;
	}

	public void setFreeWriter(String freeWriter) {
		this.freeWriter = freeWriter;
	}

	public String getFreeTitle() {
		return freeTitle;
	}

	public void setFreeTitle(String freeTitle) {
		this.freeTitle = freeTitle;
	}

	public String getFreeContent() {
		return freeContent;
	}

	public void setFreeContent(String freeContent) {
		this.freeContent = freeContent;
	}

	public Timestamp getFreeRegdate() {
		return freeRegdate;
	}

	public void setFreeRegdate(Timestamp freeRegdate) {
		this.freeRegdate = freeRegdate;
	}

	public int getFreeHit() {
		return freeHit;
	}

	public void setFreeHit(int freeHit) {
		this.freeHit = freeHit;
	}

	public int getFreeCmtCount() {
		return freeCmtCount;
	}

	public void setFreeCmtCount(int freeCmtCount) {
		this.freeCmtCount = freeCmtCount;
	}

	public int getFreeLikeCount() {
		return freeLikeCount;
	}

	public void setFreeLikeCount(int freeLikeCount) {
		this.freeLikeCount = freeLikeCount;
	}
	
	
	
	
}
