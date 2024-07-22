package com.busking.board.model;

import java.util.ArrayList;

import com.busking.util.paging.PageVO;

public interface BoardCustomerMapper {

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

	// --------------------
//	// 글 목록 조회
//	public ArrayList<BoardFreeDTO> getList(PageVO pageVO);
//
//	// 글 개수 조회
//	public int getTotal();
//
//	// 글 작성
//	public void write(BoardFreeDTO dto);
//
//	// 글 조회
//	public BoardFreeDTO getContent(String freeNum);
//
//	// 글 조회수 증가
//	public void increaseHit(String freeNum);
}
