package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardCustomerDTO;
import com.busking.board.model.BoardCustomerMapper;
import com.busking.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardCustomerServiceImpl implements BoardCustomerService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	//글 등록
	@Override
	public void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("글등록테스트");
		
		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("content");
		
		BoardCustomerDTO dto = new BoardCustomerDTO();
		
		dto.setNoticeTitle("사과바나나");
		dto.setNoticeTitle(noticeTitle);
		dto.setNoticeContent(noticeContent);
		
		//Mapper 실행시 커밋이 반영된다
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper board = sql.getMapper(BoardCustomerMapper.class);
		int result = board.regist(dto);
		sql.close();
		
		System.out.println("성공실패여부  "+ result );
		
		//목록화면을 리다이랙트로 옮긴다
		response.encodeRedirectURL("list.customerBoard");
	}

	
}
