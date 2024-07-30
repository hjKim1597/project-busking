package com.busking.board.model;

import java.sql.Timestamp;

public class CommentAskDTO {
	
	private String comAskNum;
	private String comAskWriter;
	private String comAskContent;
	private Timestamp comAskRegdate;
	private String comAskBno;
	private int comAskLikeCount;
	private String comAskReply;
	private String comAskGroup;
	
	public CommentAskDTO() {
	}

	public CommentAskDTO(String comAskNum, String comAskWriter, String comAskContent, Timestamp comAskRegdate,
			String comAskBno, int comAskLikeCount, String comAskReply, String comAskGroup) {
		super();
		this.comAskNum = comAskNum;
		this.comAskWriter = comAskWriter;
		this.comAskContent = comAskContent;
		this.comAskRegdate = comAskRegdate;
		this.comAskBno = comAskBno;
		this.comAskLikeCount = comAskLikeCount;
		this.comAskReply = comAskReply;
		this.comAskGroup = comAskGroup;
	}

	public String getComAskNum() {
		return comAskNum;
	}

	public void setComAskNum(String comAskNum) {
		this.comAskNum = comAskNum;
	}

	public String getComAskWriter() {
		return comAskWriter;
	}

	public void setComAskWriter(String comAskWriter) {
		this.comAskWriter = comAskWriter;
	}

	public String getComAskContent() {
		return comAskContent;
	}

	public void setComAskContent(String comAskContent) {
		this.comAskContent = comAskContent;
	}

	public Timestamp getComAskRegdate() {
		return comAskRegdate;
	}

	public void setComAskRegdate(Timestamp comAskRegdate) {
		this.comAskRegdate = comAskRegdate;
	}

	public String getComAskBno() {
		return comAskBno;
	}

	public void setComAskBno(String comAskBno) {
		this.comAskBno = comAskBno;
	}

	public int getComAskLikeCount() {
		return comAskLikeCount;
	}

	public void setComAskLikeCount(int comAskLikeCount) {
		this.comAskLikeCount = comAskLikeCount;
	}

	public String getComAskReply() {
		return comAskReply;
	}

	public void setComAskReply(String comAskReply) {
		this.comAskReply = comAskReply;
	}

	public String getComAskGroup() {
		return comAskGroup;
	}

	public void setComAskGroup(String comAskGroup) {
		this.comAskGroup = comAskGroup;
	}


}
