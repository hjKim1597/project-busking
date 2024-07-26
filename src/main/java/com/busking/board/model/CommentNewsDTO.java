package com.busking.board.model;

import java.sql.Timestamp;

public class CommentNewsDTO {
	
	private String comNewsNum;
	private String comNewsWriter;
	private String comNewsContent;
	private Timestamp comNewsRegdate;
	private String comNewsBno;
	private int comNewsLikeCount;
	private String comNewsReply;
	private String comNewsGroup;
	
	public CommentNewsDTO() {
	}

	public CommentNewsDTO(String comNewsNum, String comNewsWriter, String comNewsContent, Timestamp comNewsRegdate,
			String comNewsBno, int comNewsLikeCount, String comNewsReply, String comNewsGroup) {
		super();
		this.comNewsNum = comNewsNum;
		this.comNewsWriter = comNewsWriter;
		this.comNewsContent = comNewsContent;
		this.comNewsRegdate = comNewsRegdate;
		this.comNewsBno = comNewsBno;
		this.comNewsLikeCount = comNewsLikeCount;
		this.comNewsReply = comNewsReply;
		this.comNewsGroup = comNewsGroup;
	}

	public String getComNewsNum() {
		return comNewsNum;
	}

	public void setComNewsNum(String comNewsNum) {
		this.comNewsNum = comNewsNum;
	}

	public String getComNewsWriter() {
		return comNewsWriter;
	}

	public void setComNewsWriter(String comNewsWriter) {
		this.comNewsWriter = comNewsWriter;
	}

	public String getComNewsContent() {
		return comNewsContent;
	}

	public void setComNewsContent(String comNewsContent) {
		this.comNewsContent = comNewsContent;
	}

	public Timestamp getComNewsRegdate() {
		return comNewsRegdate;
	}

	public void setComNewsRegdate(Timestamp comNewsRegdate) {
		this.comNewsRegdate = comNewsRegdate;
	}

	public String getComNewsBno() {
		return comNewsBno;
	}

	public void setComNewsBno(String comNewsBno) {
		this.comNewsBno = comNewsBno;
	}

	public int getComNewsLikeCount() {
		return comNewsLikeCount;
	}

	public void setComNewsLikeCount(int comNewsLikeCount) {
		this.comNewsLikeCount = comNewsLikeCount;
	}

	public String getComNewsReply() {
		return comNewsReply;
	}

	public void setComNewsReply(String comNewsReply) {
		this.comNewsReply = comNewsReply;
	}

	public String getComNewsGroup() {
		return comNewsGroup;
	}

	public void setComNewsGroup(String comNewsGroup) {
		this.comNewsGroup = comNewsGroup;
	}


}
