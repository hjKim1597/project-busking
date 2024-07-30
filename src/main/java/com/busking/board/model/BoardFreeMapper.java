package com.busking.board.model;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface BoardFreeMapper {
	
	// 글 목록 조회
	public ArrayList<BoardFreeDTO> getList(Map<String, Object> map);
	
	// 글 개수 조회
	public int getTotal(Map<String, Object> map);
	
	// 글 작성
	public void write(BoardFreeDTO dto);
	
	// 글 조회
	public BoardFreeDTO getContent(String freeNum);
	
	// 글 조회수 증가
	public void increaseHit(String freeNum);
	
	// 글 삭제
	public int delete(String freeNum);
	
	// 글 수정
	public int edit(BoardFreeDTO dto);
	
	// 글 댓글 개수 수정
	public void updateCmtCount(BoardFreeDTO dto);
	
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
