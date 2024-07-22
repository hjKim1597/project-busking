package com.busking.board.model;

import java.util.ArrayList;

import com.busking.util.paging.PageVO;

public interface BoardTeamMapper {
	
	// 글 목록 조회
	public ArrayList<BoardTeamDTO> getList(PageVO pageVO);
	
	// 글 개수 조회
	public int getTotal();
	
	// 글 작성
	public void write(BoardTeamDTO dto);
	
	// 글 조회
	public BoardTeamDTO getContent(String teamNum);
	
	// 글 조회수 증가
	public void increaseHit(String teamNum);
	
	// 글 삭제
	public int delete(String teamNum);
}
