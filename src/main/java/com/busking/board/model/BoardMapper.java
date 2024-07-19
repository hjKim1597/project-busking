package com.busking.board.model;

import java.util.ArrayList;

public interface BoardMapper {
	
	// 글 목록 조회
	public ArrayList<BoardDTO> getList();
	
}
