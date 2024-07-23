package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardTeamDTO;
import com.busking.board.model.BoardTeamMapper;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardTeamServiceImpl implements BoardTeamService {
	
	SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String page = (String)request.getAttribute("page");
		int pageNum = Integer.parseInt(page);
		// DTO
		ArrayList<BoardTeamDTO> list = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		int total = mapper.getTotal();
		PageVO pageVO = new PageVO(pageNum, total);
		list = mapper.getList(pageVO);
		sql.close();
		
		// response
		request.setAttribute("teamList", list);
		request.setAttribute("pageVO", pageVO);
		request.getRequestDispatcher("board_team_list.jsp").forward(request, response);
	}
	
	@Override
	public void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String teamTitle = request.getParameter("title");
		String teamContent = request.getParameter("content");
		String teamCount = request.getParameter("teamCount");
		String teamResult = request.getParameter("teamResult");
		// DTO
		BoardTeamDTO dto = new BoardTeamDTO();
		dto.setTeamWriter("홍길동");
		dto.setTeamTitle(teamTitle);
		dto.setTeamContent(teamContent);
		dto.setTeamCount(Integer.parseInt(teamCount));
		dto.setTeamResult(teamResult);
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		
		mapper.write(dto);
		sql.close();
		// response
		response.sendRedirect("board_team_list.boardTeam");
	}
	
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String teamNum = request.getParameter("teamNum");
		
		// DTO
		BoardTeamDTO dto = new BoardTeamDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		
		mapper.increaseHit(teamNum);
		dto = mapper.getContent(teamNum);
		dto.setTeamNum(teamNum);
		sql.close();
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_team_content.jsp").forward(request, response);
		
	}

	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String teamNum = request.getParameter("teamNum");
		// DTO
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		int result = mapper.delete(teamNum);
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
		out.println("location.href='board_team_list.boardTeam';");
		out.println("</script>");
	}
	
	@Override
	public void getBefore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String teamNum = request.getParameter("teamNum");
		
		// DTO
		BoardTeamDTO dto = new BoardTeamDTO();
		
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		dto = mapper.getContent(teamNum);
		dto.setTeamNum(teamNum);
		
		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("board_team_edit.jsp").forward(request, response);

	}
	
	@Override
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String teamNum = request.getParameter("teamNum");
		String teamTitle = request.getParameter("title");
		String teamCount = request.getParameter("teamCount");
		String teamResult = request.getParameter("teamResult");
		String teamContent = request.getParameter("content");
		
		// DTO
		BoardTeamDTO dto = new BoardTeamDTO();
		dto.setTeamNum(teamNum);
		dto.setTeamTitle(teamTitle);
		dto.setTeamCount(Integer.parseInt(teamCount));
		dto.setTeamResult(teamResult);
		dto.setTeamContent(teamContent);
		
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
		out.println("location.href='board_team_content.boardTeam?teamNum=" + teamNum + "';");
		out.println("</script>");
	}
	
}
