package com.busking.board.service;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardCommentMapper;
import com.busking.board.model.CommentFreeDTO;
import com.busking.board.model.CommentNewsDTO;
import com.busking.board.model.CommentTeamDTO;
import com.busking.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardCommentServiceImpl implements BoardCommentService {
	
	SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void getCommentFreeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String comFreeBno = request.getParameter("bno");
		
		// DTO
		ArrayList<CommentFreeDTO> commentList = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		commentList = mapper.getCommentFreeList(comFreeBno);
		sql.close();
		
		// response
		request.setAttribute("commentList", commentList);
		request.getRequestDispatcher("board_comment.jsp").forward(request, response);
	}
	
	public void getCommentNewsList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String comNewsBno = request.getParameter("bno");
		
		// DTO
		ArrayList<CommentNewsDTO> commentList = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		commentList = mapper.getCommentNewsList(comNewsBno);
		sql.close();
		
		// response
		request.setAttribute("commentList", commentList);
		request.getRequestDispatcher("board_comment.jsp").forward(request, response);
	}
	
	public void getCommentTeamList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String comTeamBno = request.getParameter("bno");
		
		// DTO
		ArrayList<CommentTeamDTO> commentList = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		commentList = mapper.getCommentTeamList(comTeamBno);
		sql.close();
		
		// response
		request.setAttribute("commentList", commentList);
		request.getRequestDispatcher("board_comment.jsp").forward(request, response);
	}
	
	@Override
	public void writeCommentFree(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// request
		String comTeamBno = request.getParameter("bno");
		
		// DTO
		ArrayList<CommentTeamDTO> commentList = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		commentList = mapper.getCommentTeamList(comTeamBno);
		sql.close();
		
		// response
		request.setAttribute("commentList", commentList);
		request.getRequestDispatcher("board_comment.jsp").forward(request, response);
		
	}
	
	@Override
	public void writeCommentNews(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void writeCommentTeam(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	
	
}
