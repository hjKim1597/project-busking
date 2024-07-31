package com.busking.board.model;

import java.sql.Timestamp;

public class CommentFreeDTO {
	
	private String comFreeNum;
	private String comFreeWriter;
	private String comFreeContent;
	private Timestamp comFreeRegdate;
	private String comFreeBno;
	private int comFreeLikeCount;
	private String comFreeReply;
	private String comFreeGroup;
	private int comFreeLeft;
	private int comFreeDepth;
	
	public CommentFreeDTO() {
	}

	public CommentFreeDTO(String comFreeNum, String comFreeWriter, String comFreeContent, Timestamp comFreeRegdate,
			String comFreeBno, int comFreeLikeCount, String comFreeReply, String comFreeGroup, int comFreeLeft, int comFreeDepth) {
		super();
		this.comFreeNum = comFreeNum;
		this.comFreeWriter = comFreeWriter;
		this.comFreeContent = comFreeContent;
		this.comFreeRegdate = comFreeRegdate;
		this.comFreeBno = comFreeBno;
		this.comFreeLikeCount = comFreeLikeCount;
		this.comFreeReply = comFreeReply;
		this.comFreeGroup = comFreeGroup;
		this.comFreeLeft = comFreeLeft;
		this.comFreeDepth = comFreeDepth;
	}

	public int getComFreeDepth() {
		return comFreeDepth;
	}

	public void setComFreeDepth(int comFreeDepth) {
		this.comFreeDepth = comFreeDepth;
	}

	public int getComFreeLeft() {
		return comFreeLeft;
	}

	public void setComFreeLeft(int comFreeLeft) {
		this.comFreeLeft = comFreeLeft;
	}

	public String getComFreeNum() {
		return comFreeNum;
	}

	public void setComFreeNum(String comFreeNum) {
		this.comFreeNum = comFreeNum;
	}

	public String getComFreeWriter() {
		return comFreeWriter;
	}

	public void setComFreeWriter(String comFreeWriter) {
		this.comFreeWriter = comFreeWriter;
	}

	public String getComFreeContent() {
		return comFreeContent;
	}

	public void setComFreeContent(String comFreeContent) {
		this.comFreeContent = comFreeContent;
	}

	public Timestamp getComFreeRegdate() {
		return comFreeRegdate;
	}

	public void setComFreeRegdate(Timestamp comFreeRegdate) {
		this.comFreeRegdate = comFreeRegdate;
	}

	public String getComFreeBno() {
		return comFreeBno;
	}

	public void setComFreeBno(String comFreeBno) {
		this.comFreeBno = comFreeBno;
	}

	public int getComFreeLikeCount() {
		return comFreeLikeCount;
	}

	public void setComFreeLikeCount(int comFreeLikeCount) {
		this.comFreeLikeCount = comFreeLikeCount;
	}

	public String getComFreeReply() {
		return comFreeReply;
	}

	public void setComFreeReply(String comFreeReply) {
		this.comFreeReply = comFreeReply;
	}

	public String getComFreeGroup() {
		return comFreeGroup;
	}

	public void setComFreeGroup(String comFreeGroup) {
		this.comFreeGroup = comFreeGroup;
	}


}
