package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.json.JSONArray;
import org.json.JSONObject;

import com.busking.board.model.BoardAskDTO;
import com.busking.board.model.BoardAskMapper;
import com.busking.board.model.BoardCommentMapper;
import com.busking.board.model.BoardFreeDTO;
import com.busking.board.model.BoardFreeMapper;
import com.busking.board.model.BoardNewsDTO;
import com.busking.board.model.BoardNewsMapper;
import com.busking.board.model.BoardTeamDTO;
import com.busking.board.model.BoardTeamMapper;
import com.busking.board.model.CommentAskDTO;
import com.busking.board.model.CommentFreeDTO;
import com.busking.board.model.CommentNewsDTO;
import com.busking.board.model.CommentTeamDTO;
import com.busking.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class BoardCommentServiceImpl implements BoardCommentService {
	
	SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void getCommentFreeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		ArrayList<CommentFreeDTO> commentList = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		commentList = mapper.getCommentFreeList(bno);
		sql.close();
		
		// response
		request.setAttribute("commentList", commentList);
		request.setAttribute("bno", bno);
		request.getRequestDispatcher("board_free_comment.jsp").forward(request, response);
	}
	
	public void getCommentNewsList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		ArrayList<CommentNewsDTO> commentList = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		commentList = mapper.getCommentNewsList(bno);
		sql.close();
		
		// response
		request.setAttribute("commentList", commentList);
		request.setAttribute("bno", bno);
		request.getRequestDispatcher("board_news_comment.jsp").forward(request, response);
	}
	
	public void getCommentTeamList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		ArrayList<CommentTeamDTO> commentList = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		commentList = mapper.getCommentTeamList(bno);
		sql.close();
		
		// response
		request.setAttribute("commentList", commentList);
		request.setAttribute("bno", bno);
		request.getRequestDispatcher("board_team_comment.jsp").forward(request, response);
	}
	
	public void getCommentAskList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		
		// DTO
		ArrayList<CommentAskDTO> commentList = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		commentList = mapper.getCommentAskList(bno);
		sql.close();
		
		// response
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
		JSONArray jsonArray = new JSONArray();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yy.MM.dd");
		
        for (CommentAskDTO dto : commentList) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("writer", dto.getComAskWriter());
            jsonObject.put("regdate", dateFormat.format(dto.getComAskRegdate()));
            jsonObject.put("content", dto.getComAskContent());
            jsonArray.put(jsonObject);
        }

        PrintWriter out = response.getWriter();
        out.println(jsonArray.toString());
	}
	
	
	@Override
	public void writeCommentFree(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		CommentFreeDTO dto = new CommentFreeDTO();
		dto.setComFreeBno(bno);
		dto.setComFreeContent(content);
		dto.setComFreeWriter(writer);
		
		BoardFreeDTO dtoFree = new BoardFreeDTO();
		dtoFree.setFreeNum(bno);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		BoardFreeMapper mapperFree = sql.getMapper(BoardFreeMapper.class);
		
		mapper.writeCommentFree(dto);
		int total = mapper.getCommentFreeCount(bno);
		dtoFree.setFreeCmtCount(total);
		mapperFree.updateCmtCount(dtoFree);
		sql.close();
		
		// response
		request.setAttribute("bno", bno);
		request.getRequestDispatcher("board_comment_free_list.comment").forward(request, response);
		
	}
	
	@Override
	public void writeCommentNews(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// request
		String bno = request.getParameter("bno");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		CommentNewsDTO dto = new CommentNewsDTO();
		dto.setComNewsBno(bno);
		dto.setComNewsContent(content);
		dto.setComNewsWriter(writer);
		
		BoardNewsDTO dtoNews = new BoardNewsDTO();
		dtoNews.setNewsNum(bno);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		BoardNewsMapper mapperNews = sql.getMapper(BoardNewsMapper.class);
		
		mapper.writeCommentNews(dto);
		int total = mapper.getCommentNewsCount(bno);
		dtoNews.setNewsCmtCount(total);
		mapperNews.updateCmtCount(dtoNews);
		sql.close();
		
		// response
		request.setAttribute("bno", bno);
		request.getRequestDispatcher("board_comment_news_list.comment").forward(request, response);
		
	}
	
	
	@Override
	public void writeCommentTeam(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		CommentTeamDTO dto = new CommentTeamDTO();
		dto.setComTeamBno(bno);
		dto.setComTeamContent(content);
		dto.setComTeamWriter(writer);
		
		BoardTeamDTO dtoTeam = new BoardTeamDTO();
		dtoTeam.setTeamNum(bno);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		BoardTeamMapper mapperTeam = sql.getMapper(BoardTeamMapper.class);
		
		mapper.writeCommentTeam(dto);
		int total = mapper.getCommentTeamCount(bno);
		dtoTeam.setTeamCmtCount(total);
		mapperTeam.updateCmtCount(dtoTeam);
		sql.close();
		
		// response
		request.setAttribute("bno", bno);
		request.getRequestDispatcher("board_comment_team_list.comment").forward(request, response);
		
	}
	
	@Override
	public void writeCommentAsk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		CommentAskDTO dto = new CommentAskDTO();
		dto.setComAskBno(bno);
		dto.setComAskContent(content);
		dto.setComAskWriter(writer);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);		
		mapper.writeCommentAsk(dto);
		sql.close();
		
		// response
		response.sendRedirect("board_list.boardAsk");
		
	}
	
	@Override
	public void writeReplyFree(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		String reply = request.getParameter("reply");
		String content = request.getParameter("content");
		
		System.out.println(reply + ", " + bno);
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		CommentFreeDTO dto = new CommentFreeDTO();
		dto.setComFreeBno(bno);
		dto.setComFreeContent(content);
		dto.setComFreeWriter(writer);
		dto.setComFreeReply(reply);
		
		BoardFreeDTO dtoFree = new BoardFreeDTO();
		dtoFree.setFreeNum(bno);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		BoardFreeMapper mapperFree = sql.getMapper(BoardFreeMapper.class);
		
		mapper.writeReplyFree(dto);
		int total = mapper.getCommentFreeCount(bno);
		dtoFree.setFreeCmtCount(total);
		mapperFree.updateCmtCount(dtoFree);
		sql.close();
		
		// response
		request.setAttribute("bno", bno);
		request.getRequestDispatcher("board_comment_free_list.comment").forward(request, response);
		
	}
	
	@Override
	public void writeReplyNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		String reply = request.getParameter("reply");
		String content = request.getParameter("content");
		
		System.out.println(reply + ", " + bno);
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		CommentNewsDTO dto = new CommentNewsDTO();
		dto.setComNewsBno(bno);
		dto.setComNewsContent(content);
		dto.setComNewsWriter(writer);
		dto.setComNewsReply(reply);
		
		BoardNewsDTO dtoNews = new BoardNewsDTO();
		dtoNews.setNewsNum(bno);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		BoardNewsMapper mapperNews = sql.getMapper(BoardNewsMapper.class);
		
		mapper.writeReplyNews(dto);
		int total = mapper.getCommentNewsCount(bno);
		dtoNews.setNewsCmtCount(total);
		mapperNews.updateCmtCount(dtoNews);
		sql.close();
		
		// response
		request.setAttribute("bno", bno);
		request.getRequestDispatcher("board_comment_news_list.comment").forward(request, response);
		
	}
	
	@Override
	public void writeReplyTeam(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String bno = request.getParameter("bno");
		String reply = request.getParameter("reply");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		String writer = (String)session.getAttribute("userId");
		
		// DTO
		CommentTeamDTO dto = new CommentTeamDTO();
		dto.setComTeamBno(bno);
		dto.setComTeamContent(content);
		dto.setComTeamWriter(writer);
		dto.setComTeamReply(reply);
		
		BoardTeamDTO dtoTeam = new BoardTeamDTO();
		dtoTeam.setTeamNum(bno);
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCommentMapper mapper = sql.getMapper(BoardCommentMapper.class);
		BoardTeamMapper mapperTeam = sql.getMapper(BoardTeamMapper.class);
		
		mapper.writeReplyTeam(dto);
		int total = mapper.getCommentTeamCount(bno);
		dtoTeam.setTeamCmtCount(total);
		mapperTeam.updateCmtCount(dtoTeam);
		sql.close();
		
		// response
		request.setAttribute("bno", bno);
		request.getRequestDispatcher("board_comment_team_list.comment").forward(request, response);
		
	}
	
	
}
