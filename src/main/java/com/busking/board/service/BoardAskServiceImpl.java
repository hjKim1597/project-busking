package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardAskDTO;
import com.busking.board.model.BoardAskMapper;
import com.busking.board.model.BoardFreeMapper;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardAskServiceImpl implements BoardAskService {

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
		ArrayList<BoardAskDTO> list = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardAskMapper mapper = sql.getMapper(BoardAskMapper.class);
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
			out.println("location.href='board_list.boardAsk';");
			out.println("</script>");
		} else {
			request.setAttribute("AskList", list);
			request.setAttribute("pageVO", pageVO);
			request.getRequestDispatcher("board_Ask_list.jsp").forward(request, response);
		}
		
	}
	
}
