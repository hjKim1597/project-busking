package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
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

public class BoardNewsServiceImpl implements BoardNewsService {
	
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
		sql.close();
		// response
		response.sendRedirect("board_news_list.boardNews");
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
		dto.setNewsNum(newsNum);
		sql.close();
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_news_content.jsp").forward(request, response);
		
	}

	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String newsNum = request.getParameter("newsNum");
		// DTO
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		int result = mapper.delete(newsNum);
		sql.close();
		// response
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		if(result != 0) {
			out.println("alert('글이 삭제되었습니다.');");
		} else {
			out.println("alert('글이 삭제되지 않았습니다.');");
		}
		out.println("location.href='board_news_list.boardNews';");
		out.println("</script>");
	}
	
	@Override
	public void getBefore(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// request
		String newsNum = request.getParameter("newsNum");
		
		// DTO
		BoardNewsDTO dto = new BoardNewsDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		dto = mapper.getContent(newsNum);
		dto.setNewsNum(newsNum);
		sql.close();
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_news_edit.jsp").forward(request, response);
		
	}
	
	@Override
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request
		String newsNum = request.getParameter("newsNum");
		String newsTitle = request.getParameter("title");
		String newsContent = request.getParameter("content");
		
		// DTO
		BoardNewsDTO dto = new BoardNewsDTO();
		dto.setNewsNum(newsNum);
		dto.setNewsTitle(newsTitle);
		dto.setNewsContent(newsContent);
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		int result = mapper.edit(dto);
		sql.close();
		
		// response
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		if(result != 0) {
			out.println("alert('글이 수정되었습니다.');");
		} else {
			out.println("alert('글이 수정되지 않았습니다.');");
		}
		out.println("location.href='board_news_content.boardNews?newsNum=" + newsNum + "';");
		out.println("</script>");
		
	}

}
