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

		// request
//		String page = (String) request.getAttribute("page");
		int pageNum = 1;
		
		// DTO
		ArrayList<BoardCustomerDTO> list = new ArrayList<>();

		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper mapper = sql.getMapper(BoardCustomerMapper.class);
		int total = 1;
		PageVO pageVO = new PageVO(pageNum, total);
		list = mapper.getList(pageVO);
		sql.close();

		// response
		request.setAttribute("freeList", list);
		request.setAttribute("pageVO", pageVO);
		request.getRequestDispatcher("customer_center_index.jsp").forward(request, response);
	}

	// 글 등록
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 확인하기
		System.out.println("글 작성 OK");

		// request
		// String managerId = request.getParameter("writer");
		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("content");

		// DTO
		BoardCustomerDTO dto = new BoardCustomerDTO();
		dto.setManagerId("홍길동");
		dto.setNoticeTitle(noticeTitle);
		dto.setNoticeContent(noticeContent);

		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper mapper = sql.getMapper(BoardCustomerMapper.class);
		// Mapper 실행시 커밋이 반영된다

		// int result = board.regist(dto);

		mapper.regist(dto);

		// response
		response.sendRedirect("customer_center_index.customer_board");

	}

	// 글 내용
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String freeNum = request.getParameter("freeNum");
		
		// DTO
		BoardFreeDTO dto = new BoardFreeDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFreeMapper mapper = sql.getMapper(BoardFreeMapper.class);
		
		mapper.increaseHit(freeNum);
		dto = mapper.getContent(freeNum);
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_free_content.jsp").forward(request, response);
		
	}

}
