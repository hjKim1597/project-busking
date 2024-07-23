package com.busking.board.model;

import java.util.ArrayList;

public interface CommentFreeMapper {
	
	// 댓글 목록 조회
	public ArrayList<CommentFreeDTO> getList(String freeNum);
	
	// 댓글 등록
	public void write(CommentFreeDTO dto);

}
