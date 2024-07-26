//MainMapper는 마이바티스라는 도구를 사용할 때 데이터베이스와 자바 코드 사이의 다리역할
/*
  1. sql 쿼리와 자바 객체 연결: 데이터베이스에서 데이터를 가져오거나 저장하기 위해 필요한 sql 쿼리를 정의하는 계약서
  2. 데이터베이스 작업처리: 메인매퍼는 어떤 sql 쿼리를 실행할 지 정하고, 데이터베이스에서 결과를 자바 객체로  변환하는 방법을 알려줌
 */

package com.busking.main.model;

import java.util.ArrayList;

import com.busking.board.model.BoardCustomerDTO;
import com.busking.board.model.BoardNewsDTO;
import com.busking.customercenter.model.FAQDTO;

public interface MainMapper {

	// 글 목록 조회
	
	// 공지사항DTO
	public ArrayList<BoardCustomerDTO> getCustomerList();

	// 소식게시판DTO
	public ArrayList<BoardNewsDTO> getNewsList(); 
	
	// FAQ DTO
	public ArrayList<FAQDTO> getFAQList();

}
