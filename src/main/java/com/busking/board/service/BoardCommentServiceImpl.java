package com.busking.board.service;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardCommentMapper;
import com.busking.board.model.BoardFreeDTO;
import com.busking.board.model.BoardFreeMapper;
import com.busking.board.model.BoardNewsDTO;
import com.busking.board.model.BoardNewsMapper;
import com.busking.board.model.BoardTeamDTO;
import com.busking.board.model.BoardTeamMapper;
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
		request.setAttribute("bno", comFreeBno);
		request.getRequestDispatcher("board_free_comment.jsp").forward(request, response);
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
		request.setAttribute("bno", comNewsBno);
		request.getRequestDispatcher("board_news_comment.jsp").forward(request, response);
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
		request.setAttribute("bno", comTeamBno);
		request.getRequestDispatcher("board_team_comment.jsp").forward(request, response);
	}
	
	@Override
	public void writeCommentFree(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// request
		String comFreeBno = request.getParameter("bno");
		String comFreeContent = request.getParameter("content");
		String comFreeWriter = "김길동";
		
		// DTO
		CommentFreeDTO dto = new CommentFreeDTO();
		dto.setComFreeBno(comFreeBno);
		dto.setComFreeContent(comFreeContent);
		dto.setComFreeWriter(comFreeWriter);
		
		BoardFreeDTO dtoFree = new BoardFreeDTO();
		dtoFree.setFreeNum(comFreeBno);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		BoardFreeMapper mapperFree = sql.getMapper(BoardFreeMapper.class);
		
		mapper.writeCommentFree(dto);
		int total = mapper.getCommentFreeCount(comFreeBno);
		dtoFree.setFreeCmtCount(total);
		mapperFree.updateCmtCount(dtoFree);
		sql.close();
		
		// response
		request.setAttribute("bno", comFreeBno);
		request.getRequestDispatcher("board_comment_free_list.comment").forward(request, response);
		
	}
	
	@Override
	public void writeCommentNews(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// request
		String comNewsBno = request.getParameter("bno");
		String comNewsContent = request.getParameter("content");
		String comNewsWriter = "김길동";
		
		// DTO
		CommentNewsDTO dto = new CommentNewsDTO();
		dto.setComNewsBno(comNewsBno);
		dto.setComNewsContent(comNewsContent);
		dto.setComNewsWriter(comNewsWriter);
		
		BoardNewsDTO dtoNews = new BoardNewsDTO();
		dtoNews.setNewsNum(comNewsBno);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		BoardNewsMapper mapperNews = sql.getMapper(BoardNewsMapper.class);
		
		mapper.writeCommentNews(dto);
		int total = mapper.getCommentNewsCount(comNewsBno);
		dtoNews.setNewsCmtCount(total);
		mapperNews.updateCmtCount(dtoNews);
		sql.close();
		
		// response
		request.setAttribute("bno", comNewsBno);
		request.getRequestDispatcher("board_comment_news_list.comment").forward(request, response);
		
	}
	
	@Override
	public void writeCommentTeam(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// request
		String comTeamBno = request.getParameter("bno");
		String comTeamContent = request.getParameter("content");
		String comTeamWriter = "김길동";
		
		// DTO
		CommentTeamDTO dto = new CommentTeamDTO();
		dto.setComTeamBno(comTeamBno);
		dto.setComTeamContent(comTeamContent);
		dto.setComTeamWriter(comTeamWriter);
		
		BoardTeamDTO dtoTeam = new BoardTeamDTO();
		dtoTeam.setTeamNum(comTeamBno);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		BoardTeamMapper mapperTeam = sql.getMapper(BoardTeamMapper.class);
		
		mapper.writeCommentTeam(dto);
		int total = mapper.getCommentTeamCount(comTeamBno);
		dtoTeam.setTeamCmtCount(total);
		mapperTeam.updateCmtCount(dtoTeam);
		sql.close();
		
		// response
		request.setAttribute("bno", comTeamBno);
		request.getRequestDispatcher("board_comment_team_list.comment").forward(request, response);
		
	}
	
	
}
