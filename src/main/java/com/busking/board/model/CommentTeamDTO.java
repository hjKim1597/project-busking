package com.busking.board.model;

import java.sql.Timestamp;

public class CommentTeamDTO {
	
	private String comTeamNum;
	private String comTeamWriter;
	private String comTeamContent;
	private Timestamp comTeamRegdate;
	private String comTeamBno;
	private int comTeamLikeCount;
	private String comTeamReply;
	private String comTeamGroup;
	
	public CommentTeamDTO() {
	}

	public CommentTeamDTO(String comTeamNum, String comTeamWriter, String comTeamContent, Timestamp comTeamRegdate,
			String comTeamBno, int comTeamLikeCount, String comTeamReply, String comTeamGroup) {
		super();
		this.comTeamNum = comTeamNum;
		this.comTeamWriter = comTeamWriter;
		this.comTeamContent = comTeamContent;
		this.comTeamRegdate = comTeamRegdate;
		this.comTeamBno = comTeamBno;
		this.comTeamLikeCount = comTeamLikeCount;
		this.comTeamReply = comTeamReply;
		this.comTeamGroup = comTeamGroup;
	}

	public String getComTeamNum() {
		return comTeamNum;
	}

	public void setComTeamNum(String comTeamNum) {
		this.comTeamNum = comTeamNum;
	}

	public String getComTeamWriter() {
		return comTeamWriter;
	}

	public void setComTeamWriter(String comTeamWriter) {
		this.comTeamWriter = comTeamWriter;
	}

	public String getComTeamContent() {
		return comTeamContent;
	}

	public void setComTeamContent(String comTeamContent) {
		this.comTeamContent = comTeamContent;
	}

	public Timestamp getComTeamRegdate() {
		return comTeamRegdate;
	}

	public void setComTeamRegdate(Timestamp comTeamRegdate) {
		this.comTeamRegdate = comTeamRegdate;
	}

	public String getComTeamBno() {
		return comTeamBno;
	}

	public void setComTeamBno(String comTeamBno) {
		this.comTeamBno = comTeamBno;
	}

	public int getComTeamLikeCount() {
		return comTeamLikeCount;
	}

	public void setComTeamLikeCount(int comTeamLikeCount) {
		this.comTeamLikeCount = comTeamLikeCount;
	}

	public String getComTeamReply() {
		return comTeamReply;
	}

	public void setComTeamReply(String comTeamReply) {
		this.comTeamReply = comTeamReply;
	}

	public String getComTeamGroup() {
		return comTeamGroup;
	}

	public void setComTeamGroup(String comTeamGroup) {
		this.comTeamGroup = comTeamGroup;
	}


}
