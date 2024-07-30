package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardTeamDTO;
import com.busking.board.model.BoardTeamMapper;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class BoardTeamServiceImpl implements BoardTeamService {
	
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
		ArrayList<BoardTeamDTO> list = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("target", target);
		int total = mapper.getTotal(map);
		PageVO pageVO = new PageVO(pageNum, total);
		map.put("page", pageVO);
		
		list = mapper.getList(map);
		sql.close();
		
		// response
		if(list.size() == 0 && type != null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('검색 결과가 없습니다.');");
			out.println("location.href='board_list.boardTeam';");
			out.println("</script>");
			return;
		} else if(type == null){
			request.setAttribute("teamList", list);
			request.setAttribute("pageVO", pageVO);
			request.getRequestDispatcher("board_team_list.jsp").forward(request, response);
			return;
		} else {
			request.setAttribute("teamList", list);
			request.setAttribute("pageVO", pageVO);
			request.setAttribute("type", type);
			request.setAttribute("target", target);
			request.getRequestDispatcher("board_team_list.jsp").forward(request, response);
			return;
		}
	}
	
	@Override
	public void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String teamCount = request.getParameter("teamCount");
		String teamResult = request.getParameter("teamResult");
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		BoardTeamDTO dto = new BoardTeamDTO();
		dto.setTeamWriter(writer);
		dto.setTeamTitle(title);
		dto.setTeamContent(content);
		dto.setTeamCount(Integer.parseInt(teamCount));
		dto.setTeamResult(teamResult);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		
		mapper.write(dto);
		sql.close();
		
		// response
		response.sendRedirect("board_list.boardTeam");
	}
	
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		BoardTeamDTO dto = new BoardTeamDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		
		mapper.increaseHit(bno);
		dto = mapper.getContent(bno);
		dto.setTeamNum(bno);
		sql.close();
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_team_content.jsp").forward(request, response);
		
	}

	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		// DTO
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
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
		out.println("location.href='board_list.boardTeam';");
		out.println("</script>");
	}
	
	@Override
	public void getBefore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		BoardTeamDTO dto = new BoardTeamDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		dto = mapper.getContent(bno);
		dto.setTeamNum(bno);
		sql.close();
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_team_edit.jsp").forward(request, response);

	}
	
	@Override
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String teamCount = request.getParameter("teamCount");
		String teamResult = request.getParameter("teamResult");

		// DTO
		BoardTeamDTO dto = new BoardTeamDTO();
		dto.setTeamNum(bno);
		dto.setTeamTitle(title);
		dto.setTeamContent(content);
		dto.setTeamCount(Integer.parseInt(teamCount));
		dto.setTeamResult(teamResult);

		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
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
		out.println("location.href='board_content.boardTeam?bno=" + bno + "';");
		out.println("</script>");
	}
	
	@Override
	public void like(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
}
