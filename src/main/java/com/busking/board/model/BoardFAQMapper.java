package com.busking.board.model;

import java.util.ArrayList;

public interface BoardFAQMapper {
	
	// 글 목록 조회
		public ArrayList<FAQDTO> getList();

		// 글 작성
		public void regist(FAQDTO dto);

		// 글 조회
		public FAQDTO getContent(String faqNum);

		// 글 수정
		public int update(FAQDTO dto);

		// 39) 삭제 메서드 추가하기 > delete태그 xml에서 추가하기
		public int delete(int faqNum);

		// 글 조회수 증가
		public void increaseHit(String faqNum);

		public int getTotal();
}
