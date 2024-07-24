package com.busking.board.model;

import java.sql.Timestamp;

public class BoardNewsDTO {
	
	private String newsNum;
	private String newsWriter;
	private String newsTitle;
	private String newsContent;
	private Timestamp newsRegdate;
	private int newsHit;
	private int newsCmtCount;
	private int newsLikeCount;
	
	
	
	@Override
	public String toString() {
		return "BoardNewsDTO [newsNum=" + newsNum + ", newsWriter=" + newsWriter + ", newsTitle=" + newsTitle
				+ ", newsContent=" + newsContent + ", newsRegdate=" + newsRegdate + ", newsHit=" + newsHit
				+ ", newsCmtCount=" + newsCmtCount + ", newsLikeCount=" + newsLikeCount + "]";
	}

	public BoardNewsDTO() {
	}

	public BoardNewsDTO(String newsNum, String newsWriter, String newsTitle, String newsContent, Timestamp newsRegdate,
			int newsHit, int newsCmtCount, int newsLikeCount) {
		super();
		this.newsNum = newsNum;
		this.newsWriter = newsWriter;
		this.newsTitle = newsTitle;
		this.newsContent = newsContent;
		this.newsRegdate = newsRegdate;
		this.newsHit = newsHit;
		this.newsCmtCount = newsCmtCount;
		this.newsLikeCount = newsLikeCount;
	}

	public String getNewsNum() {
		return newsNum;
	}

	public void setNewsNum(String newsNum) {
		this.newsNum = newsNum;
	}

	public String getNewsWriter() {
		return newsWriter;
	}

	public void setNewsWriter(String newsWriter) {
		this.newsWriter = newsWriter;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public Timestamp getNewsRegdate() {
		return newsRegdate;
	}

	public void setNewsRegdate(Timestamp newsRegdate) {
		this.newsRegdate = newsRegdate;
	}

	public int getNewsHit() {
		return newsHit;
	}

	public void setNewsHit(int newsHit) {
		this.newsHit = newsHit;
	}

	public int getNewsCmtCount() {
		return newsCmtCount;
	}

	public void setNewsCmtCount(int newsCmtCount) {
		this.newsCmtCount = newsCmtCount;
	}

	public int getNewsLikeCount() {
		return newsLikeCount;
	}

	public void setNewsLikeCount(int newsLikeCount) {
		this.newsLikeCount = newsLikeCount;
	}
	
	
	
	
}
