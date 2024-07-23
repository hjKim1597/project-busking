package com.busking.board.service;

import java.io.IOException;
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

public class BoardServiceFree implements BoardService {
	
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
		String freeTitle = request.getParameter("title");
		String freeContent = request.getParameter("content");
		
		// DTO
		BoardFreeDTO dto = new BoardFreeDTO();
		dto.setFreeWriter("홍길동");
		dto.setFreeTitle(freeTitle);
		dto.setFreeContent(freeContent);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFreeMapper mapper = sql.getMapper(BoardFreeMapper.class);
		
		mapper.write(dto);
		
		// response
		response.sendRedirect("board_free_list.board");
	}
	
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
