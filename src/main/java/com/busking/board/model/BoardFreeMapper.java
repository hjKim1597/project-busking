package com.busking.board.model;

import java.util.ArrayList;

public interface BoardFreeMapper {
	
	// 글 목록 조회
	public ArrayList<BoardFreeDTO> getFreeList();
	
	// 글 작성
	public void writeFree(BoardFreeDTO dto);
	
	// 글 조회
	public BoardFreeDTO getFreeContent(String freeNum);
}
