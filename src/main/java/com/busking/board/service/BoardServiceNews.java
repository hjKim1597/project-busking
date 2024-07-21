package com.busking.board.service;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardNewsDTO;
import com.busking.board.model.BoardNewsMapper;

import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardServiceNews implements BoardService {
	
	SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String page = (String)request.getAttribute("page");
		int pageNum = Integer.parseInt(page);
		// DTO
		ArrayList<BoardNewsDTO> list = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		int total = mapper.getTotal();
		PageVO pageVO = new PageVO(pageNum, total);
		list = mapper.getList(pageVO);
		sql.close();
		
		// response
		request.setAttribute("newsList", list);
		request.setAttribute("pageVO", pageVO);
		request.getRequestDispatcher("board_news_list.jsp").forward(request, response);
	}
	
	@Override
	public void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String newsTitle = request.getParameter("title");
		String newsContent = request.getParameter("content");
		// DTO
		BoardNewsDTO dto = new BoardNewsDTO();
		dto.setNewsWriter("홍길동");
		dto.setNewsTitle(newsTitle);
		dto.setNewsContent(newsContent);
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		
		mapper.write(dto);
		// response
		response.sendRedirect("board_news_list.board");
	}
	
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String newsNum = request.getParameter("newsNum");
		
		// DTO
		BoardNewsDTO dto = new BoardNewsDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		
		mapper.increaseHit(newsNum);
		dto = mapper.getContent(newsNum);
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_news_content.jsp").forward(request, response);
		
	}

}
