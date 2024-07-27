package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardNewsDTO;
import com.busking.board.model.BoardNewsMapper;
import com.busking.board.model.BoardNewsDTO;
import com.busking.board.model.BoardNewsMapper;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class BoardNewsServiceImpl implements BoardNewsService {
	
	SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String page = request.getParameter("page");
		if(page == null) page = "1";
		int pageNum = Integer.parseInt(page);
		
		String type = request.getParameter("type");
		String target = request.getParameter("target");
		
		// DTO
		ArrayList<BoardNewsDTO> list = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		int total = mapper.getTotal();
		PageVO pageVO = new PageVO(pageNum, total);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("target", target);
		map.put("page", pageVO);
		
		list = mapper.getList(map);
		sql.close();
		
		// response
		if(list.size() == 0 && type != null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('검색 결과가 없습니다.');");
			out.println("location.href='board_list.boardNews';");
			out.println("</script>");
			return;
		} else if(type == null){
			request.setAttribute("newsList", list);
			request.setAttribute("pageVO", pageVO);
			request.getRequestDispatcher("board_news_list.jsp").forward(request, response);
			return;
		} else {
			request.setAttribute("newsList", list);
			request.setAttribute("pageVO", pageVO);
			request.getRequestDispatcher("board_news_list.jsp?type=" + type + "&target=" + target).forward(request, response);
			return;
		}

	}
	
	@Override
	public void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		BoardNewsDTO dto = new BoardNewsDTO();
		dto.setNewsWriter(writer);
		dto.setNewsTitle(title);
		dto.setNewsContent(content);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		
		mapper.write(dto);
		sql.close();
		
		// response
		response.sendRedirect("board_list.boardNews");
	}
	
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		HttpSession session = request.getSession();
		String userId = session.getAttribute("userId") != null ? (String)session.getAttribute("userId") : "";
		
		// DTO
		BoardNewsDTO dto = new BoardNewsDTO();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("boardNum",	bno);
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		
		mapper.increaseHit(bno);
		dto = mapper.getContent(bno);
		dto.setNewsNum(bno);
		String like = mapper.checkLike(map) == 1 ? "T" : "F";
		sql.close();
		
		// response
		request.setAttribute("dto", dto);
		request.setAttribute("like", like);
		request.getRequestDispatcher("board_news_content.jsp").forward(request, response);
		
	}

	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
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
		out.println("location.href='board_list.boardNews';");
		out.println("</script>");
	}
	
	@Override
	public void getBefore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		BoardNewsDTO dto = new BoardNewsDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		dto = mapper.getContent(bno);
		dto.setNewsNum(bno);
		sql.close();
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_news_edit.jsp").forward(request, response);
		
	}
	
	@Override
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		// DTO
		BoardNewsDTO dto = new BoardNewsDTO();
		dto.setNewsNum(bno);
		dto.setNewsTitle(title);
		dto.setNewsContent(content);
		
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
		out.println("location.href='board_content.boardNews?bno=" + bno + "';");
		out.println("</script>");
		
	}
	
	@Override
	public void like(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// request
		String bno = request.getParameter("bno");
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		// DTO
		Map<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("boardNum",	bno);
		
		Map<String, String> mapLike = new HashMap<String, String>();
		mapLike.put("boardNum", bno);
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardNewsMapper mapper = sql.getMapper(BoardNewsMapper.class);
		String like = mapper.checkLike(map) == 1 ? "F" : "T";
		if(like.equals("T")) {
			mapper.insertLike(map);
		} else {
			mapper.deleteLike(map);
		}
		String likeCount = String.valueOf(mapper.getTotalLike(bno));
		mapLike.put("likeCount", likeCount);
		mapper.updateLikeCount(mapLike);
		sql.close();
		
		// response
		request.setAttribute("like", like);
		request.getRequestDispatcher("board_content.boardNews?bno=" + bno).forward(request, response);
		
	}

}
