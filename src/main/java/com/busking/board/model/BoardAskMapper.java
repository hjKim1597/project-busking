package com.busking.board.model;

import java.util.ArrayList;
import java.util.Map;

public interface BoardAskMapper {
	
	// 글 목록 조회
	public ArrayList<BoardAskDTO> getList(Map<String, Object> map);
	
	// 글 개수 조회
	public int getTotal();
	
	// 글 작성
	public void write(BoardAskDTO dto);
	
	// 글 삭제
	public int delete(String askNum);
	
	// 글 수정
	public int edit(BoardAskDTO dto);

}
