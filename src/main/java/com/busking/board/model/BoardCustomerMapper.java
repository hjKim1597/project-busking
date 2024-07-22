package com.busking.board.model;

import java.util.ArrayList;

import com.busking.util.paging.PageVO;

public interface BoardCustomerMapper {

	// 마이바티스는 인터페이스를 호출시키면, 연결될 수 있는 mapper.xml파일이 실행된다
	// 5) test 코드
	public String now();

	// 9)여러행 글 목록 조회 만들기
	public ArrayList<BoardCustomerDTO> getList();

	// 12) 글 작성
	// 13) DTO에 writer, title, content
	public int regist(BoardCustomerDTO dto);

	// 20) 매개변수는 1개, 글 상세 내용 후 xml mapper로
	public BoardCustomerDTO getContent(String bno);

	// 34) 인터페이스에서 여기 > dto , 글 수정하는 기능 만들기
	public int update(BoardCustomerDTO dto);

	// 39) 삭제 메서드 추가하기 > delete태그 xml에서 추가하기
	public void delete(String bno);

	// 조회수 기능 만들기
	public void increaseHit(String bno);

	//--------------------
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
