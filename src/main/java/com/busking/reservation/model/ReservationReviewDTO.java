package com.busking.reservation.model;

import java.sql.Timestamp;

public class ReservationReviewDTO {

    private int locaCmtNum;
    private String locaContent;
    private Timestamp locaCmtRegdate; 
    private int locaScore;
    private String userId;
    private int locaId;
    private float avgScore; 
     
    public ReservationReviewDTO() {        
    }

    public ReservationReviewDTO(int locaCmtNum, String locaContent, Timestamp locaCmtRegdate, int locaScore,
            String userId, int locaId, float avgScore) {
        super();
        this.locaCmtNum = locaCmtNum;
        this.locaContent = locaContent;
        this.locaCmtRegdate = locaCmtRegdate;
        this.locaScore = locaScore;
        this.userId = userId;
        this.locaId = locaId;
        this.avgScore = avgScore;
    }

    public int getLocaCmtNum() {
        return locaCmtNum;
    }

    public void setLocaCmtNum(int locaCmtNum) {
        this.locaCmtNum = locaCmtNum;
    }

    public String getLocaContent() {
        return locaContent;
    }

    public void setLocaContent(String locaContent) {
        this.locaContent = locaContent;
    }

    public Timestamp getLocaCmtRegdate() { // 필드명 수정
        return locaCmtRegdate;
    }

    public void setLocaCmtRegdate(Timestamp locaCmtRegdate) { // 필드명 수정
        this.locaCmtRegdate = locaCmtRegdate;
    }

    public int getLocaScore() {
        return locaScore;
    }

    public void setLocaScore(int locaScore) {
        this.locaScore = locaScore;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getLocaId() {
        return locaId;
    }

    public void setLocaId(int locaId) {
        this.locaId = locaId;
    }

    public float getAvgScore() { // float로 변경
        return avgScore;
    }

    public void setAvgScore(float avgScore) { // float로 변경
        this.avgScore = avgScore;
    }    
}
