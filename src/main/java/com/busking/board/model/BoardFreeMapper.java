package com.busking.board.model;

import java.util.ArrayList;

import com.busking.util.paging.PageVO;

public interface BoardFreeMapper {
	
	// 글 목록 조회
	public ArrayList<BoardFreeDTO> getFreeList(PageVO pageVO);
	
	// 글 개수 조회
	public int getFreeTotal();
	
	// 글 작성
	public void writeFree(BoardFreeDTO dto);
	
	// 글 조회
	public BoardFreeDTO getFreeContent(String freeNum);
	
	// 글 조회수 증가
	public void increaseHit(String freeNum);
}
