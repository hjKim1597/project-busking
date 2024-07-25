package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardFreeDTO;
import com.busking.board.model.BoardFreeMapper;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class BoardFreeServiceImpl implements BoardFreeService {
	
	SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String page = (String)request.getAttribute("page");
		int pageNum = Integer.parseInt(page);
		
		// DTO
		ArrayList<BoardFreeDTO> list = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFreeMapper mapper = sql.getMapper(BoardFreeMapper.class);
		int total = mapper.getTotal();
		PageVO pageVO = new PageVO(pageNum, total);
		list = mapper.getList(pageVO);
		sql.close();
		
		// response
		request.setAttribute("freeList", list);
		request.setAttribute("pageVO", pageVO);
		request.getRequestDispatcher("board_free_list.jsp").forward(request, response);
	}
	
	@Override
	public void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		BoardFreeDTO dto = new BoardFreeDTO();
		dto.setFreeWriter(writer);
		dto.setFreeTitle(title);
		dto.setFreeContent(content);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFreeMapper mapper = sql.getMapper(BoardFreeMapper.class);
		
		mapper.write(dto);
		sql.close();
		
		// response
		response.sendRedirect("board_list.boardFree");
	}
	
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		BoardFreeDTO dto = new BoardFreeDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFreeMapper mapper = sql.getMapper(BoardFreeMapper.class);
		
		mapper.increaseHit(bno);
		dto = mapper.getContent(bno);
		dto.setFreeNum(bno);
		sql.close();
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_free_content.jsp").forward(request, response);
		
	}

	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFreeMapper mapper = sql.getMapper(BoardFreeMapper.class);
		int result = mapper.delete(bno);
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
		out.println("location.href='board_list.boardFree';");
		out.println("</script>");
	}
	
	@Override
	public void getBefore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		BoardFreeDTO dto = new BoardFreeDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFreeMapper mapper = sql.getMapper(BoardFreeMapper.class);
		dto = mapper.getContent(bno);
		dto.setFreeNum(bno);
		sql.close();
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_free_edit.jsp").forward(request, response);
		
	}
	
	@Override
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		// DTO
		BoardFreeDTO dto = new BoardFreeDTO();
		dto.setFreeNum(bno);
		dto.setFreeTitle(title);
		dto.setFreeContent(content);
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFreeMapper mapper = sql.getMapper(BoardFreeMapper.class);
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
		out.println("location.href='board_content.boardFree?bno=" + bno + "';");
		out.println("</script>");
		
	}

}
