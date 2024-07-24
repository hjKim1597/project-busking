package com.busking.board.model;

import java.util.ArrayList;

import com.busking.util.paging.PageVO;

public interface BoardFreeMapper {
	
	// 글 목록 조회
	public ArrayList<BoardFreeDTO> getList(PageVO pageVO);
	
	// 글 개수 조회
	public int getTotal();
	
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
}
