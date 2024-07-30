package com.busking.board.model;

import java.util.ArrayList;
import java.util.Map;

public interface BoardTeamMapper {
	
	// 글 목록 조회
	public ArrayList<BoardTeamDTO> getList(Map<String, Object> map);
	
	// 글 개수 조회
	public int getTotal(Map<String, Object> map);
	
	// 글 작성
	public void write(BoardTeamDTO dto);
	
	// 글 조회
	public BoardTeamDTO getContent(String teamNum);
	
	// 글 조회수 증가
	public void increaseHit(String teamNum);
	
	// 글 삭제
	public int delete(String teamNum);
	
	// 글 수정
	public int edit(BoardTeamDTO dto);
	
	// 글 댓글 개수 수정
	public void updateCmtCount(BoardTeamDTO dto);
	
	// 글 좋아요 추가
	public void insertLike(Map<String, String> map);
	
	// 글 좋아요 삭제
	public void deleteLike(Map<String, String> map);
	
	// 글 좋아요 개수 수정
	public void updateLikeCount(Map<String, String> map);
	
	// 글 좋아요 개수 조회
	public int getTotalLike(String boardNum);
	
	// 글 좋아요 확인
	public int checkLike(Map<String, String> map);
}
