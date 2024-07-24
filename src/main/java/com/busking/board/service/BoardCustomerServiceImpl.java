package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardCustomerDTO;
import com.busking.board.model.BoardCustomerMapper;
import com.busking.board.model.BoardFreeDTO;
import com.busking.board.model.BoardFreeMapper;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardCustomerServiceImpl implements BoardCustomerService {

	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	//리스트 가져오기
	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//글 목록
		
		// request
		
		// DTO

		// 호출하기
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);
		
		//화면에 리스트 내보내기
		ArrayList<BoardCustomerDTO> noticeList = boardMapper.getList();
		System.out.println("화면에 리스트 나타내기 " + noticeList);

		sql.close();

		// response
		request.setAttribute("noticeList", noticeList);
		request.getRequestDispatcher("customer_center_index.jsp").forward(request, response);
	}

	// 글 등록
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 확인
		System.out.println("글 작성 OK");

		// request
		String managerId = "관리자"; //관리자 아이디 고정
		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("content");

		System.out.println(noticeTitle);
		System.out.println(noticeContent);
		// DTO
		BoardCustomerDTO dto = new BoardCustomerDTO();
		dto.setManagerId(managerId);
		dto.setNoticeTitle(noticeTitle);
		dto.setNoticeContent(noticeContent);
		dto.setNoticeNum(1);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);
		// Mapper 실행시 커밋이 반영된다

		// int result = boardMapper.regist(dto);
		boardMapper.regist(dto);
		sql.close();

		// 목록화면 보내기
		response.sendRedirect("/customer_center/customer_center_index.customer");
		
	}

	// 글 내용
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String noticeNum = request.getParameter("noticeNum");
		
		// DTO
		BoardCustomerDTO dto = new BoardCustomerDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);
		
		boardMapper.increaseHit(noticeNum);
		dto = boardMapper.getContent(noticeNum);
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("/customer_center/customer_center_index_content.jsp").forward(request, response);
		
	}

}
