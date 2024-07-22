package com.busking.board.model;

import java.sql.Timestamp;

public class BoardTeamDTO {
	
	private String teamNum;
	private String teamWriter;
	private String teamTitle;
	private String teamContent;
	private Timestamp teamRegdate;
	private int teamHit;
	private String teamResult;
	private int teamCount;
	private int teamCmtCount;
	private int teamLikeCount;
	
	public BoardTeamDTO() {
	}

	public BoardTeamDTO(String teamNum, String teamWriter, String teamTitle, String teamContent, Timestamp teamRegdate,
			int teamHit, String teamResult, int teamCount, int teamCmtCount, int teamLikeCount) {
		super();
		this.teamNum = teamNum;
		this.teamWriter = teamWriter;
		this.teamTitle = teamTitle;
		this.teamContent = teamContent;
		this.teamRegdate = teamRegdate;
		this.teamHit = teamHit;
		this.teamResult = teamResult;
		this.teamCount = teamCount;
		this.teamCmtCount = teamCmtCount;
		this.teamLikeCount = teamLikeCount;
	}

	public String getTeamNum() {
		return teamNum;
	}

	public void setTeamNum(String teamNum) {
		this.teamNum = teamNum;
	}

	public String getTeamWriter() {
		return teamWriter;
	}

	public void setTeamWriter(String teamWriter) {
		this.teamWriter = teamWriter;
	}

	public String getTeamTitle() {
		return teamTitle;
	}

	public void setTeamTitle(String teamTitle) {
		this.teamTitle = teamTitle;
	}

	public String getTeamContent() {
		return teamContent;
	}

	public void setTeamContent(String teamContent) {
		this.teamContent = teamContent;
	}

	public Timestamp getTeamRegdate() {
		return teamRegdate;
	}

	public void setTeamRegdate(Timestamp teamRegdate) {
		this.teamRegdate = teamRegdate;
	}

	public int getTeamHit() {
		return teamHit;
	}

	public void setTeamHit(int teamHit) {
		this.teamHit = teamHit;
	}

	public String getTeamResult() {
		return teamResult;
	}

	public void setTeamResult(String teamResult) {
		this.teamResult = teamResult;
	}

	public int getTeamCount() {
		return teamCount;
	}

	public void setTeamCount(int teamCount) {
		this.teamCount = teamCount;
	}

	public int getTeamCmtCount() {
		return teamCmtCount;
	}

	public void setTeamCmtCount(int teamCmtCount) {
		this.teamCmtCount = teamCmtCount;
	}

	public int getTeamLikeCount() {
		return teamLikeCount;
	}

	public void setTeamLikeCount(int teamLikeCount) {
		this.teamLikeCount = teamLikeCount;
	}
	
	
}
