package com.busking.board.controller;

import java.io.IOException;

import com.busking.board.service.BoardService;
import com.busking.board.service.BoardServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.board")
public class BoardController extends HttpServlet {
	
	public BoardController() {
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		
		System.out.println(command);
		// BoardService 선언
		BoardService service;
		
		if(command.equals("/board/board_free_list.board")) {
//			service = new BoardServiceImpl();
			response.sendRedirect("board_free_list.jsp");
			
		} else if(command.equals("/board/board_news_list.board")) {
			response.sendRedirect("board_news_list.jsp");
			
		} else if(command.equals("/board/board_team_list.board")) {
			response.sendRedirect("board_team_list.jsp");
			
		} else if(command.equals("/board/board_ask_list.board")) {
			response.sendRedirect("board_ask_list.jsp");
			
		}
	}
}
